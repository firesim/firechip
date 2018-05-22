#include "mmio.h"
#include "nic.h"
#include "util.h"

#include <stdio.h>
#include <stdint.h>

uint16_t calc_checksum(void **data, int *sizes, int n)
{
	uint32_t sum = 0;

	for (int i = 0; i < n; i++) {
		int m = sizes[i] / sizeof(uint16_t);
		uint16_t *words = (uint16_t *) data[i];
		for (int j = 0; j < m; j++)
			sum += words[j];
	}

	while ((sum >> 16) != 0)
		sum = (sum & 0xffff) + (sum >> 16);

	return ~sum & 0xffff;
}

uint16_t request_checksum(void **data, int *sizes, int n)
{
	uintptr_t request, length, partial;
	int avail;

	do {
		avail = reg_read16(SIMPLENIC_CKSUM_COUNTS) & 0xff;
	} while (avail < n);

	for (int i = 0; i < n; i++) {
		request = (uintptr_t) data[i];
		length = sizes[i];
		partial = i < (n - 1);
		request |= (partial << 63) | (length << 48);
		reg_write64(SIMPLENIC_CKSUM_REQ, request);
	}

	do {
		avail = (reg_read16(SIMPLENIC_CKSUM_COUNTS) >> 8) & 0xff;
	} while (avail <= 0);

	return reg_read16(SIMPLENIC_CKSUM_RESP);
}

#define NSEGS 4
#define NDATA 128

int main(void)
{
	uint16_t data[NDATA];
	int i, idx = 0;
	int nwords[NSEGS] = {33, 4, 64, 27};
	int sizes[NSEGS];
	void *ptrs[NSEGS];
	uint16_t expected, actual;
	int cid = 0;

	for (i = 0; i < NDATA; i++)
		data[i] = i;

	for (i = 0; i < NSEGS; i++) {
		ptrs[i] = &data[idx];
		sizes[i] = nwords[i] * sizeof(uint16_t);
		idx += nwords[i];
	}

	printf("Calculating expected checksum");
	stats(expected = calc_checksum(ptrs, sizes, NSEGS), NDATA);

	printf("Getting checksum from accelerator");
	stats(actual = request_checksum(ptrs, sizes, NSEGS), NDATA);

	if (expected != actual) {
		printf("Incorrect result expected: %04x, actual: %04x\n",
				expected, actual);
		return 1;
	}

	return 0;
}
