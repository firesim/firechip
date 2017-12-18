#include <stdint.h>
#include <stdio.h>

#include "mmio.h"
#include "nic.h"
#include "memblade.h"

uint64_t page_data[512];
uint64_t resp_buffer[174];

static inline void send_word_req(
		struct combined_request *head,
		uint64_t *extdata, int n)
{
	while (nic_send_req_avail() < 2);
	asm volatile ("fence");
	nic_post_send(head, sizeof(struct combined_request), 1);
	nic_post_send(extdata, n * sizeof(uint64_t), 0);
	while (nic_send_comp_avail() < 2);
	nic_complete_send();
	nic_complete_send();
}

int main(void)
{
	struct combined_request creq;
	struct combined_response *cresp = (struct combined_response *) resp_buffer;
	int start = 0, len;
	uint64_t mymac;
	uint64_t extdata[3];
	uint64_t exp_resp_data[4] = {0, 0xBE, 1, 0xDEADB00FL};

	for (int i = 0; i < 512; i++)
		page_data[i] = i;

	mymac = nic_macaddr();
	memcpy(creq.eth.dstmac, &mymac, 6);
	memcpy(creq.eth.srcmac, &mymac, 6);
	creq.eth.ethtype = MB_REQ_ETH_TYPE;
	creq.mbreq.version = MB_DRAFT_VERSION;
	creq.mbreq.opcode = MB_OC_PAGE_WRITE;
	creq.mbreq.xact_id = 1;
	creq.mbreq.pageno = 4;

	printf("Sending write request\n");

	for (int i = 0; i < 3; i++) {
		int n = (i == 2) ? 170 : 171;
		creq.mbreq.part_id = i;

		while (nic_send_req_avail() < 2);
		asm volatile ("fence");
		nic_post_send(&creq, sizeof(creq), 1);
		nic_post_send(&page_data[start], sizeof(uint64_t) * n, 0);

		while (nic_send_comp_avail() < 2);
		nic_complete_send();
		nic_complete_send();

		start += n;
	}

	printf("Receiving write response\n");

	len = nic_recv(resp_buffer);

	if (len != 24) {
		printf("Write response wrong size\n");
		return 1;
	}
	if (cresp->eth.ethtype != MB_RESP_ETH_TYPE) {
		printf("Write response not an MB response\n");
		return 1;
	}
	if (cresp->mbresp.resp_code != MB_RC_NODATA_OK) {
		printf("Write response has wrong type %d\n",
				cresp->mbresp.resp_code);
		return 1;
	}
	if (cresp->mbresp.xact_id != 1) {
		printf("Write response has wrong xact id %d\n",
				cresp->mbresp.xact_id);
		return 1;
	}

	printf("Sending read request\n");

	creq.mbreq.opcode = MB_OC_PAGE_READ;
	creq.mbreq.part_id = 0;
	while (nic_send_req_avail() == 0);
	asm volatile ("fence");
	nic_post_send(&creq, sizeof(creq), 0);
	while (nic_send_comp_avail() == 0);
	nic_complete_send();

	printf("Receiving read response\n");

	start = 0;
	for (int i = 0; i < 512; i++)
		page_data[i] = 0;

	for (int i = 0; i < 3; i++) {
		int n = (i == 2) ? 170 : 171;

		len = nic_recv(resp_buffer);
		if (len != 24 + n * sizeof(uint64_t)) {
			printf("Read packet has wrong size %d\n", len);
			return 1;
		}
		if (cresp->eth.ethtype != MB_RESP_ETH_TYPE) {
			printf("Read response not an MB response\n");
			return 1;
		}
		if (cresp->mbresp.resp_code != MB_RC_PAGE_OK) {
			printf("Read response has wrong type %d\n",
					cresp->mbresp.resp_code);
			return 1;
		}
		if (cresp->mbresp.xact_id != 1) {
			printf("Read response has wrong xact_id %d\n",
					cresp->mbresp.xact_id);
			return 1;
		}

		memcpy(&page_data[start], &resp_buffer[3], n * sizeof(uint64_t));
		start += n;
	}

	for (int i = 0; i < 512; i++) {
		if (page_data[i] != i)
			printf("Page data at %d not correct: got %d\n",
					i, page_data[i]);
	}

	printf("Sending word-sized requests\n");

	creq.mbreq.pageno = 5;
	creq.mbreq.opcode = MB_OC_WORD_WRITE;
	creq.mbreq.xact_id = 0;
	extdata[0] = memblade_make_exthead(8, 2);
	extdata[1] = 0xDEADBEEFL;
	send_word_req(&creq, extdata, 2);

	creq.mbreq.opcode = MB_OC_ATOMIC_ADD;
	creq.mbreq.xact_id = 1;
	extdata[0] = memblade_make_exthead(9, 0);
	extdata[1] = 5;
	send_word_req(&creq, extdata, 2);

	creq.mbreq.opcode = MB_OC_COMP_SWAP;
	creq.mbreq.xact_id = 2;
	extdata[0] = memblade_make_exthead(8, 1);
	extdata[1] = 0xB00F;
	extdata[2] = 0xC3EF;
	send_word_req(&creq, extdata, 3);

	creq.mbreq.opcode = MB_OC_WORD_READ;
	creq.mbreq.xact_id = 3;
	extdata[0] = memblade_make_exthead(8, 2);
	send_word_req(&creq, extdata, 1);

	printf("Receiving word-sized responses\n");

	for (int i = 0; i < 4; i++) {
		int n = (i == 0) ? 0 : 1;
		int exp_resp_code = (i == 0) ? MB_RC_NODATA_OK : MB_RC_WORD_OK;

		len = nic_recv(resp_buffer);

		if (len != 24 + n * sizeof(uint64_t)) {
			printf("Response packet has wrong size %d\n", len);
			return 1;
		}
		if (cresp->eth.ethtype != MB_RESP_ETH_TYPE) {
			printf("Word response not an MB response\n");
			return 1;
		}
		if (cresp->mbresp.resp_code != exp_resp_code) {
			printf("Word response has wrong type %d\n",
					cresp->mbresp.resp_code);
			return 1;
		}
		if (cresp->mbresp.xact_id != i) {
			printf("Word response has wrong xact_id %d\n",
					cresp->mbresp.xact_id);
			return 1;
		}

		if (i > 0 && resp_buffer[3] != exp_resp_data[i]) {
			printf("Word response has wrong data %lx\n",
					resp_buffer[3]);
			return 1;
		}
	}

	printf("All tests completed successfully\n");

	return 0;
}
