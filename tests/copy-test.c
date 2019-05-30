#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "dramcache.h"
#include "encoding.h"

#define CACHE_START (1L << 32)
#define SPAN_BYTES 1024
#define BLOCKN (SPAN_BYTES / sizeof(uint64_t))
#define EXTENT_BYTES (1L << 20)
#define TESTN (1L << 12)

static inline void init_array(uint64_t *arr, int n)
{
	for (int i = 0; i < n; i+=4) {
		arr[i + 0] = i + 0;
		arr[i + 1] = i + 1;
		arr[i + 2] = i + 2;
		arr[i + 3] = i + 3;
	}
}

static inline void copy_array(uint64_t *dst, uint64_t *src, int n)
{
	for (int i = 0; i < n; i += BLOCKN) {
		if ((i + BLOCKN) < n) {
			prefetch_write(&dst[i + BLOCKN], SPAN_BYTES);
			prefetch_read(&src[i + BLOCKN],  SPAN_BYTES);
		}
		for (int j = 0; j < BLOCKN; j+=4) {
			dst[i + j + 0] = src[i + j + 0];
			dst[i + j + 1] = src[i + j + 1];
			dst[i + j + 2] = src[i + j + 2];
			dst[i + j + 3] = src[i + j + 3];
		}
	}
}

static inline void check_array(uint64_t *arr, int n)
{
	for (int i = 0; i < n; i++) {
		if (arr[i] != i) {
			printf("Error arr[%d] = %ld\n", i, arr[i]);
			abort();
		}
	}
}

int main(void)
{
	long nextents = (2 * TESTN * sizeof(uint64_t)) / EXTENT_BYTES;
	long cycles;
	uint64_t *dst, *src;

	if (nextents == 0)
		nextents = 1;

	for (int i = 0; i < nextents; i++)
		set_extent_mapping(i, i + 1, 3 << 8);

	dst = (uint64_t *) CACHE_START;
	src = dst + TESTN;

	printf("Initialize source array\n");
	init_array(src, TESTN);

	//printf("Prefetch destination\n");
	//prefetch_read(dst, TESTN * sizeof(uint64_t));

	printf("Copy source array to dest\n");
	cycles = -rdcycle();
	copy_array(dst, src, TESTN);
	cycles += rdcycle();

	printf("%d cycles\n", cycles);

	printf("Check dest array for correctness\n");
	check_array(dst, TESTN);

	return 0;
}
