#include <stdint.h>
#include <stdio.h>

#include "mmio.h"
#include "nic.h"
#include "memblade.h"
#include "encoding.h"

#define NREQUESTS 8
#define SPAN_WORDS 32
#define START_SPAN 128

struct req_tracker {
	uint64_t span_data[SPAN_WORDS];
	int tag;
	int complete;
};

struct req_tracker write_trackers[NREQUESTS];
int write_head = 0, write_tail = 0;

struct req_tracker read_trackers[NREQUESTS];
int read_head = 0, read_tail = 0;

void setup_write_trackers(void)
{
	for (int tag = 0; tag < NREQUESTS; tag++) {
		for (int i = 0; i < SPAN_WORDS; i++) {
			uint64_t hightag = tag;
			write_trackers[tag].span_data[i] = (hightag << 32) | i;
		}
		write_trackers[tag].complete = 0;
	}
}

void send_page_writes(uint64_t dstmac)
{
	int req_avail = reg_read32(RMEM_CLIENT_NREQ);

	reg_write64(RMEM_CLIENT_DSTMAC, dstmac);
	reg_write8(RMEM_CLIENT_OPCODE, MB_OC_SPAN_WRITE);

	while (req_avail > 0 && write_head < NREQUESTS) {
		uint64_t *span_data = write_trackers[write_head].span_data;
		int tag;

		reg_write64(RMEM_CLIENT_SRC_ADDR, (uint64_t) span_data);
		reg_write64(RMEM_CLIENT_SPANID, START_SPAN + write_head);
		asm volatile ("fence");
		tag = reg_read32(RMEM_CLIENT_REQ);
		write_trackers[write_head].tag = tag;

		write_head++;
		req_avail--;
	}
}

struct req_tracker *find_tracker(struct req_tracker *trackers, int tag)
{
	for (int i = 0; i < NREQUESTS; i++) {
		if (!trackers[i].complete && trackers[i].tag == tag)
			return &trackers[i];
	}

	return NULL;
}

void complete_page_writes()
{
	int resp_avail = reg_read32(RMEM_CLIENT_NRESP);

	while (resp_avail > 0 && write_tail < NREQUESTS) {
		struct req_tracker *tracker;
		int tag = reg_read32(RMEM_CLIENT_RESP);

		tracker = find_tracker(write_trackers, tag);

		if (tracker == NULL)
			printf("Received unexpected write response %d\n", tag);
		else
			tracker->complete = 1;

		write_tail++;
		resp_avail--;
	}
}

int verify_page_writes(void)
{
	int result = 0;

	for (int i = 0; i < NREQUESTS; i++) {
		if (!write_trackers[i].complete) {
			printf("Write %d never completed\n",
					write_trackers[i].tag);
			result = 1;
		}
	}

	return result;
}

void setup_read_trackers(void)
{
	for (int tag = 0; tag < NREQUESTS; tag++)
		read_trackers[tag].complete = 0;
}

void send_page_reads(uint64_t dstmac)
{
	int req_avail = reg_read32(RMEM_CLIENT_NREQ);

	reg_write64(RMEM_CLIENT_DSTMAC, dstmac);
	reg_write8(RMEM_CLIENT_OPCODE, MB_OC_SPAN_READ);

	while (req_avail > 0 && read_head < NREQUESTS) {
		uint64_t *span_data = read_trackers[read_head].span_data;
		int tag;

		reg_write64(RMEM_CLIENT_DST_ADDR, (uint64_t) span_data);
		reg_write64(RMEM_CLIENT_SPANID, START_SPAN + read_head);
		tag = reg_read32(RMEM_CLIENT_REQ);
		read_trackers[read_head].tag = tag;

		read_head++;
		req_avail--;
	}
}

void complete_page_reads(void)
{
	int resp_avail = reg_read32(RMEM_CLIENT_NRESP);

	while (resp_avail > 0 && read_tail < NREQUESTS) {
		struct req_tracker *tracker;
		int tag = reg_read32(RMEM_CLIENT_RESP);

		tracker = find_tracker(read_trackers, tag);

		if (tracker == NULL)
			printf("Received unexpected read response %d\n", tag);
		else
			tracker->complete = 1;

		read_tail++;
		resp_avail--;
	}
}

int verify_page_reads(void)
{
	int result = 0;

	for (int i = 0; i < NREQUESTS; i++) {
		uint64_t *write_data = write_trackers[i].span_data;
		uint64_t *read_data  = read_trackers[i].span_data;

		for (int j = 0; j < SPAN_WORDS; j++) {
			if (write_data[j] != read_data[j]) {
				printf("Read response %d wrong data at %d, %lx != %lx\n",
						i, j, read_data[j], write_data[j]);
				result = 1;
			}
		}
	}

	return result;
}

int main(void)
{
	uint64_t mymac;
	unsigned long start, end;

	mymac = nic_macaddr();

	printf("Setting up test\n");

	setup_write_trackers();
	setup_read_trackers();
	asm volatile ("fence");

	printf("Start span write benchmark\n");

	start = rdcycle();

	while (write_head < NREQUESTS) {
		complete_page_writes();
		send_page_writes(mymac);
	}

	while (write_tail < NREQUESTS)
		complete_page_writes();

	end = rdcycle();

	printf("Finished span write benchmark\n");

	if (verify_page_writes())
		return 1;

	printf("Write cycles: %ld\n", end - start);

	printf("Start span read benchmark\n");

	start = rdcycle();

	while (read_head < NREQUESTS) {
		complete_page_reads();
		send_page_reads(mymac);
	}

	while (read_tail < NREQUESTS)
		complete_page_reads();

	end = rdcycle();

	printf("Finished span read benchmark\n");

	if (verify_page_reads())
		return 1;

	printf("Read cycles: %ld\n", end - start);

	return 0;
}
