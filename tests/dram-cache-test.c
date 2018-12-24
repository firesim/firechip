#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "dramcache.h"

#define CACHE_START 0x100000000L
#define SET_RANGE (1L << 16)
#define SPAN_BYTES 256
#define NWAYS 7
#define NBANKS 4

static inline void write_span(unsigned long base, long prefix)
{
	volatile uint64_t *ptr = (volatile uint64_t *) base;

	for (int i = 0; i < (SPAN_BYTES/sizeof(uint64_t)); i++)
		ptr[i] = prefix | i;
}

static inline void check_span(unsigned long base, long prefix)
{
	volatile uint64_t *ptr = (volatile uint64_t *) base;

	for (int i = 0; i < (SPAN_BYTES/sizeof(uint64_t)); i++) {
		long expected = prefix | i;
		long actual = ptr[i];
		if (expected != actual) {
			printf("%d: expected %lx, got %lx\n",
					i, expected, actual);
		}
	}
}

int main(void)
{
	printf("Set extent mapping\n");

	set_extent_mapping(0, 0, 3);

	printf("Performing writes\n");
	for (long way = 0; way < (NWAYS+1); way++) {
		for (long span; span < NBANKS; span++) {
			long offset = way * SET_RANGE + span * SPAN_BYTES;
			write_span(CACHE_START + offset, offset);
		}
	}

	printf("Performing reads\n");
	for (long way = 0; way < (NWAYS+1); way++) {
		for (long span; span < NBANKS; span++) {
			long offset = way * SET_RANGE + span * SPAN_BYTES;
			check_span(CACHE_START + offset, offset);
		}
	}

	printf("Finished\n");

	return 0;
}
