package hls_encrypt

import Chisel._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.util._
import vivadoHLS._



class encrypt() extends BlackBox() {
  val io = new Bundle{
    val ap_clk    = Clock(INPUT )
    val ap_rst    = Bool(INPUT )
    val ap_start  = Bool(INPUT )
    val ap_done   = Bool(OUTPUT)
    val ap_idle   = Bool(OUTPUT)
    val ap_ready  = Bool(OUTPUT)
    val ap_return = Bits(OUTPUT, width = 32)

    val statemt_req_din     = Bool(OUTPUT)
    val statemt_req_full_n  = Bool(INPUT )
    val statemt_req_write   = Bool(OUTPUT)
    val statemt_rsp_empty_n = Bool(INPUT )
    val statemt_rsp_read    = Bool(OUTPUT)
    val statemt_address     = Bits(OUTPUT, width = 32)
    val statemt_datain      = Bits(INPUT , width = 64)
    val statemt_dataout     = Bits(OUTPUT, width = 64)
    val statemt_size        = Bits(OUTPUT, width = 32)

    val key_req_din     = Bool(OUTPUT)
    val key_req_full_n  = Bool(INPUT )
    val key_req_write   = Bool(OUTPUT)
    val key_rsp_empty_n = Bool(INPUT )
    val key_rsp_read    = Bool(OUTPUT)
    val key_address     = Bits(OUTPUT, width = 32)
    val key_datain      = Bits(INPUT , width = 64)
    val key_dataout     = Bits(OUTPUT, width = 64)
    val key_size        = Bits(OUTPUT, width = 32)
    

  }
}


class HLSencryptBlackbox() extends Module {


 
    //val statemt_req_din     = Bool(OUTPUT)
    //val statemt_req_full_n  = Bool(INPUT )
    //val statemt_req_write   = Bool(OUTPUT)
    //val statemt_rsp_empty_n = Bool(INPUT )
    //val statemt_rsp_read    = Bool(OUTPUT)
    //val statemt_address     = Bits(OUTPUT, width = 32)
    //val statemt_datain      = Bits(INPUT , width = 64)
    //val statemt_dataout     = Bits(OUTPUT, width = 64)
    //val statemt_size        = Bits(OUTPUT, width = 32)

 

  val ap_bus_addrWidths = List.fill(2)(32) //ap_bus defaults to 32 bit addresses
  val ap_bus_dataWidths = List(64, 64)
  val ap_bus_argLoc = List(0, 1) //Lists the argument number of the ap_bus

  val scalar_io_dataWidths = List(1)
  val scalar_io_argLoc = List(1) //Lists the argument number of the scalar_io

  val io = new Bundle {
    val ap = new ApCtrlIO(dataWidth = 32)
    //val ap_clk    = Bool(INPUT )
    //val ap_rst    = Bool(INPUT )
    //val ap_start  = Bool(INPUT )
    //val ap_done   = Bool(OUTPUT)
    //val ap_idle   = Bool(OUTPUT)
    //val ap_ready  = Bool(OUTPUT)
    //val ap_return = Bits(OUTPUT, width = 64)

    val ap_bus = HeterogeneousBag(ap_bus_addrWidths.zip(ap_bus_dataWidths).map {
      case (aw, dw) => new ApBusIO(dw, aw)
    })
    //val statemt_req_din     = Bool(OUTPUT)
    //val statemt_req_full_n  = Bool(INPUT )
    //val statemt_req_write   = Bool(OUTPUT)
    //val statemt_rsp_empty_n = Bool(INPUT )
    //val statemt_rsp_read    = Bool(OUTPUT)
    //val statemt_address     = Bits(OUTPUT, width = 32)
    //val statemt_datain      = Bits(INPUT , width = 64)
    //val statemt_dataout     = Bits(OUTPUT, width = 64)
    //val statemt_size        = Bits(OUTPUT, width = 32)

    val scalar_io = HeterogeneousBag(scalar_io_dataWidths.map(w => UInt(INPUT, width = w)))
  }

   val bb = Module(new encrypt())

   bb.io.ap_rst := reset
   bb.io.ap_clk := clock

   bb.io.ap_start := io.ap.start
   io.ap.done := bb.io.ap_done
   io.ap.idle := bb.io.ap_idle
   io.ap.ready := bb.io.ap_ready

  io.ap_bus(0).req.din := bb.io.statemt_req_din 
  bb.io.statemt_req_full_n := io.ap_bus(0).req_full_n 

  io.ap_bus(0).req_write := bb.io.statemt_req_write
  bb.io.statemt_rsp_empty_n := io.ap_bus(0).rsp_empty_n
  io.ap_bus(0).rsp_read := bb.io.statemt_rsp_read
  io.ap_bus(0).req.address := bb.io.statemt_address
  bb.io.statemt_datain := io.ap_bus(0).rsp.datain
  io.ap_bus(0).req.dataout := bb.io.statemt_dataout
  io.ap_bus(0).req.size := bb.io.statemt_size



