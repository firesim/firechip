#include <stdio.h>
#include <inttypes.h>
#include <stdint.h>
#include "rocc.h"
#define XCUSTOM_ACC 0
int main( int argc, const char* argv[] )
{

	volatile uint64_t rd = 0 ;
	volatile unsigned int rs1 = 1;
	volatile unsigned int rs2 = 2;
	volatile unsigned int rd1 = 0;

	//printf("Starting Test 1");
  asm volatile ("fence");
  // Eqaul rd_ to register x10
  
  // in micro register uint64_t rd_ asm ("x" # rd_n)
  // # in macro returns rd_n as string 
 register int rd_  asm ("x10");
 register int rs1_ asm ("x11") = (int)rs1;
 register int rs2_ asm ("x12") = (int)rs2;


	//              opcode rd rs1          rs2          funct   
	//  Write: register set to 0x1000, rd = 0x1000
	//asm volatile ("custom0 %[rd], %[rs1], %[rs2], 0" : [rd]"=r"(rd) :  [rs1]"r"(rs1), [rs2]"r"(rs2));
  //ROCC_INSTRUCTION(XCUSTOM_ACC, rd, rs1, rs2, 0)
  
	printf("rd after custom0 is %d\n", rd);
	asm volatile ("add %[rd], %[rs1], %[rs2]" : [rd]"=r"(rd1) :  [rs1]"r"(rs1), [rs2]"r"(rs2));
	printf("rd1 after add is %d\n", rd1);

	asm volatile ("fence");

	if (rd == rd1){
		printf("Success!\n");
	}
	else{ 
		printf("Failed!\n");
	}

	//asm volatile ("custom0 %[rd], %[rs1], %[rs2], 0" : [rd]"=r"(rd) :  [rs1]"r"(rd), [rs2]"r"(rs2));
  //ROCC_INSTRUCTION(XCUSTOM_ACC, rd, rd, rs2, 0)
	printf("rd after custom0 is %d\n", rd);
	asm volatile ("add %[rd], %[rs1], %[rs2]" : [rd]"=r"(rd1) :  [rs1]"r"(rd1), [rs2]"r"(rs2));
	printf("rd1 after add is %d\n", rd1);
  printf( STR(CUSTOMX(X, rd_n, rs1_n, rs2_n, funct)));

	if (rd == rd1){
		printf("Success!\n");
		return 0;
	}
	else{ 
		printf("Failed!\n");
	}

	return 1;
}
