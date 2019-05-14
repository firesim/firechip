#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "dramcache.h"

#define SET_RANGE (1L << 16)
#define SPAN_BYTES 256
#define SPAN_WORDS (SPAN_BYTES / sizeof(uint64_t))
#define NWAYS 7
#define NBANKS 4

uint64_t data[SPAN_WORDS * NBANKS * (NWAYS + 1)];

static inline void write_span(uint64_t *ptr, long prefix)
{
	for (int i = 0; i < (SPAN_BYTES/sizeof(uint64_t)); i++)
		ptr[i] = prefix | i;
}

static inline void check_span(uint64_t *ptr, long prefix)
{
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
	printf("Performing writes\n");
	for (long way = 0; way < (NWAYS+1); way++) {
		for (long span = 0; span < NBANKS; span++) {
			long offset = (way * NBANKS + span) * SPAN_WORDS;
			write_span(&data[offset], offset);
		}
	}

	printf("Prefetching back first way\n");
	prefetch(data, NBANKS * SPAN_BYTES);
	asm volatile ("fence");

	printf("Performing reads\n");
	for (long span = 0; span < NBANKS; span++) {
		long offset = span * SPAN_WORDS;
		check_span(&data[offset], offset);
	}

	printf("Finished\n");

	return 0;
}
