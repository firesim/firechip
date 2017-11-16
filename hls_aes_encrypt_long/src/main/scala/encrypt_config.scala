package hls_encrypt

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.tile._
import testchipip._
import icenet._
import freechips.rocketchip.coreplex.RocketTilesKey

class HLSencryptExample extends Config((site, here, up) => {
   case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(rocc =
      Seq(
        RoCCParams(
          opcodes = OpcodeSet.custom0,
          generator = (p: Parameters) => {
            val hls= LazyModule(new HLSencryptControl()(p))
            hls
          })
       ))
    }
})


class HLSencryptConfig extends Config(new HLSencryptExample ++ new DefaultExampleConfig)
