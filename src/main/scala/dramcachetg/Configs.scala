package dramcachetg

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.groundtest._
import freechips.rocketchip.rocket.{DCacheParams}
import example.DRAMCacheConfig
import memblade.cache.DRAMCacheKey
import icenet.IceNetConsts.{NET_IF_WIDTH, NET_IF_BYTES}

class WithDRAMCacheTraceGen extends Config((site, here, up) => {
  case GroundTestTilesKey => Seq.fill(2) {
    TraceGenParams(
      dcache = Some(new DCacheParams(nSets = 16, nWays=1)),
      wordBits = NET_IF_WIDTH,
      addrBits = 40,
      addrBag = {
        val nSets = site(DRAMCacheKey).nSets
        val nWays = site(DRAMCacheKey).nWays
        val spanBytes = site(DRAMCacheKey).spanBytes
        val chunkBytes = site(DRAMCacheKey).chunkBytes
        val nChunks = 2
        val nBanks = site(DRAMCacheKey).nBanks
        List.tabulate(nWays + 1) { i =>
          Seq.tabulate(nChunks) { j =>
            Seq.tabulate(nBanks) { k =>
              BigInt(
                (k * spanBytes) +
                (j * chunkBytes) +
                (i * nBanks * nSets * spanBytes))
            }
          }.flatten
        }.flatten
      },
      maxRequests = 2048,
      memStart = site(DRAMCacheKey).baseAddr,
      numGens = 2)
  }
  case DRAMCacheKey => {
    val cacheKey = up(DRAMCacheKey)
    val nSpans = cacheKey.nBanks * cacheKey.nSets * (cacheKey.nWays + 1)
    val memSize = nSpans * cacheKey.spanBytes
    val nExtents = (memSize - 1) / cacheKey.extentBytes + 1
    cacheKey.copy(
      extentTableInit = Seq.tabulate(nExtents)(i => (3, i)))
  }
})

class DRAMCacheTraceGenConfig extends Config(
  new WithDRAMCacheTraceGen ++ new DRAMCacheConfig)
