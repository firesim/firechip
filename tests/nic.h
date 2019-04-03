#define SIMPLENIC_BASE 0x10016000L
#define SIMPLENIC_MACADDR (SIMPLENIC_BASE + 0x00)
#define SIMPLENIC_INTMASK (SIMPLENIC_BASE + 0x08)

#define SIMPLENIC_RECV_REQ (SIMPLENIC_BASE + 0x10)
#define SIMPLENIC_RECV_COMP (SIMPLENIC_BASE + 0x18)
#define SIMPLENIC_RECV_REQ_SPACE (SIMPLENIC_BASE + 0x1A)
#define SIMPLENIC_RECV_COMP_COUNT (SIMPLENIC_BASE + 0x1B)

#define SIMPLENIC_SEND_REQ (SIMPLENIC_BASE + 0x90)
#define SIMPLENIC_SEND_COMP (SIMPLENIC_BASE + 0x98)
#define SIMPLENIC_SEND_REQ_SPACE (SIMPLENIC_BASE + 0x9A)
#define SIMPLENIC_SEND_COMP_COUNT (SIMPLENIC_BASE + 0x9B)

static inline int nic_send_req_avail(int qnum)
{
	return reg_read8(SIMPLENIC_SEND_REQ_SPACE + qnum * 0x10);
}

static inline int nic_recv_req_avail(int qnum)
{
	return reg_read8(SIMPLENIC_RECV_REQ_SPACE + qnum * 0x10);
}

static inline int nic_send_comp_avail(int qnum)
{
	return reg_read8(SIMPLENIC_SEND_COMP_COUNT + qnum * 0x10);
}

static inline int nic_recv_comp_avail(int qnum)
{
	return reg_read8(SIMPLENIC_RECV_COMP_COUNT + qnum * 0x10);
}

static inline void nic_post_send(void *addr, int len, int partial, int qnum)
{
	uint64_t req_addr = (uint64_t) addr;
	uint64_t req_len = (uint64_t) len;
	uint64_t req_part = (uint64_t) partial;
	uint64_t request = (req_part << 63) | (req_len << 48) | req_addr;

	reg_write64(SIMPLENIC_SEND_REQ + 0x10 * qnum, request);
}

static inline int nic_complete_send(int qnum)
{
	return reg_read16(SIMPLENIC_SEND_COMP + 0x10 * qnum);
}

static inline void nic_post_recv(void *addr, int qnum)
{
	uint64_t request = (uint64_t) addr;

	reg_write64(SIMPLENIC_RECV_REQ + 0x10 * qnum, request);
}

static inline int nic_complete_recv(int qnum)
{
	return reg_read16(SIMPLENIC_RECV_COMP + 0x10 * qnum);
}

static void nic_send(void *data, unsigned long len, int qnum)
{
	while (nic_send_req_avail(qnum) == 0);
	nic_post_send(data, len, 0, qnum);

	while (nic_send_comp_avail(qnum) == 0);
	nic_complete_send(qnum);
}

static int nic_recv(void *dest, int qnum)
{
	int len;

	while (nic_recv_req_avail(qnum) == 0);
	nic_post_recv(dest, qnum);

	// Poll for completion
	while (nic_recv_comp_avail(qnum) == 0);
	len = nic_complete_recv(qnum);
	asm volatile ("fence");

	return len;
}

static inline uint64_t nic_macaddr(void)
{
	return reg_read64(SIMPLENIC_MACADDR);
}
