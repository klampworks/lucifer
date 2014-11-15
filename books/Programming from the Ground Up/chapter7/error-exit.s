.include "../chapter6/linux.s"
.globl error_exit
.type error_exit, @function

error_exit:
	pushl %ebp
	movl %esp, %ebp

	# Error code, first parameter.
	movl 8(%ebp), %ecx

	pushl %ecx
	call count_chars
	popl %ecx

	movl %eax, %edx
	movl $2, %ebx
	movl $4, %eax
	int $0x80

	movl 12(%ebp), %ecx

	pushl %ecx
	call count_chars
	popl %ecx

	movl %eax, %edx
	movl $2, %ebx
	movl $4, %eax
	int $0x80

	pushl $2
	call write_newline

	movl $1, %eax
	movl $1, %ebx
	int $0x80
