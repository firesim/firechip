package boomexample

import boom.system.BoomConfig
import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.diplomacy.LazyModule

import example.WithBootROM
import example.ConfigValName._

class WithBoomExampleTop extends Config((site, here, up) => {
  case BuildBoomTop => (clock: Clock, reset: Bool, p: Parameters) => {
    Module(LazyModule(new BoomExampleTop()(p)).module)
  }
})

class BoomExampleConfig extends Config(
  new WithBootROM ++ new WithBoomExampleTop ++ new BoomConfig)
