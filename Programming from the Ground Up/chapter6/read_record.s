.include "record_def.s"
.include "linux.s"

.section .text
.globl read_record
.type read_record, @function

read_record:
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	movl 12(%ebp), %ebx
	movl 8(%ebp), %ecx
	movl $RECORD_SIZE, %edx
	movl $3, %eax
	int $0x80

	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret
