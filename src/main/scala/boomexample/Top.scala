package boomexample

import boom.system.{BoomSubsystem, BoomSubsystemModule}
import freechips.rocketchip.subsystem._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.devices.tilelink._
import freechips.rocketchip.util.DontTouch
import testchipip._
import icenet._

class BoomExampleTop(implicit p: Parameters) extends BoomSubsystem
    with CanHaveMasterAXI4MemPort
    with HasPeripheryBootROM
    with HasSystemErrorSlave
    with HasAsyncExtInterrupts
    with HasNoDebug
    with HasPeripherySerial {
  override lazy val module = new BoomExampleTopModule(this)
}

class BoomExampleTopModule[+L <: BoomExampleTop](l: L) extends BoomSubsystemModule(l)
    with HasRTCModuleImp
    with CanHaveMasterAXI4MemPortModuleImp
    with HasPeripheryBootROMModuleImp
    with HasExtInterruptsModuleImp
    with HasNoDebugModuleImp
    with HasPeripherySerialModuleImp
    with DontTouch

class BoomExampleTopWithBlockDevice(implicit p: Parameters) extends BoomExampleTop
    with HasPeripheryBlockDevice {
  override lazy val module = new BoomExampleTopWithBlockDeviceModule(this)
}

class BoomExampleTopWithBlockDeviceModule(l: BoomExampleTopWithBlockDevice)
  extends BoomExampleTopModule(l)
  with HasPeripheryBlockDeviceModuleImp

class BoomExampleTopWithIceNIC(implicit p: Parameters) extends BoomExampleTop
    with HasPeripheryIceNIC {
  override lazy val module = new BoomExampleTopWithIceNICModule(this)
}

class BoomExampleTopWithIceNICModule(outer: BoomExampleTopWithIceNIC)
  extends BoomExampleTopModule(outer)
  with HasPeripheryIceNICModuleImp
