#ifndef __DRAM_CACHE_H__
#define __DRAM_CACHE_H__

#include "rocc.h"

#define EXTENT_TABLE_BASE 0x10020000L

static inline void set_extent_mapping(
		long logExtent, long physExtent, long macsuffix) {
	volatile uint64_t *addr = (volatile uint64_t *) (
			EXTENT_TABLE_BASE + logExtent * 8);
	*addr = (macsuffix << 48) | (1L << 47) | physExtent;
}

static inline void prefetch(unsigned long addr, unsigned long len)
{
	ROCC_INSTRUCTION_SS(2, addr, len, 0);
}

#endif
