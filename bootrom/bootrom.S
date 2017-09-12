#define DRAM_BASE 0x80000000

.section .text.start, "ax", @progbits
.globl _start
_start:
  csrr a0, mhartid
  li a1, 0x2000000 // base address of clint
  bnez a0, boot_core

  // interrupt the other cores
  la a2, _ncores
  lw a2, 0(a2)
  addi a2, a2, -1 // number of cores to interrupt
  addi a3, a1, 4 // first MSIP address
  li a4, 1 // value to store
write_msip:
  beqz a2, boot_core
  sw a4, 0(a3)
  addi a3, a3, 4
  addi a2, a2, -1
  j write_msip

boot_core:
  sll a0, a0, 2 // offset for hart msip
  add a0, a0, a1
  sw zero, 0(a0) // clear the interrupt
  li a0, DRAM_BASE // program reset vector
  csrw mepc, a0 // return from interrupt to start of user program
  csrr a0, mhartid // hartid for next level bootloader
  la a1, _dtb // dtb address for next level bootloader
  mret

.section .text.hang, "ax", @progbits
.globl _hang
_hang:
  // This boot ROM doesn't know about any boot devices, so it just spins,
  // waiting for the serial interface to load the program and interrupt it
  la a0, _start
  csrw mtvec, a0
  li a0, 8 // MIE or MSIP bit
  csrw mie, a0 // set only MSIP in mie CSR
  csrw mideleg, zero // no delegation
  csrs mstatus, a0 // set MIE in mstatus CSR
wfi_loop:
  wfi
  j wfi_loop

.section .data
_ncores:
  .word 0x0eadbe3f // this gets patched by rocket-chip generator

_dtb:
