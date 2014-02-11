#A function that takes an argument and squares it.

.section .data
.section .text

.globl _start

_start:
	pushl $6
	call square
	subl $4, %esp

	#assume return value is in %ebx
	movl $1, %eax
	int $0x80

.type sqaure, @function
square:
	pushl %ebp
	movl %esp, %ebp
	movl 8(%ebp), %ebx
	imull %ebx, %ebx

	movl %ebp, %esp
	popl %ebp
	ret
