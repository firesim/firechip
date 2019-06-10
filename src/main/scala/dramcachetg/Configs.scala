package dramcachetg

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.groundtest._
import freechips.rocketchip.rocket.{DCacheParams}
import example.DRAMCacheConfig
import memblade.cache.DRAMCacheKey
import icenet.IceNetConsts.{NET_IF_WIDTH, NET_IF_BYTES}
import scala.math.min

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
        val nChunks = min(spanBytes / chunkBytes, 2)
        val nChannels = site(DRAMCacheKey).nChannels
        val nBanks = site(DRAMCacheKey).nBanksPerChannel * nChannels
        val mcRows = site(DRAMCacheKey).nMetaCacheRows
        List.tabulate(nWays + 1) { i =>
          Seq.tabulate(nChunks) { j =>
            Seq.tabulate(nBanks) { k =>
              val base = BigInt(
                (k * spanBytes) +
                (j * chunkBytes) +
                (i * nSets * spanBytes))
              val mcConflict = base + mcRows * nBanks * spanBytes
              Seq(base, mcConflict)
            }.flatten
          }.flatten
        }.flatten
      },
      maxRequests = 2048,
      memStart = site(DRAMCacheKey).baseAddr,
      numGens = 2)
  }
  case DRAMCacheKey => {
    val cacheKey = up(DRAMCacheKey)
    val nSpans = cacheKey.nSets * (cacheKey.nWays + 1)
    val memSize = nSpans * cacheKey.spanBytes
    val nExtents = (memSize - 1) / cacheKey.extentBytes + 1
    cacheKey.copy(
      extentTableInit = Seq.tabulate(nExtents)(i => (3, i)))
  }
})

class DRAMCacheTraceGenConfig extends Config(
  new WithDRAMCacheTraceGen ++ new DRAMCacheConfig)
