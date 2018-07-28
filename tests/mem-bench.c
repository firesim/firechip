#include <stdio.h>

#include "mmio.h"

#define MEM_BENCH_BASE 0x10019000L
#define MEM_BENCH_ADDR       (MEM_BENCH_BASE + 0x00)
#define MEM_BENCH_LEN        (MEM_BENCH_BASE + 0x08)
#define MEM_BENCH_WRITE      (MEM_BENCH_BASE + 0x0C)
#define MEM_BENCH_WORKER     (MEM_BENCH_BASE + 0x0D)
#define MEM_BENCH_NRESP      (MEM_BENCH_BASE + 0x0E)
#define MEM_BENCH_TOTAL      (MEM_BENCH_BASE + 0x10)
#define MEM_BENCH_CUMULATIVE (MEM_BENCH_BASE + 0x18)

int main(void)
{
	unsigned long addr = 0x80080000L;
	int len = 1000 * 4096;

	printf("Write Benchmark\n");

	reg_write64(MEM_BENCH_ADDR, addr);
	reg_write32(MEM_BENCH_LEN, len);
	reg_write8(MEM_BENCH_WRITE, 1);
	reg_write8(MEM_BENCH_WORKER, 0);
	asm volatile ("fence");

	while (reg_read16(MEM_BENCH_NRESP) == 0) {}

	printf("total: %ld\n", reg_read64(MEM_BENCH_TOTAL));
	printf("cumulative: %ld\n", reg_read64(MEM_BENCH_CUMULATIVE));

	printf("Read Benchmark\n");

	reg_write8(MEM_BENCH_WRITE, 0);
	reg_write8(MEM_BENCH_WORKER, 0);
	asm volatile ("fence");

	while (reg_read16(MEM_BENCH_NRESP) == 0) {}

	printf("total: %ld\n", reg_read64(MEM_BENCH_TOTAL));
	printf("cumulative: %ld\n", reg_read64(MEM_BENCH_CUMULATIVE));

	return 0;
}
