// See LICENSE for license details.

package hls_encrypt

import Chisel._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.config._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.util.InOrderArbiter
import freechips.rocketchip.system._

import vivadoHLS._
import memControl._
import hls_encrypt._

class HLSencryptControl(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new HLSencryptControlModule(this)
}

class HLSencryptControlModule(outer: HLSencryptControl) extends LazyRoCCModule(outer) 
 with HasCoreParameters {
  val result = Reg(init=UInt(0, width=xLen))
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

  //val rs1_unbuffered = io.cmd.bits.rs1
  val rs1_unbuffered = cmd.bits.rs1
  //val rs2_unbuffered = io.cmd.bits.rs2
  val rs2_unbuffered = cmd.bits.rs2

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
  val accel = Module(new HLSencryptBlackbox())

  //accel.clock.setName("ap_clk")
  //accel.renameClock("clk", "ap_clk")
  //accel.io.ap.clk <> Driver.implicitClock
  //accel.io.ap.rst := Driver.implicitReset
  //accel.io.ap.clk := Driver.implicitClock
  //accel.addClock(accel.clkB)
  //accel.clkB.setName("ap_clk")

  //Acclerator Registers (we buffer inputs to accelerator)
  val ap_start = Reg(init=Bool(false))

  //Assign Inputs to Accelerator
  accel.io.ap.start := ap_start
  //accel.io.a := rs1 //ACCEL IO NAME CAN CHANGE (NAMED IN C)
  //accel.io.b := rs2 //ACCEL IO NAME CAN CHANGE (NAMED IN C)

  //Accelerator Outputs
  val ap_return = accel.io.ap.rtn
  val ap_done = accel.io.ap.done
  val ap_idle = accel.io.ap.idle
  val ap_ready = accel.io.ap.ready

  //===== End Accelerator =====

  //===== Begin Mem Controller =====
  //The following are specific to the accelerator.  They set the address and data widths of the ap_bus interfaces
  val dataWidth = accel.ap_bus_dataWidths
  val addrWidth = accel.ap_bus_addrWidths
  val reqBufferLen = 4
  val rspBufferLen = 4
  val maxReqBytes = xLen/8
  val roccAddrWidth = coreMaxAddrBits
  val roccDataWidth = coreDataBits
  val roccTagWidth = coreDCacheReqTagBits
  val roccCmdWidth = M_SZ
  val roccTypWidth = MT_SZ
  //val numTags = p(RoccMaxTaggedMemXacts)
  val numTags = 16
  val tagOffset = 0 //Used if multiple accelerators to avoid tag collisions

  //Instantiate Controller
  val memControl = Module(new MemController(dataWidth, addrWidth, reqBufferLen, rspBufferLen, maxReqBytes, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth, numTags, tagOffset))

  if(accel.io.ap_bus.length > 0){
    //We have memory bus interfaces on the accelerator, create a memory controller

    //Hook up controller
    for(i <- 0 until accel.io.ap_bus.length){
      //memControl.io.reqsIn(i) <> accel.io.ap_bus(i).req
      memControl.io.reqsIn(i) := accel.io.ap_bus(i).req

      accel.io.ap_bus(i).req_full_n := memControl.io.reqsFullN(i)

      memControl.io.reqsWrite(i) <> accel.io.ap_bus(i).req_write

      accel.io.ap_bus(i).rsp.datain  := memControl.io.rspOut(i).datain
      accel.io.ap_bus(i).rsp_empty_n := memControl.io.rsp_empty_n(i)
      memControl.io.rsp_read(i)      <> accel.io.ap_bus(i).rsp_read
    }

    //Offset addrs only work for 2 arguments right now, TODO: generalize
    //Offset address lines
    
    //****handled by main controller****
    //val offsetAddrs = Vec.tabulate(dataWidth.length)((i) => Bits(INPUT, width=addrWidth(i)))
    //val loadOffsets = Vec.fill(dataWidth.length)(Bool(INPUT))

    //****handled by main controller****
    //----status line----
    //val memBusy = Bool(OUTPUT)

    //----ap_bus response----
    //val rspOut  = Vec.tabulate(dataWidth.length)((i) => new ApBusRsp(dataWidth(i)).flip)
    //val rsp_empty_n = Vec.fill(dataWidth.length)(Bool(OUTPUT)) //This is the same as valid
    //val rsp_read    = Vec.fill(dataWidth.length)(Bool(INPUT))  //This is the same as ready

    //----RoCC Mem Req----

    //io.mem.req.valid := Bool(false)
    //io.mem.req.bits.addr := Bits(0)
    //io.mem.req.bits.tag := Bits(0)
    //io.mem.req.bits.cmd := M_XRD // perform a load (M_XWR for stores)
    //io.mem.req.bits.typ := MT_D // D = 8 bytes, W = 4, H = 2, B = 1
    //io.mem.req.bits.data := Bits(0) // we're not performing any stores...

    io.mem.req.bits.addr       := memControl.io.roCCReqAddr
    io.mem.req.bits.tag        := memControl.io.roCCReqTag 
    io.mem.req.bits.cmd        := memControl.io.roCCReqCmd 
    io.mem.req.bits.typ        := memControl.io.roCCReqTyp
    io.mem.req.bits.data       := memControl.io.roCCReqData
    io.mem.req.valid           := memControl.io.roCCReqValid
    memControl.io.roCCReqRdy   := io.mem.req.ready
    //io.mem.req.bits.phys := Bool(true)

    //val roCCRespAddr  = UInt(INPUT, width = roccAddrWidth) // coreMaxAddrBits)
    memControl.io.roCCRspTag   := io.mem.resp.bits.tag 
    memControl.io.roCCRspCmd   := io.mem.resp.bits.cmd
    memControl.io.roCCRspData  := io.mem.resp.bits.data
    //val roCCRespTyp   
    memControl.io.roCCRspValid := io.mem.resp.valid
  }

  //===== End Mem Controller =====
  
  //***** Begin Argument Handling *****
  //TODO: currently only works for 2 argument calls.  Generalize
  
  val cArgs = List(rs1, rs2)
  val cArgsUnbuffered = List(rs1_unbuffered, rs2_unbuffered)
  //Argument numbers are specified in the blackbox

  //Scalar values
  for(i <- 0 until 0){
  //for(i <- 0 until accel.io.scalar_io.length){
    accel.io.scalar_io(0) := cArgs(accel.scalar_io_argLoc(i))
  }

  //ap_bus offsets
  for(i <- 0 until memControl.io.offsetAddrs.length){
    //ap_bus uses the unbuffered input because it is buffered on the first cycle
    memControl.io.offsetAddrs(i) := cArgsUnbuffered(accel.ap_bus_argLoc(i))
  }

  //***** End Argument Handling *****
  
  //Init control wires
  /*if(accel.io.ap_bus.length > 0){
    for(i <- 0 until memControl.io.loadOffsets.length){
      memControl.io.loadOffsets(i) := Bool(false)
    }
  }*/

  if(accel.io.ap_bus.length > 0){
    //Will run ap_start after offsets loaded
    for(i <- 0 until memControl.io.loadOffsets.length){
      memControl.io.loadOffsets(i) :=  (state === idle) && cmd.fire()
    }
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
       
        //Load the offsets
        /*if(accel.io.ap_bus.length > 0){
          //Will run ap_start after offsets loaded
          for(i <- 0 until memControl.io.loadOffsets.length){
            memControl.io.loadOffsets(i) := Bool(true)
          }
        }*/

        ap_start := Bool(true)        //Set next state
        state := working
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
        

      }
      when(respValid && io.resp.ready){
        //The processor has read the response.  There is no more data for it
        //Drive resp.valid low to avoid stalling processor
        respValid := Bool(false)
      }
    }
    is (working){

      //Stop Loading offsets
      /*if(accel.io.ap_bus.length > 0){
        //Will run ap_start after offsets loaded
        for(i <- 0 until memControl.io.loadOffsets.length){
          memControl.io.loadOffsets(i) := Bool(false)
        }
      }*/

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


      if(accel.io.ap_bus.length == 0){
        when(ap_idle){
          //if the operation was completed (result valid), and the accelerator is ready
          //the accerator is ready for the next operation and the controller is
          //returned to the idle state to wait for a new command.  the ready line
          //is pulled high to advertise that the accelerator is ready.
          
          //from the manual, it appears that ap_done is always asserted when the
          //accelerator is finished.  if this is true, using ap_done && ap_ready
          //should save one cycle over using ap_idle as the trigger.  this is because,
          //according to the timing diagram in the user manual (pg  

          rdy := Bool(true) // ready to accept new commands
          busy := Bool(false) // operation complete, no longer busy
          state := idle

          //note: this code could possibly be placed in the ap_done action to save
          //one wasted cycle.  it is not clear from the user guide (pg 157), ap_idle
          //is asserted one cycle after ap_done.  if this arrangment has problems,
          //transitioning on ap_idle should work but will result in an unnessicary
          //extra cycle.
        }
      }
      else
      {
        when(ap_idle && !memControl.io.memBusy){
          //if the operation was completed (result valid), and the accelerator is ready
          //the accerator is ready for the next operation and the controller is
          //returned to the idle state to wait for a new command.  the ready line
          //is pulled high to advertise that the accelerator is ready.
          
          //from the manual, it appears that ap_done is always asserted when the
          //accelerator is finished.  if this is true, using ap_done && ap_ready
          //should save one cycle over using ap_idle as the trigger.  this is because,
          //according to the timing diagram in the user manual (pg  

          rdy := Bool(true) // ready to accept new commands
          busy := Bool(false) // operation complete, no longer busy
          state := idle

          //note: this code could possibly be placed in the ap_done action to save
          //one wasted cycle.  it is not clear from the user guide (pg 157), ap_idle
          //is asserted one cycle after ap_done.  if this arrangment has problems,
          //transitioning on ap_idle should work but will result in an unnessicary
          //extra cycle.
        }
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
  if(accel.io.ap_bus.length == 0){
    // No connected memory bus lines on accelerator
    // We will not be doing any memory ops in this accelerator
    io.mem.req.valid := Bool(false)
    io.mem.req.bits.addr := UInt(0)
    io.mem.req.bits.tag := UInt(0)
    io.mem.req.bits.cmd := M_XRD // perform a load (M_XWR for stores)
    io.mem.req.bits.typ := MT_D // D = 8 bytes, W = 4, H = 2, B = 1
    io.mem.req.bits.data := UInt(0) // we're not performing any stores...
  



  }

  io.mem.invalidate_lr := Bool(false)
  /*
  io.imem.acquire.valid := Bool(false)
  io.imem.grant.ready := Bool(false)
  io.dmem.head.acquire.valid := Bool(false)
  io.dmem.head.grant.ready := Bool(false)
  io.iptw.req.valid := Bool(false)
  io.dptw.req.valid := Bool(false)
  io.pptw.req.valid := Bool(false)*/
}
