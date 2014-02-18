.include "../chapter6/linux.s"
.section .data

tmp_buffer:
.ascii "\0\0\0\0\0\0\0\0\0\0\0"

.section .text

.globl _start
_start:

	movl %esp, %ebp

	pushl $tmp_buffer
	pushl $824
	call integer2string
	addl $8, %esp

	pushl $tmp_buffer
	call count_chars
	addl $4, %esp

	movl %eax, %edx

	movl $4, %eax
	movl $1, %ebx
	movl $tmp_buffer, %ecx
	int $0x80

	pushl $1
	call write_newline

	movl $1, %eax
	movl $0, %ebx
	int $0x80

