package dramcachetg

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.groundtest._
import freechips.rocketchip.rocket.{DCacheParams}
import freechips.rocketchip.subsystem.CacheBlockBytes
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
        val cacheKey = site(DRAMCacheKey)
        val nSets = cacheKey.nSets
        val nWays = cacheKey.nWays
        val spanBytes = cacheKey.spanBytes
        val blockBytes = site(CacheBlockBytes)
        val nBlocks = min(spanBytes/blockBytes, 2)
        val nChannels = cacheKey.nChannels
        val nBanks = cacheKey.nBanksPerChannel * nChannels
        val mcRows = cacheKey.nMetaCacheRows
        List.tabulate(nWays + 1) { i =>
          Seq.tabulate(nBlocks) { j =>
            Seq.tabulate(nBanks) { k =>
              val base = BigInt(
                (k * spanBytes) +
                (j * blockBytes) +
                (i * nSets * spanBytes))
              val conflict = base + mcRows * nBanks * spanBytes
              Seq(base, conflict)
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
