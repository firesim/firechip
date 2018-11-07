#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "mmio.h"

#define N 4
#define INPUTSTREAM_BASE 0x10017000L
#define INPUTSTREAM_ADDR     (INPUTSTREAM_BASE + 0x00)
#define INPUTSTREAM_LEN      (INPUTSTREAM_BASE + 0x08)
#define INPUTSTREAM_RUNNING  (INPUTSTREAM_BASE + 0x10)
#define INPUTSTREAM_COMPLETE (INPUTSTREAM_BASE + 0x18)

uint64_t values[N];

int main(void)
{
        reg_write64(INPUTSTREAM_ADDR, (uint64_t) values);
        reg_write64(INPUTSTREAM_LEN, N * sizeof(uint64_t));
        asm volatile ("fence");
        reg_write64(INPUTSTREAM_RUNNING, 1);

        while (reg_read64(INPUTSTREAM_COMPLETE) == 0) {}
        reg_write64(INPUTSTREAM_COMPLETE, 0);

        for (int i = 0; i < N; i++)
                printf("%016lx\n", values[i]);

        return 0;
}
