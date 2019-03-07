.syntax unified // syntax for thumb-2

.word 0x20000100 // at 0x00000000, store a word 0x20000100 to be the MSP initial address
.word _start // at 0x00000004, store a word _start

.global _start
.type _start, %function // _start is a function, in thumb-2 state, assembler will set LSB to 1
_start:
	b _start // branch to _start
