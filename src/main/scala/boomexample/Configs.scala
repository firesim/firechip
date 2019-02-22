package boomexample

import boom.system.BoomConfig
import chisel3._
import example.WithBootROM
import example.ConfigValName._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.subsystem.SystemBusKey
import icenet._
import testchipip._

class WithBoomExampleTop extends Config((site, here, up) => {
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    Module(LazyModule(new BoomExampleTop()(p)).module)
  }
})

class WithBlockDeviceModel extends Config((site, here, up) => {
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new BoomExampleTopWithBlockDevice()(p)).module)
    top.connectBlockDeviceModel()
    top
  }
})

class WithSimBlockDevice extends Config((site, here, up) => {
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new BoomExampleTopWithBlockDevice()(p)).module)
    top.connectSimBlockDevice(clock, reset)
    top
  }
})

class WithLoopbackNIC extends Config((site, here, up) => {
  case NICKey => NICConfig(inBufFlits = 1800)
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new BoomExampleTopWithIceNIC()(p)).module)
    top.connectNicLoopback()
    top
  }
})

class WithSimNetwork extends Config((site, here, up) => {
  case NICKey => NICConfig(inBufFlits = 1800)
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new BoomExampleTopWithIceNIC()(p)).module)
    top.connectSimNetwork(clock, reset)
    top
  }
})

class With64BitSystemBus extends Config((site, here, up) => {
  case SystemBusKey => up(SystemBusKey, site).copy(beatBytes = 8)
})

class BaseExampleConfig extends Config(
  new WithBootROM ++ new With64BitSystemBus ++ new BoomConfig)

class DefaultExampleConfig extends Config(
  new WithBoomExampleTop ++ new BaseExampleConfig)

class SimBlockDeviceConfig extends Config(
  new WithBlockDevice ++ new WithSimBlockDevice ++ new BaseExampleConfig)

class BlockDeviceModelConfig extends Config(
  new WithBlockDevice ++ new WithBlockDeviceModel ++ new BaseExampleConfig)

class LoopbackNICConfig extends Config(
  new WithLoopbackNIC ++ new BaseExampleConfig)

class SimNetworkConfig extends Config(
  new WithSimNetwork ++ new BaseExampleConfig)
