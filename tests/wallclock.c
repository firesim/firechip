#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "mmio.h"

#define WALLCLK_BASE	0x10017000
#define WALLCLK_REQ	WALLCLK_BASE
#define WALLCLK_RESP	WALLCLK_BASE+4

int main(void)
{
	int resp;
	int i;
	printf("hell yeah\n");
	reg_write32(WALLCLK_REQ, 1);
	printf("wrote request\n");
	resp = reg_read32(WALLCLK_RESP);
	printf("resp: %d\n", resp);

	/*for(i=0; i<1000; i++)
	{
		resp = reg_read32(WALLCLK_RESP);
	}*/
	reg_write32(WALLCLK_REQ, 1);
	printf("wrote request\n");
	resp = reg_read32(WALLCLK_RESP);
	printf("resp: %d\n", resp);


	/*for(i=0; i<1000; i++)
	{
		resp = reg_read32(WALLCLK_RESP);
	}*/
	reg_write32(WALLCLK_REQ, 1);
	printf("wrote request\n");
	resp = reg_read32(WALLCLK_RESP);
	printf("resp: %d\n", resp);
	
}
