package dramcachetg

import chisel3._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.groundtest._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.interrupts._
import freechips.rocketchip.subsystem._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import memblade.cache.{HasPeripheryDRAMCache, HasPeripheryDRAMCacheModuleImp}

class DRAMCacheGroundTestTop(implicit p: Parameters) extends BaseSubsystem
    with HasPeripheryTestRAMSlave
    with HasPeripheryDRAMCache {

  val tileParams = p(GroundTestTilesKey)
  val tiles = tileParams.zipWithIndex.map { case(c, i) => LazyModule(
    c.build(i, p.alterPartial {
      case TileKey => c
      case SharedMemoryTLEdge => sbus.busView
    })
  )}

  tiles.flatMap(_.dcacheOpt).foreach { dc =>
    sbus.fromTile(None, buffer = BufferParams.default){ dc.node }
  }

  // No PLIC in ground test; so just sink the interrupts to nowhere
  IntSinkNode(IntSinkPortSimple()) := ibus.toPLIC

  override lazy val module = new DRAMCacheGroundTestTopModule(this)
}

class DRAMCacheGroundTestTopModule(outer: DRAMCacheGroundTestTop)
    extends BaseSubsystemModuleImp(outer)
    with HasPeripheryDRAMCacheModuleImp {
  val success = IO(Output(Bool()))

  outer.tiles.zipWithIndex.map { case(t, i) => t.module.constants.hartid := i.U }

  val status = DebugCombiner(outer.tiles.map(_.module.status))
  success := status.finished
}
