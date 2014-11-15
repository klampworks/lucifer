.section .data
frmt:
.ascii "Result = %d\n"

.section .text

.globl _start
_start:
	pushl $4
	call factorial
	addl $4, %esp

	pushl %eax
	pushl $frmt
	call printf

	movl $1, %eax
	int $0x80
