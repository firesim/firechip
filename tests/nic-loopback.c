#include "mmio.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "nic.h"

#define NPACKETS 10
#define TEST_LEN 180
#define NTRIALS 3

uint64_t src[NPACKETS][TEST_LEN];
uint64_t dst[NPACKETS][TEST_LEN];
uint64_t lengths[NPACKETS];

static unsigned long rdcycle(void)
{
	unsigned long cycles;

	asm volatile ("rdcycle %[cycles]" : [cycles] "=r" (cycles));
	return cycles;
}

static inline void send_recv()
{
	uint64_t send_packet, recv_addr;
	int ncomps, send_comps_left = NPACKETS, recv_comps_left = NPACKETS;
	int recv_idx = 0;

	for (int i = 0; i < NPACKETS; i++) {
		send_packet = ((TEST_LEN * sizeof(uint64_t)) << 48) | ((uint64_t) src[i]);
		recv_addr = (uint64_t) dst[i];
		reg_write64(SIMPLENIC_SEND_REQ, send_packet);
		reg_write64(SIMPLENIC_RECV_REQ, recv_addr);
	}

	while (send_comps_left > 0 || recv_comps_left > 0) {
		ncomps = nic_send_comp_avail();
		for (int i = 0; i < ncomps; i++)
			reg_read16(SIMPLENIC_SEND_COMP);
		send_comps_left -= ncomps;

		ncomps = nic_recv_comp_avail();
		for (int i = 0; i < ncomps; i++) {
			lengths[recv_idx] = reg_read16(SIMPLENIC_RECV_COMP);
			recv_idx++;
		}
		recv_comps_left -= ncomps;
	}
}

void run_test(void)
{
	unsigned long start, end;
	int i, j;

	memset(dst, 0, sizeof(uint64_t) * TEST_LEN * NPACKETS);
	asm volatile ("fence");

	start = rdcycle();
	send_recv();
	end = rdcycle();

	printf("send/recv %lu cycles\n", end - start);

	for (int i = 0; i < NPACKETS; i++) {
		if (lengths[i] != TEST_LEN * sizeof(uint64_t)) {
			printf("recv got wrong # bytes\n");
			exit(EXIT_FAILURE);
		}

		for (j = 0; j < TEST_LEN; j++) {
			if (dst[i][j] != src[i][j]) {
				printf("Data mismatch @ %d, %d: %lx != %lx\n",
						i, j, dst[i][j], src[i][j]);
				exit(EXIT_FAILURE);
			}
		}
	}
}

int main(void)
{
	int i, j;

	for (i = 0; i < NPACKETS; i++) {
		for (j = 0; j < TEST_LEN; j++)
			src[i][j] = i * TEST_LEN + j;
	}

	for (i = 0; i < NTRIALS; i++) {
		printf("Trial %d\n", i);
		run_test();
	}

	printf("All correct\n");

	return 0;
}
