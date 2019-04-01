#define SIMPLENIC_BASE 0x10016000L
#define SIMPLENIC_SEND_REQ (SIMPLENIC_BASE + 0)
#define SIMPLENIC_RECV_REQ (SIMPLENIC_BASE + 8)
#define SIMPLENIC_SEND_COMP (SIMPLENIC_BASE + 16)
#define SIMPLENIC_RECV_COMP (SIMPLENIC_BASE + 18)
#define SIMPLENIC_COUNTS (SIMPLENIC_BASE + 20)
#define SIMPLENIC_MACADDR (SIMPLENIC_BASE + 24)
#define SIMPLENIC_INTMASK (SIMPLENIC_BASE + 32)
#define SIMPLENIC_TXCSUM_REQ (SIMPLENIC_BASE + 40)
#define SIMPLENIC_RXCSUM_REQ (SIMPLENIC_BASE + 48)
#define SIMPLENIC_RXCSUM_RES (SIMPLENIC_BASE + 56)

static inline int nic_send_req_avail(void)
{
	return reg_read32(SIMPLENIC_COUNTS) & 0xff;
}

static inline int nic_recv_req_avail(void)
{
	return (reg_read32(SIMPLENIC_COUNTS) >> 8) & 0xff;
}

static inline int nic_send_comp_avail(void)
{
	return (reg_read32(SIMPLENIC_COUNTS) >> 16) & 0xff;
}

static inline int nic_recv_comp_avail(void)
{
	return (reg_read32(SIMPLENIC_COUNTS) >> 24) & 0xff;
}

static void nic_send(void *data, unsigned long len)
{
	uintptr_t addr = ((uintptr_t) data) & ((1L << 48) - 1);
	unsigned long packet = (len << 48) | addr;

	while (nic_send_req_avail() == 0);
	reg_write64(SIMPLENIC_SEND_REQ, packet);

	while (nic_send_comp_avail() == 0);
	reg_read16(SIMPLENIC_SEND_COMP);
}

static int nic_recv(void *dest)
{
	uintptr_t addr = (uintptr_t) dest;
	int len;

	while (nic_recv_req_avail() == 0);
	reg_write64(SIMPLENIC_RECV_REQ, addr);

	// Poll for completion
	while (nic_recv_comp_avail() == 0);
	len = reg_read16(SIMPLENIC_RECV_COMP);
	asm volatile ("fence");

	return len;
}

static inline uint64_t nic_macaddr(void)
{
	return reg_read64(SIMPLENIC_MACADDR);
}

static inline void nic_txcsum_req(
	uint16_t check, uint16_t offset, uint16_t start, uint16_t init)
{
	uint64_t request = check;
	request = (request << 16) | offset;
	request = (request << 16) | start;
	request = (request << 16) | init;

	reg_write64(SIMPLENIC_TXCSUM_REQ, request);
}

static inline void nic_rxcsum_req(
	uint16_t check, uint16_t start, uint16_t init)
{
	uint64_t request = check;
	request = (request << 16) | start;
	request = (request << 16) | init;

	reg_write64(SIMPLENIC_RXCSUM_REQ, request);
}
