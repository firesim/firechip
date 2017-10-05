package multinode

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import testchipip.WithBlockDevice
import example._

class WithNumNodes(n: Int) extends Config((pname, site, here) => {
  case NumNodes => n
})

class MultinodeConfig extends Config(
  new WithNumNodes(4) ++
  new WithBlockDevice ++ new WithSimBlockDevice ++
  new WithSimNetwork ++
  new DefaultExampleConfig)
