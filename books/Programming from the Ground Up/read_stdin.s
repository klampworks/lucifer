.section .data
.section .bss
.lcomm BUFFER, 1
.section .text

.globl _start
_start:

	#Do read
	movl $3, %eax

	#From stdin
	movl $0, %ebx

	# Into this location
	movl $BUFFER, %ecx

	# This many bytes
	movl $1, %edx

	int $0x80

	movl %eax, %ebx
	movl $0, %eax
	int $0x80




