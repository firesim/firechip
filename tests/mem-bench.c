#include <stdio.h>

#include "mmio.h"

#define MEM_BENCH_BASE 0x10019000L
#define MEM_BENCH_ADDR     (MEM_BENCH_BASE + 0x00)
#define MEM_BENCH_LEN      (MEM_BENCH_BASE + 0x08)
#define MEM_BENCH_NPASSES  (MEM_BENCH_BASE + 0x0C)
#define MEM_BENCH_STRIDESZ (MEM_BENCH_BASE + 0x0E)
#define MEM_BENCH_INFLIGHT (MEM_BENCH_BASE + 0x10)
#define MEM_BENCH_WRITE    (MEM_BENCH_BASE + 0x12)
#define MEM_BENCH_WORKER   (MEM_BENCH_BASE + 0x13)
#define MEM_BENCH_NRESP    (MEM_BENCH_BASE + 0x14)
#define MEM_BENCH_RESP     (MEM_BENCH_BASE + 0x18)

#define START_ADDR 0x80080000L
#define NPAGES 10
#define PAGE_SIZE 4096
#define BLOCK_STRIDE 64
#define BLOCK_SIZE 6
#define BEAT_SIZE 3
#define MAX_INFLIGHT 8

unsigned long perform_request(int nworkers)
{
	unsigned long cycles = 0;

	for (int i = 0; i < nworkers; i++)
		reg_write8(MEM_BENCH_WORKER, i);

	asm volatile ("fence");

	while (reg_read16(MEM_BENCH_NRESP) < nworkers) {}

	for (int i = 0; i < nworkers; i++) {
		unsigned long resp = reg_read64(MEM_BENCH_RESP);
		cycles = (resp > cycles) ? resp : cycles;
	}

	return cycles;
}

int main(void)
{
	printf("Write Blocks Single Pass\n");

	reg_write64(MEM_BENCH_ADDR, START_ADDR);
	reg_write32(MEM_BENCH_LEN, NPAGES * PAGE_SIZE);
	reg_write16(MEM_BENCH_NPASSES, 1);
	reg_write16(MEM_BENCH_STRIDESZ, (BLOCK_SIZE << 12) | BLOCK_STRIDE);
	reg_write16(MEM_BENCH_INFLIGHT, MAX_INFLIGHT);
	reg_write8(MEM_BENCH_WRITE, 1);

	printf("cycles: %ld\n", perform_request(1));

	printf("Read Blocks Single Pass\n");

	reg_write8(MEM_BENCH_WRITE, 0);

	printf("cycles: %ld\n", perform_request(1));

	printf("Write Blocks Multi-Pass\n");

	reg_write32(MEM_BENCH_LEN, PAGE_SIZE);
	reg_write16(MEM_BENCH_NPASSES, NPAGES);
	reg_write8(MEM_BENCH_WRITE, 1);

	printf("cycles: %ld\n", perform_request(1));

	printf("Read Blocks Multi-Pass\n");

	reg_write8(MEM_BENCH_WRITE, 0);

	printf("cycles: %ld\n", perform_request(1));

	printf("Write Beats Single Pass\n");

	reg_write32(MEM_BENCH_LEN, PAGE_SIZE * NPAGES);
	reg_write16(MEM_BENCH_NPASSES, 1);
	reg_write16(MEM_BENCH_STRIDESZ, (BEAT_SIZE << 12) | BLOCK_STRIDE);
	reg_write16(MEM_BENCH_INFLIGHT, 1);
	reg_write8(MEM_BENCH_WRITE, 1);

	printf("cycles: %ld\n", perform_request(1));

	printf("Read Beats Single Pass\n");

	reg_write8(MEM_BENCH_WRITE, 0);

	printf("cycles: %ld\n", perform_request(1));

	return 0;
}
