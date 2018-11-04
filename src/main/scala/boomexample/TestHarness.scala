package boomexample

import chisel3._
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.config.{Field, Parameters}
import freechips.rocketchip.util.GeneratorApp

case object BuildBoomTop extends Field[(Clock, Bool, Parameters) => BoomExampleTopModule[BoomExampleTop]]

class TestHarness(implicit val p: Parameters) extends Module {
  val io = IO(new Bundle {
    val success = Output(Bool())
  })

  val dut = p(BuildBoomTop)(clock, reset.toBool, p)
  dut.debug := DontCare
  dut.connectSimAXIMem()
  dut.dontTouchPorts()
  dut.tieOffInterrupts()
  io.success := dut.connectSimSerial()
}

object Generator extends GeneratorApp {
  val longName = names.topModuleProject + "." + names.topModuleClass + "." + names.configs
  generateFirrtl
}
