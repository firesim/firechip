// See LICENSE for license details.
package hls_adder

import Chisel._
//import chisel3._
//import chisel3.util._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.config._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.util.InOrderArbiter
import freechips.rocketchip.system._


//import rocket._
//import cde.{Parameters, Field}
//import cde.Implicits._

//class HLSAddControl()(implicit p: Parameters) extends RoCC()(p) {
//class HLSAddControl()(implicit p: Parameters) extends LazyRoCC()(p) {
//class WithExampleTop extends Config((site, here, up) => {
//  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
//    Module(LazyModule(new ExampleTop()(p)).module)
//})

class HLSAddControl(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new HLSAddControlModule(this)
}


class HLSAddControlModule(outer: HLSAddControl) extends LazyRoCCModule(outer) {

  val cmd = Queue(io.cmd)

  val result = Reg(init=Bits(0, width=64))
  val respValid = Reg(init=Bool(false))
  val rdy = Reg(init=Bool(true))
  val busy = Reg(init=Bool(false))
  val bufferedCmd = Reg(new RoCCCommand)
  //val bufferedCmd = Reg(new RoCCCommand()(p), init=Wire( new RoCCCommand()(p)))
  //val bufferedCmd = Reg(init=Wire( new RoCCCommand()(p)))
  //val bufferedCmd = Reg(init=Wire( new RoCCCommand()(p)))
  val funct = bufferedCmd.inst.funct
  val rs1 = bufferedCmd.rs1
  val rs2 = bufferedCmd.rs2
  
  printf("rs1=%d\n", rs1)
  printf("rs2=%d\n", rs2)
  printf("result=%d\n", result)

  //printf(p"myrs1 = $rs1")
  val rdTag = bufferedCmd.inst.rd
  val doAdd = funct === UInt(0)

  val idle :: working :: Nil = Enum(UInt(),2)
  val state = Reg(init=idle)

  // Assign Outputs to Appropriate registers
  io.resp.valid := respValid && bufferedCmd.inst.xd 
  //If there is no rd in the command, do not write a response back
 
  //need to set rd to the value in the request. Otherwise bad things happen
  //in this case, processor stalls
  io.resp.bits.rd := rdTag
  io.resp.bits.data := result
  io.busy := busy
  cmd.ready := rdy
  
  //Note: rocket uses the busy flag to determine when the accelerator is finished
  //Not all accelerators return values (ones with cmd.bits.inst.xd = 1 do return)
  //If the accelerator returns a value, it needs to set the resp.val flag accordingly.

  //cmd.ready defines when the command to the accelerator was resolved

  //===== Begin Accelerator =====
  val accel = Module(new HLSAddBlackbox())
  accel.io.ap_clk := clock

  //Acclerator Registers (we buffer inputs to accelerator)
  val ap_start = Reg(init=Bool(false))

  //Assign Inputs to Accelerator
  accel.io.ap_start := ap_start
  accel.io.a := rs1 //ACCEL IO NAME CAN CHANGE (NAMED IN C)
  accel.io.b := rs2 //ACCEL IO NAME CAN CHANGE (NAMED IN C)

  //Accelerator Outputs
  val ap_return = accel.io.ap_return
  val ap_done = accel.io.ap_done
  val ap_idle = accel.io.ap_idle
  val ap_ready = accel.io.ap_ready

  //===== End Accelerator =====
  when(reset.toBool){
    bufferedCmd.inst.funct := 0.asUInt(7.W)
    bufferedCmd.inst.rs1 := 0.asUInt(5.W)
    bufferedCmd.inst.rs2 := 0.asUInt(5.W)
    bufferedCmd.inst.rd := 0.asUInt(5.W)
    bufferedCmd.inst.opcode := 0.asUInt(5.W)
    bufferedCmd.rs1 := 0.asUInt(64.W)
    bufferedCmd.rs2 := 0.asUInt(64.W)
  }

