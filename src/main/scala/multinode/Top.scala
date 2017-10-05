package multinode

import chisel3._
import example._
import freechips.rocketchip.config.{Field, Parameters}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.util.HeterogeneousBag
import testchipip._
import testchipip.SerialAdapter.SERIAL_IF_WIDTH
import icenet._

case object NumNodes extends Field[Int]

class NodeTop(implicit p: Parameters) extends ExampleTop
    with HasPeripheryBlockDevice
    with HasPeripheryIceNIC {
  override lazy val module = new NodeTopModule(this)
}

class NodeTopModule(outer: NodeTop) extends ExampleTopModule(outer)
    with HasPeripheryBlockDeviceModuleImp
    with HasPeripheryIceNICModuleImp

class MultinodeTop(implicit p: Parameters) extends Module {
  val nNodes = p(NumNodes)
  val nodes = Seq.fill(nNodes) {
    Module(LazyModule(new NodeTop).module)
  }

  val io = IO(new Bundle {
    val serial = Vec(nNodes, new SerialIO(SERIAL_IF_WIDTH))
    val mem_axi = new HeterogeneousBag(
      nodes.flatMap(_.mem_axi4.map(_.cloneType)))
    val bdev = Vec(nNodes, new BlockDeviceIO)
    val net = Vec(nNodes, new NICIO)
  })

  io.mem_axi.zip(nodes.flatMap(_.mem_axi4)).foreach {
    case (out, mem_axi4) => out <> mem_axi4
  }
  io.serial <> nodes.map(_.serial)
  io.bdev <> nodes.map(_.bdev)
  io.net <> nodes.map(_.net)
}
