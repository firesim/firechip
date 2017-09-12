package example

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.coreplex.{WithRoccExample, WithNMemoryChannels, RocketTilesKey, WithNBigCores}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.devices.tilelink.BootROMParams
import java.nio.{ByteOrder, ByteBuffer}
import testchipip._
import icenet._

class WithExampleTop extends Config((site, here, up) => {
  case BuildTop => (p: Parameters) =>
    Module(LazyModule(new ExampleTop()(p)).module)
})

class WithPWM extends Config((site, here, up) => {
  case BuildTop => (p: Parameters) =>
    Module(LazyModule(new ExampleTopWithPWM()(p)).module)
})

class WithBlockDeviceModel extends Config((site, here, up) => {
  case BuildTop => (p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectBlockDeviceModel()
    top
  }
})

class WithSimBlockDevice extends Config((site, here, up) => {
  case BuildTop => (p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectSimBlockDevice()
    top
  }
})

class WithLoopbackNIC extends Config((site, here, up) => {
  case NICKey => NICConfig()
  case BuildTop => (p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectNicLoopback()
    top
  }
})

class WithSimNetwork extends Config((site, here, up) => {
  case NICKey => NICConfig(inBufPackets = 10)
  case BuildTop => (p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectSimNetwork()
    top
  }
})

class WithExampleBootROMParams extends Config((site, here, up) => {
  case BootROMParams => BootROMParams(
    hang = 0x10080,
    contentFileName = "./bootrom/bootrom.img",
    patchFunction = (buffer: ByteBuffer) => {
      var replaced = true
      buffer.order(ByteOrder.LITTLE_ENDIAN)
      while (buffer.hasRemaining()) {
        val pos = buffer.position()
        if (buffer.getInt() == 0x0eadbe3f) {
          buffer.putInt(pos, site(RocketTilesKey).size)
          replaced = true
        }
      }
      if (!replaced)
        throw new Exception("Could not find placeholder for NCores")
    })
})

class BaseExampleConfig extends Config(
  new WithExampleBootROMParams ++
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

class WithTwoTrackers extends WithNBlockDeviceTrackers(2)
class WithFourTrackers extends WithNBlockDeviceTrackers(4)

class WithTwoMemChannels extends WithNMemoryChannels(2)
class WithFourMemChannels extends WithNMemoryChannels(4)

class DualCoreConfig extends Config(
  // Core is tacked onto the end
  new WithNBigCores(1) ++ new DefaultExampleConfig)
