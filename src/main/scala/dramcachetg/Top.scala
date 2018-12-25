package dramcachetg

import chisel3._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.groundtest.{GroundTestSubsystem, GroundTestSubsystemModuleImp}
import memblade.cache.{HasPeripheryDRAMCache, HasPeripheryDRAMCacheModuleImp}

class DRAMCacheGroundTestTop(implicit p: Parameters) extends GroundTestSubsystem
    with HasPeripheryDRAMCache {
  override lazy val module = new DRAMCacheGroundTestTopModuleImp(this)
}

class DRAMCacheGroundTestTopModuleImp(outer: DRAMCacheGroundTestTop)
    extends GroundTestSubsystemModuleImp(outer)
    with HasPeripheryDRAMCacheModuleImp
