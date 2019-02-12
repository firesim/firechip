package example

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.subsystem._
import freechips.rocketchip.devices.tilelink.BootROMParams
import freechips.rocketchip.diplomacy.{LazyModule, ValName}
import freechips.rocketchip.tile.{XLen, BuildRoCC, OpcodeSet}
//import freechips.rocketchip.pfa.HasPFA
import testchipip._
import icenet._
import memblade.manager._
import memblade.client._
import memblade.cache._
import memblade.prefetcher.PrefetchRoCC

object ConfigValName {
  implicit val valName = ValName("TestHarness")
}
import ConfigValName._

class WithBootROM extends Config((site, here, up) => {
  case BootROMParams => BootROMParams(
    contentFileName = s"./testchipip/bootrom/bootrom.rv${site(XLen)}.img")
})

class WithExampleTop extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    Module(LazyModule(new ExampleTop()(p)).module)
  }
})

class WithPWM extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
    Module(LazyModule(new ExampleTopWithPWM()(p)).module)
})

class WithBlockDeviceModel extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectBlockDeviceModel()
    top
  }
})

class WithSimBlockDevice extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectSimBlockDevice(clock, reset)
    top
  }
})

class WithLoopbackNIC extends Config((site, here, up) => {
  case NICKey => NICConfig(
    inBufPackets = 10,
    creditTracker = Some(CreditTrackerParams()))
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectNicLoopback()
    top
  }
})

class WithSimNetwork extends Config((site, here, up) => {
  case NICKey => NICConfig(inBufPackets = 10)
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectSimNetwork(clock, reset)
    top
  }
})

class WithMemBench extends Config((site, here, up) => {
  case MemBenchKey => MemBenchParams()
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
    Module(LazyModule(new ExampleTopWithMemBench()(p)).module)
})

class WithTestMemBlade extends Config((site, here, up) => {
  //case HasPFA => true
  case MemBladeKey => MemBladeParams()
  case RemoteMemClientKey => RemoteMemClientConfig(
    reqTimeout = Some(511))
  case NICKey => NICConfig(
    inBufPackets = 48,
    creditTracker = Some(CreditTrackerParams(
      outTimeout = Some(511))))
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithRemoteMemClient()(p)).module)
    top.connectTestMemBlade()
    top
  }
})

class WithDRAMCache extends Config((site, here, up) => {
  case MemBenchKey => MemBenchParams(nXacts = 256)
  case NICKey => NICConfig(
    inBufPackets = 32,
    creditTracker = Some(CreditTrackerParams()))
  case MemBladeKey => MemBladeParams(
    spanQueue = MemBladeQueueParams(reqHeadDepth = 32))
  case DRAMCacheKey => DRAMCacheConfig(
    nSets = 256,
    nWays = 7,
    baseAddr = 1L << 32,
    extentBytes = 1 << 20,
    logAddrBits = 28)
  case BuildRoCC => Seq((p: Parameters) =>
    LazyModule(new PrefetchRoCC(OpcodeSet.custom2)(p)))
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithDRAMCache()(p)).module)
    top.connectTestMemBlade()
    top.connectSimAXICacheMem()
    top
  }
})

class BaseExampleConfig extends Config(
  new WithBootROM ++
  new freechips.rocketchip.system.DefaultConfig)

class DefaultExampleConfig extends Config(
  new WithExampleTop ++ new BaseExampleConfig)

class RoccExampleConfig extends Config(
  new WithRoccExample ++ new DefaultExampleConfig)

class PWMConfig extends Config(new WithPWM ++ new BaseExampleConfig)

class SimBlockDeviceConfig extends Config(
  new WithBlockDevice ++ new WithSimBlockDevice ++ new BaseExampleConfig)

class BlockDeviceModelConfig extends Config(
  new WithBlockDevice ++ new WithBlockDeviceModel ++ new BaseExampleConfig)

class LoopbackNICConfig extends Config(
  new WithLoopbackNIC ++ new BaseExampleConfig)

class SimNetworkConfig extends Config(
  new WithSimNetwork ++ new BaseExampleConfig)

class MemBenchConfig extends Config(
  new WithMemBench ++ new BaseExampleConfig)

class TestMemBladeConfig extends Config(
  new WithTestMemBlade ++ new BaseExampleConfig)

class WithTwoTrackers extends WithNBlockDeviceTrackers(2)
class WithFourTrackers extends WithNBlockDeviceTrackers(4)

class WithTwoMemChannels extends WithNMemoryChannels(2)
class WithFourMemChannels extends WithNMemoryChannels(4)

class DualCoreConfig extends Config(
  // Core gets tacked onto existing list
  new WithNBigCores(1) ++ new DefaultExampleConfig)

class RV32ExampleConfig extends Config(
  new WithRV32 ++ new DefaultExampleConfig)

class DRAMCacheConfig extends Config(
  new WithL2Size(128) ++
  new WithNBanksPerMemChannel(8) ++
  new WithL2Latency(121) ++
  new WithFederationL2Cache ++
  new WithDRAMCache ++ new DefaultExampleConfig)
