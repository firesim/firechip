#include "mmio.h"
#include "nic.h"
#include "util.h"

#include <stdio.h>
#include <stdint.h>

#define DATA_SIZE 64
#define DATA_START 1

uint16_t calc_checksum(uint16_t *data, int n)
{
	uint32_t sum = 0;

	for (int i = 0; i < n; i++)
		sum += data[i];

	while ((sum >> 16) != 0)
		sum = (sum & 0xffff) + (sum >> 16);

	return ~sum & 0xffff;
}

uint16_t request_checksum(void *data, int size)
{
	uintptr_t request = (uintptr_t) data;
	uintptr_t length = (uintptr_t) size;
	int avail;

	request |= (length << 48);

	do {
		avail = reg_read16(SIMPLENIC_CKSUM_COUNTS) & 0xff;
	} while (avail <= 0);

	reg_write64(SIMPLENIC_CKSUM_REQ, request);

	do {
		avail = (reg_read16(SIMPLENIC_CKSUM_COUNTS) >> 8) & 0xff;
	} while (avail <= 0);

	return reg_read16(SIMPLENIC_CKSUM_RESP);
}

int main(void)
{
	uint16_t data[DATA_SIZE];
	uint16_t expected, actual;
	int offset = 1;
	int len = DATA_SIZE-2;
	int nbytes = len * sizeof(uint16_t);
	int cid = 0;

	for (int i = 0; i < DATA_SIZE; i++)
		data[i] = i;

	printf("Calculating expected checksum");
	stats(expected = calc_checksum(&data[offset], len), len);

	printf("Getting checksum from accelerator");
	stats(actual = request_checksum(&data[offset], nbytes), len);

	if (expected != actual) {
		printf("Incorrect result expected: %04x, actual: %04x\n",
				expected, actual);
		return 1;
	}

	return 0;
}