  //***** Begin Controller State Machine Logic *****
  switch(state){
    is (idle){
      //Waiting for command

      when(cmd.fire()){
        //We have a valid, unserviced command. This code takes ready low so
        //we should not accedently cause an infinite loop

        bufferedCmd := cmd.bits //Accelerator takes from bufferedCmd directly
        busy := Bool(true)
        rdy := Bool(false)
        ap_start := Bool(true)
        //Note: Based on timing diagram in Vivado HLS user guide (pg 157), read occurs
        //AFTER the 1st cycle.  There will be a 1 cycle delay before input read as
        //ap_start will be seen on next cycle.  Idealy, ap_start would be raised 1 cycle
        //earlier (ie. not using a register) or it would read the input immediatly
        //when ap_start is raised (I assume this is due to an internal state machine).
        //However, this would ruin the sequential nature of the state machine.  It is
        //possible to save a cycle by assigning ap_start as cmd.valid && state===idle 
        //&& !returned which would be asyncronous and probably trigger 1 cycle earlier.
        //There would be more stringent timing requirements in this case though as the
        //result would need to propogate before the next posEdge of the clk.
        
        //Set next state
        state := working
      }
      when(respValid && io.resp.ready){
        //The processor has read the response.  There is no more data for it
        //Drive resp.valid low to avoid stalling processor
        respValid := Bool(false)
      }
    }
    is (working){
      //Waiting for accelerator to finish

      //All of the conditionals below can occure simultaniously
      //and should be kept as seperart when statements
      when(ap_done){
        //The accelerator has completed operation (user guidepg 156) and has
        //has optionally generated a result (not not all accelerators will
        //generated a result.  This is technically not the same as ap_idle
        //which signals when the accelerator is no longer busy. It is actually
        //ap_ready actually determines when the accelerator is ready to accept 
        //more inputs.  This is important for accelerators that do not operate 
        //in a syncronous mode.  This is not true for the types of accelerators 
        //we are creating.

        result := ap_return
        respValid := Bool(true)
      }
      when(ap_ready){
        //The accelerator has read the inputs and is ready to accept new ones.
        //According to the timing diagram,
        //ap_start should be deasserted for the next posedge.
        ap_start := Bool(false)
      }
      when(ap_done && ap_ready){
        //If the operation was completed (result valid), and the accelerator is ready
        //the accerator is ready for the next operation and the controller is
        //returned to the idle state to wait for a new command.  The ready line
        //is pulled high to advertise that the accelerator is ready.
        
        //From the manual, it appears that ap_done is always asserted when the
        //accelerator is finished.  If this is true, using ap_done && ap_ready
        //should save one cycle over using ap_idle as the trigger.  This is because,
        //according to the timing diagram in the user manual (pg  

        rdy := Bool(true) // ready to accept new commands
        busy := Bool(false) // operation complete, no longer busy
        state := idle

        //Note: This code could possibly be placed in the ap_done action to save
        //one wasted cycle.  It is not clear from the user guide (pg 157), ap_idle
        //is asserted one cycle after ap_done.  If this arrangment has problems,
        //transitioning on ap_idle should work but will result in an unnessicary
        //extra cycle.
      }
      when(respValid && io.resp.ready){
        //The processor has read the response.  There is no more data for it
        //Drive resp.valid low to avoid stalling processor
        respValid := Bool(false)
      }
    }
  }

  // ***** End Controller State Machine Logic *****

  // *** Tie off these lines ***
  io.interrupt := Bool(false)
  // Set this true to trigger an interrupt on the processor (please refer to supervisor documentation)

  // MEMORY REQUEST INTERFACE
  // We will not be doing any memory ops in this accelerator
  io.mem.req.valid := Bool(false)
  io.mem.req.bits.addr := Bits(0)
  io.mem.req.bits.tag := Bits(0)
  io.mem.req.bits.cmd := M_XRD // perform a load (M_XWR for stores)
  io.mem.req.bits.typ := MT_D // D = 8 bytes, W = 4, H = 2, B = 1
  io.mem.req.bits.data := Bits(0) // we're not performing any stores...
  io.mem.invalidate_lr := Bool(false)

// io.autl.acquire.valid := Bool(false)
// io.autl.grant.ready := Bool(false)
// io.iptw.req.valid := Bool(false)
// io.dptw.req.valid := Bool(false)
// io.pptw.req.valid := Bool(false)
}
