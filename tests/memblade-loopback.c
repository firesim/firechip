#include <stdint.h>
#include <stdio.h>

#include "mmio.h"
#include "nic.h"
#include "memblade.h"

uint64_t page_data[512];
uint64_t resp_buffer[174];

int main(void)
{
	struct combined_request creq;
	struct combined_response *cresp = (struct combined_response *) resp_buffer;
	int start = 0, len;
	uint64_t mymac;

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

	return 0;
}