  io.ap_bus(1).req.din := bb.io.key_req_din 
  bb.io.key_req_full_n := io.ap_bus(1).req_full_n 

  io.ap_bus(1).req_write := bb.io.key_req_write
  bb.io.key_rsp_empty_n := io.ap_bus(1).rsp_empty_n
  io.ap_bus(1).rsp_read := bb.io.key_rsp_read
  io.ap_bus(1).req.address := bb.io.key_address
  bb.io.key_datain := io.ap_bus(1).rsp.datain
  io.ap_bus(1).req.dataout := bb.io.key_dataout
  io.ap_bus(1).req.size := bb.io.key_size


  /*
class ApBusReq(dataWidth:Int, addrWidth:Int) extends Bundle{
  //Req specific lines
  //Specifies a write request
  val din     = Bool(OUTPUT) //req_din in verilog

  //Lines used for req
  val address     = UInt(OUTPUT, width = addrWidth)
  val dataout     = UInt(OUTPUT, width = dataWidth)
  val size        = UInt(OUTPUT, width = addrWidth)
 
 class ApBusIO(dataWidth:Int = 64, addrWidth:Int = 32) extends Bundle{
  val req = new ApBusReq(dataWidth, addrWidth)
  val req_full_n  = Bool(INPUT ) //req_full_n in verilog
  //Write the request
  val req_write   = Bool(OUTPUT) //req_write in verilog

  val rsp = new ApBusRsp(dataWidth)
  val rsp_empty_n = Bool(INPUT )
  val rsp_read    = Bool(OUTPUT)
 */

  //set names of io ports to not be io_name
  //io.ap.clk.setName("ap_clk")
  //io.ap.rst.setName("ap_rst")
  /*io.ap.start.setName("ap_start")
  io.ap.done.setName("ap_done")
  io.ap.idle.setName("ap_idle")
  io.ap.ready.setName("ap_ready")
  io.ap.rtn.setName("ap_return")

  //io.ap_clk.setName("ap_clk")
  //io.ap_rst.setName("ap_rst")
  //io.ap_start.setName("ap_start")
  //io.ap_done.setName("ap_done")
  //io.ap_idle.setName("ap_idle")
  //io.ap_ready.setName("ap_ready")
  //io.ap_return.setName("ap_return")
  
  io.ap_bus(0).req.din.setName("statemt_req_din")
  io.ap_bus(0).req_full_n.setName("statemt_req_full_n")
  io.ap_bus(0).req_write.setName("statemt_req_write")
  io.ap_bus(0).rsp_empty_n.setName("statemt_rsp_empty_n")
  io.ap_bus(0).rsp_read.setName("statemt_rsp_read")
  io.ap_bus(0).req.address.setName("statemt_address")
  io.ap_bus(0).rsp.datain.setName("statemt_datain")
  io.ap_bus(0).req.dataout.setName("statemt_dataout")
  io.ap_bus(0).req.size.setName("statemt_size")

  io.ap_bus(1).req.din.setName("key_req_din")
  io.ap_bus(1).req_full_n.setName("key_req_full_n")
  io.ap_bus(1).req_write.setName("key_req_write")
  io.ap_bus(1).rsp_empty_n.setName("key_rsp_empty_n")
  io.ap_bus(1).rsp_read.setName("key_rsp_read")
  io.ap_bus(1).req.address.setName("key_address")
  io.ap_bus(1).rsp.datain.setName("key_datain")
  io.ap_bus(1).req.dataout.setName("key_dataout")
  io.ap_bus(1).req.size.setName("key_size")

  /io.statemt_req_din.setName("statemt_req_din")
  //io.statemt_req_full_n.setName("statemt_req_full_n")
  //io.statemt_req_write.setName("statemt_req_write")
  //io.statemt_rsp_empty_n.setName("statemt_rsp_empty_n")
  //io.statemt_rsp_read.setName("statemt_rsp_read")
  //io.statemt_address.setName("statemt_address")
  //io.statemt_datain.setName("statemt_datain")
  //io.statemt_dataout.setName("statemt_dataout")
  //io.statemt_size.setName("statemt_size")

  //io.scalar_io(0).setName("len")

  //renameClock("_clk", "ap_clk")
  //io.ap.clk <> Driver.implicitClock
  //val clkB = Clock()
  //clkB.setName("ap_clk")
  //renameClock("ap_clk_", "ap_clk")
  addClock(Driver.implicitClock)
  renameClock("clk", "ap_clk")
  renameReset("ap_rst")

  //set modual name to match verilog
  moduleName = "encrypt"*/
}

