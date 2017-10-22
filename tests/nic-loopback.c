#include "mmio.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "nic.h"

uint64_t src[200];
uint64_t dst[200];

#define TEST_LEN 128
#define NTRIALS 3

static unsigned long rdcycle(void)
{
	unsigned long cycles;

	asm volatile ("rdcycle %[cycles]" : [cycles] "=r" (cycles));
	return cycles;
}

void run_test(void)
{
	unsigned long start, end, len;
	int i;

	memset(dst, 0, sizeof(uint64_t) * TEST_LEN);
	asm volatile ("fence");

	start = rdcycle();
	nic_send(src, TEST_LEN * sizeof(uint64_t));
	end = rdcycle();
	printf("send %lu cycles\n", end - start);

	start = rdcycle();
	len = nic_recv(dst);
	end = rdcycle();
	printf("recv %lu cycles\n", end - start);

	if (len != TEST_LEN * sizeof(uint64_t)) {
		printf("recv got wrong # bytes\n");
		exit(EXIT_FAILURE);
	}

	for (i = 0; i < TEST_LEN; i++) {
		if (dst[i] != src[i]) {
			printf("Data mismatch @ %d: %lx != %lx\n",
					i, dst[i], src[i]);
			exit(EXIT_FAILURE);
		}
	}
}

int main(void)
{
	int i;

	for (i = 0; i < TEST_LEN; i++)
		src[i] = i << 12;

	for (i = 0; i < NTRIALS; i++)
		run_test();

	printf("All correct\n");

	return 0;
}
