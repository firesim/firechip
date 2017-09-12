SECTIONS
{
    ROM_BASE = 0x10000; /* ... but actually position independent */

    . = ROM_BASE;
    .text.start : { *(.text.start) }
    . = ROM_BASE + 0x80;
    .text.hang : { *(.text.hang) }
    . = ROM_BASE + 0x100;
    .data : { *(.data) }
}
