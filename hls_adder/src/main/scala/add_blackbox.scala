package hls_adder

//import Chisel._
import chisel3._
import chisel3.util._
//import chisel3.Clock
import chisel3.experimental._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.util._

//import uncore._
//import rocket._
//import cde.{Parameters, Field}
//import cde.Implicits._
/*
class HLSAddBlackbox extends BlackBox {
  val io = IO(new Bundle {
    val ap_start  = Input(Bool())
    val ap_done   = Output(Bool())
    val ap_idle   = Output(Bool())
    val ap_ready  = Output(Bool())

    val a         = Input(Bits(64.W))
    val b         = Input(Bits(64.W))
    val ap_return = Output(Bits(64.W))

    //val clk    = Bool(INPUT)
    //val reset  = Bool(INPUT)
    val clk = Input(Clock())
    val reset = Input(Bool()) 
  })
  //set names of io ports to not be io_name
  //io.ap_start.setName("ap_start")
  //io.ap_done.setName("ap_done")
  //io.ap_idle.setName("ap_idle")
  //io.ap_ready.setName("ap_ready")
  //io.a.setName("a")
  //io.b.setName("b")
  //io.ap_return.setName("ap_return")
  
  //set modual name to match verilog
  //moduleName = "scalar_add"
  //setResource("/scratch/qijing.huang/firechip/rocket-chip/src/main/resources/scalar_add.v")
  //setResource("/scalar_add.v")

}*/

class HLSAddBlackbox() extends BlackBox with HasBlackBoxResource{
 // val io = new Bundle {
 //   val ap_start  = Bool(INPUT)
 //   val ap_done   = Bool(OUTPUT)
 //   val ap_idle   = Bool(OUTPUT)
 //   val ap_ready  = Bool(OUTPUT)

 //   val a         = Bits(INPUT,  width = 64)
 //   val b         = Bits(INPUT,  width = 64)
 //   val ap_return = Bits(OUTPUT, width = 64)

 //   val clk    = Input(Clock())
 //   //val reset  = Bool(INPUT)
 // }
  val io = IO(new Bundle {
    val ap_start  = Input(Bool())
    val ap_done   = Output(Bool())
    val ap_idle   = Output(Bool())
    val ap_ready  = Output(Bool())

    val a         = Input(Bits(64.W))
    val b         = Input(Bits(64.W))
    val ap_return = Output(Bits(64.W))

    //val clk    = Bool(INPUT)
    //val reset  = Bool(INPUT)
    val ap_clk = Input(Clock())
    val ap_rst = Input(Bool()) 
  })

  //set names of io ports to not be io_name
  //io.ap_start.setName("ap_start")
  //io.ap_done.setName("ap_done")
  //io.ap_idle.setName("ap_idle")
  //io.ap_ready.setName("ap_ready")
  //io.a.setName("a")
  //io.b.setName("b")
  //io.ap_return.setName("ap_return")
  

 setResource("/scalar_add.v")
//set modual name to match verilog
  //moduleName = "scalar_add"
}

