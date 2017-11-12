package hls_adder

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.coreplex.{WithRoccExample, WithNMemoryChannels, WithNBigCores}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.tile._
import testchipip._
import icenet._
import freechips.rocketchip.coreplex.RocketTilesKey

class WithExampleTop extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
    Module(LazyModule(new ExampleTop()(p)).module)
})

//class WithPWM extends Config((site, here, up) => {
//  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
//    Module(LazyModule(new ExampleTopWithPWM()(p)).module)
//})

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
  case NICKey => NICConfig()
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

class BaseExampleConfig extends Config(
  new freechips.rocketchip.system.DefaultConfig)

class DefaultExampleConfig extends Config(
  new WithExampleTop ++ new BaseExampleConfig)

class RoccExampleConfig extends Config(
  new WithRoccExample ++ new DefaultExampleConfig)

//class PWMConfig extends Config(new WithPWM ++ new BaseExampleConfig)

class SimBlockDeviceConfig extends Config(
  new WithBlockDevice ++ new WithSimBlockDevice ++ new BaseExampleConfig)

class BlockDeviceModelConfig extends Config(
  new WithBlockDevice ++ new WithBlockDeviceModel ++ new BaseExampleConfig)

class LoopbackNICConfig extends Config(
  new WithLoopbackNIC ++ new BaseExampleConfig)

class SimNetworkConfig extends Config(
  new WithSimNetwork ++ new BaseExampleConfig)

class WithTwoTrackers extends WithNBlockDeviceTrackers(2)
class WithFourTrackers extends WithNBlockDeviceTrackers(4)

class WithTwoMemChannels extends WithNMemoryChannels(2)
class WithFourMemChannels extends WithNMemoryChannels(4)

class DualCoreConfig extends Config(
  // Core gets tacked onto existing list
  new WithNBigCores(1) ++ new DefaultExampleConfig)

class WithHLSRoccExample1 extends Config((site, here, up) => {
   case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(rocc =
      Seq(
        RoCCParams(
          opcodes = OpcodeSet.custom0,
          generator = (p: Parameters) => {
            val hls= LazyModule(new HLSAddControl()(p))
            hls
          })
        //RoCCParams(
        //  opcodes = OpcodeSet.custom1,
        //  generator = (p: Parameters) => {
        //    val translator = LazyModule(new TranslatorExample()(p))
        //    translator},
        //  nPTWPorts = 1),
        ))
    }
})


class HLSAdderConfig1 extends Config(new WithHLSRoccExample1 ++ new DefaultExampleConfig)
