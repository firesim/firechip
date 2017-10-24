package example

import chisel3._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.devices.tilelink._
import testchipip._
import icenet._

class ExampleTop(implicit p: Parameters) extends RocketCoreplex
    with HasMasterAXI4MemPort
    with HasPeripheryBootROM
    with HasSystemErrorSlave
    with HasNoDebug
    with HasPeripherySerial {
  override lazy val module = new ExampleTopModule(this)
}

class ExampleTopModule[+L <: ExampleTop](l: L) extends RocketCoreplexModule(l)
    with HasRTCModuleImp
    with HasMasterAXI4MemPortModuleImp
    with HasPeripheryBootROMModuleImp
    with HasNoDebugModuleImp
    with HasPeripherySerialModuleImp

class ExampleTopWithPWM(implicit p: Parameters) extends ExampleTop
    with HasPeripheryPWM {
  override lazy val module = new ExampleTopWithPWMModule(this)
}

class ExampleTopWithPWMModule(l: ExampleTopWithPWM)
  extends ExampleTopModule(l) with HasPeripheryPWMModuleImp

class ExampleTopWithBlockDevice(implicit p: Parameters) extends ExampleTop
    with HasPeripheryBlockDevice {
  override lazy val module = new ExampleTopWithBlockDeviceModule(this)
}

class ExampleTopWithBlockDeviceModule(l: ExampleTopWithBlockDevice)
  extends ExampleTopModule(l)
  with HasPeripheryBlockDeviceModuleImp

class ExampleTopWithIceNIC(implicit p: Parameters) extends ExampleTop
    with HasPeripheryIceNIC {
  override lazy val module = new ExampleTopWithIceNICModule(this)
}

class ExampleTopWithIceNICModule(outer: ExampleTopWithIceNIC)
  extends ExampleTopModule(outer)
  with HasPeripheryIceNICModuleImp

class ExampleTopWithFSimManager(implicit p:Parameters) extends ExampleTop
  with HasPeripheryFSimManager {
    override lazy val module = new ExampleTopWithFSimManagerModule(this)
  }

class ExampleTopWithFSimManagerModule(outer: ExampleTopWithFSimManager)
  extends ExampleTopModule(outer)
  with HasPeripheryFSimManagerModuleImp
