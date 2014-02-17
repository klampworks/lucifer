.section .data
.section .text

.globl _start
_start:
	pushl $4
	call factorial
	addl $4, %esp

	#Factorial returns the result in eax but we want it in
	#ebx for the exit system call.
	movl %eax, %ebx

	movl $1, %eax
	int $0x80
