
package hls_encode

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

class HLSencodeControl(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new HLSencodeControlModule(this)
}


class HLSencodeControlModule(outer: HLSencodeControl) extends LazyRoCCModule(outer) {


val result = Reg(init=Bits(0, width=64))
val respValid = Reg(init=Bool(false))
val rdy = Reg(init=Bool(true))
val busy = Reg(init=Bool(false))
val bufferedCmd = Reg(init=Wire( new RoCCCommand()(p)))

val cmd = Queue(io.cmd)
val funct = bufferedCmd.inst.funct
val rs1 = bufferedCmd.rs1
val rs2 = bufferedCmd.rs2
val rdTag = bufferedCmd.inst.rd
val doAdd = funct === UInt(0)

val idle :: working :: Nil = Enum(UInt(),2)
val state = Reg(init=idle)

//Initialize the buffer? 
when(reset.toBool){
  bufferedCmd.inst.funct := 0.asUInt(7.W)
  bufferedCmd.inst.rs1 := 0.asUInt(5.W)
  bufferedCmd.inst.rs2 := 0.asUInt(5.W)
  bufferedCmd.inst.rd := 0.asUInt(5.W)
  bufferedCmd.inst.opcode := 0.asUInt(5.W)
  bufferedCmd.rs1 := 0.asUInt(64.W)
  bufferedCmd.rs2 := 0.asUInt(64.W)
}

// Assign Outputs to Appropriate registers
io.resp.valid := respValid && bufferedCmd.inst.xd

//need to set rd to the value in the request. Otherwise bad things happen
//in this case, processor stalls
io.resp.bits.rd := rdTag
io.resp.bits.data := result
io.busy := busy
cmd.ready := rdy

//===== Begin Accelerator =====
val accel = Module(new encode())
accel.io.ap_rst := reset
accel.io.ap_clk := clock

//Acclerator Registers (we buffer inputs to accelerator)
val ap_start = Reg(init=Bool(false))

//Assign Inputs to Accelerator
accel.io.ap_start := ap_start
accel.io.xin1 := rs1
accel.io.xin2 := rs2
val ap_return = accel.io.ap_return
//Accelerator Outputs
val ap_done = accel.io.ap_done
val ap_idle = accel.io.ap_idle
val ap_ready = accel.io.ap_ready

//===== End Accelerator =====

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
result := ap_return
respValid := Bool(true)
}
when(ap_ready){
ap_start := Bool(false)
}
when(ap_done && ap_ready){
rdy := Bool(true) // ready to accept new commands
busy := Bool(false) // operation complete, no longer busy
state := idle
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
io.mem.req.bits.data := Bits(0) // we are not performing any stores...
io.mem.invalidate_lr := Bool(false)

//io.imem.acquire.valid := Bool(false)
//io.imem.grant.ready := Bool(false)
//io.autl.acquire.valid := Bool(false)
//io.autl.grant.ready := Bool(false)
//io.iptw.req.valid := Bool(false)
//io.dptw.req.valid := Bool(false)
//io.pptw.req.valid := Bool(false)
}
