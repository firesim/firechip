package firesim.firesim

import freechips.rocketchip.config.{Parameters, Config, Field}

import midas.{EndpointKey}
import midas.widgets.{EndpointMap}
import midas.models._

import testchipip.{WithBlockDevice}

import firesim.endpoints._
import firesim.configs._

class WithSerialWidget extends Config((site, here, up) => {
  case EndpointKey => up(EndpointKey) ++ EndpointMap(Seq(new SimSerialIO))
})

class WithUARTWidget extends Config((site, here, up) => {
  case EndpointKey => up(EndpointKey) ++ EndpointMap(Seq(new SimUART))
})

class WithSimpleNICWidget extends Config((site, here, up) => {
  case EndpointKey => up(EndpointKey) ++ EndpointMap(Seq(new SimSimpleNIC))
  case LoopbackNIC => false
})

class WithBlockDevWidget extends Config((site, here, up) => {
  case EndpointKey => up(EndpointKey) ++ EndpointMap(Seq(new SimBlockDev))
})

class WithTracerVWidget extends Config((site, here, up) => {
  case midas.EndpointKey => up(midas.EndpointKey) ++
    EndpointMap(Seq(new SimTracerV))
})

/*******************************************************************************
* Full PLATFORM_CONFIG Configurations. These set simulator parameters.
*
* In general, if you're adding or removing features from any of these, you
* should CREATE A NEW ONE, WITH A NEW NAME. This is because the manager
* will store this name as part of the tags for the AGFI, so that later you can
* reconstruct what is in a particular AGFI. These tags are also used to
* determine which driver to build.
*******************************************************************************/
class FireSimConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new WithDefaultMemModel ++
  new WithTracerVWidget ++
  new BasePlatformConfig)

class FireSimConfig160MHz extends Config(
  new WithDesiredHostFrequency(160) ++
  new FireSimConfig)

class FireSimConfig90MHz extends Config(
  new WithDesiredHostFrequency(90) ++
  new FireSimConfig)

class FireSimConfig75MHz extends Config(
  new WithDesiredHostFrequency(75) ++
  new FireSimConfig)

class FireSimClockDivConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new WithDefaultMemModel(clockDivision = 2) ++
  new BasePlatformConfig)

class FireSimDDR3Config extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new FCFS16GBQuadRank ++
  new BasePlatformConfig)

class FireSimDDR3LLC4MBConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new FCFS16GBQuadRankLLC4MB ++
  new BasePlatformConfig)

class FireSimDDR3FRFCFSConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new FRFCFS16GBQuadRank ++
  new BasePlatformConfig)

class FireSimDDR3FRFCFSLLC4MBConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new FRFCFS16GBQuadRankLLC4MB ++
  new BasePlatformConfig)

class FireSimDDR3FRFCFSLLC4MBConfig160MHz extends Config(
  new WithDesiredHostFrequency(160) ++
  new FireSimDDR3FRFCFSLLC4MBConfig)

class FireSimDDR3FRFCFSLLC4MBConfig90MHz extends Config(
  new WithDesiredHostFrequency(90) ++
  new FireSimDDR3FRFCFSLLC4MBConfig)

class FireSimDDR3FRFCFSLLC4MBConfig75MHz extends Config(
  new WithDesiredHostFrequency(75) ++
  new FireSimDDR3FRFCFSLLC4MBConfig)

class FireSimDDR3FRFCFSLLC4MB3ClockDivConfig extends Config(
  new WithDesiredHostFrequency(90) ++
  new WithSerialWidget ++
  new WithUARTWidget ++
  new WithSimpleNICWidget ++
  new WithBlockDevWidget ++
  new FRFCFS16GBQuadRankLLC4MB3Div ++
  new BasePlatformConfig)
