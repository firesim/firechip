package dramcachetg

import chisel3._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.groundtest._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.interrupts._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.tile._
import memblade.cache.{HasPeripheryDRAMCache, HasPeripheryDRAMCacheModuleImp}

class DRAMCacheGroundTestTop(implicit p: Parameters) extends GroundTestSubsystem
    with HasPeripheryDRAMCache {
  override lazy val module = new DRAMCacheGroundTestTopModuleImp(this)
}

class DRAMCacheGroundTestTopModuleImp(outer: DRAMCacheGroundTestTop)
    extends GroundTestSubsystemModuleImp(outer)
    with HasPeripheryDRAMCacheModuleImp
