#ifndef __DMA_EXT_H__
#define __DMA_EXT_H__

#include "rocc.h"

#define SRC_STRIDE 0
#define DST_STRIDE 1
#define SEGMENT_SIZE 2
#define NSEGMENTS 3
#define ACCEL_CTRL 4
#define RESP_STATUS 5
#define RESP_VPN 6

#define NO_ERROR 0
#define PAUSED 1
#define SRC_PAGE_FAULT 2
#define DST_PAGE_FAULT 3
#define SRC_INVALID_REGION 4
#define DST_INVALID_REGION 5

#define CTRL_ALLOC_SRC 1
#define CTRL_ALLOC_DST 2
#define CTRL_ALLOC_PAUSE 4

static inline void dma_clear_cr(int regnum, unsigned long value)
{
	ROCC_INSTRUCTION_SS(2, regnum, value, 7);
}

static inline void dma_set_cr(int regnum, unsigned long value)
{
	ROCC_INSTRUCTION_SS(2, regnum, value, 6);
}

static inline void dma_write_cr(int regnum, unsigned long value)
{
	ROCC_INSTRUCTION_SS(2, regnum, value, 5);
}

static inline unsigned long dma_read_cr(int regnum)
{
	unsigned long value;

	ROCC_INSTRUCTION_DS(2, value, regnum, 4);

	return value;
}

static inline void dma_transfer(void *dst, void *src)
{
	ROCC_INSTRUCTION_SS(2, dst, src, 0);
}

static inline void dma_read_prefetch(void *ptr)
{
	ROCC_INSTRUCTION_S(2, ptr, 2);
}

static inline void dma_write_prefetch(void *ptr)
{
	ROCC_INSTRUCTION_S(2, ptr, 3);
}

#endif
