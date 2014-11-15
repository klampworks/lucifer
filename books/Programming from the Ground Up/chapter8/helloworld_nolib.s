.include "../chapter6/linux.s"
.section .data
helloworld:
.ascii "hello world\n"
helloworld_end:

.equ helloworld_len, helloworld_end - helloworld

.section .text
.globl _start

_start:
	movl $1, %ebx
	movl $helloworld, %ecx
	movl $helloworld_len, %edx
	movl $4, %eax
	int $0x80

	movl $0, %ebx
	movl $1, %eax
	int $0x80
