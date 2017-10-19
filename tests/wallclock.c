#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "mmio.h"

#define WALLCLK_BASE	0x10017000
#define WALLCLK_REQ	WALLCLK_BASE
#define WALLCLK_RESP	WALLCLK_BASE+4

int main(void)
{
	int resp, expected;
	int i;
	reg_write32(WALLCLK_REQ, 10);
	resp = reg_read32(WALLCLK_RESP);
	expected = -1;

	if(resp != expected)
	{
		goto error1;
	}

	reg_write32(WALLCLK_REQ, 1);
	resp = reg_read32(WALLCLK_RESP);
	expected = 1;
	if(resp < 1500000000)
	{
		goto error2;
	}

	reg_write32(WALLCLK_REQ, 1);
	resp = reg_read32(WALLCLK_RESP);
	
	if(resp < 1500000000)
	{
		goto error2;
	}

	expected = 0;
	resp = reg_read32(WALLCLK_RESP);
	
	if(resp != expected)
	{
		goto error1;
	}
	
	printf("success\n");
	return 0;
error1:
	printf("error! incorrect response: %d (should be %d)\n", resp, expected);
	return 1;
error2:
	printf("error! incorrect response: should be timestamp\n");
	return 2;
}
