package multinode

import chisel3._
import chisel3.util._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.coreplex.SimAXIMem
import freechips.rocketchip.diplomacy.LazyModule
import testchipip.{SimSerial, SimBlockDevice}
import testchipip.GeneratorApp
import testchipip.SerialAdapter.SERIAL_IF_WIDTH
import icenet.SimNetwork

class TestHarness(implicit val p: Parameters) extends Module {
  val io = IO(new Bundle {
    val success = Output(Bool())
  })

  val dut = Module(new MultinodeTop)
  val nMemChannels = dut.io.mem_axi.size
  if (nMemChannels > 0) {
    val mem = Module(LazyModule(new SimAXIMem(nMemChannels)).module)
    mem.io.axi4 <> dut.io.mem_axi
  }
  dut.io.serial.foreach { serial =>
    val sim = Module(new SimSerial(SERIAL_IF_WIDTH))
    sim.io.clock := clock
    sim.io.reset := reset
    sim.io.serial <> serial
  }
  dut.io.bdev.foreach { bdev =>
    val sim = Module(new SimBlockDevice)
    sim.io.clock := clock
    sim.io.reset := reset
    sim.io.bdev <> bdev
  }
  dut.io.net.foreach { net =>
    val sim = Module(new SimNetwork)
    sim.io.clock := clock
    sim.io.reset := reset
    sim.io.net <> net
  }
}

object Generator extends GeneratorApp {
  generateFirrtl
}
