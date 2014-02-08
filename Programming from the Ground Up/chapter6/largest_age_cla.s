.include "linux.s"
.include "record_def.s"

.section .data

.section .bss
.lcomm record_buffer, RECORD_SIZE

.section .text
.globl _start

_start:
	movl %esp, %ebp
	subl $8, %esp

	movl $5, %eax
	movl 8(%ebp), %ebx
	movl $0, %ecx
	movl $0666, %edx
	int $0x80

	movl %eax, -4(%ebp)
	movl $0, -8(%ebp)

	pushl -4(%ebp)
	pushl $record_buffer
	call read_record
	addl $8, %esp

	cmpl $RECORD_SIZE, %eax
	jne finished_reading
	
	movl $RECORD_AGE + record_buffer, -8(%ebp)

	read_loop:
		pushl -4(%ebp)
		pushl $record_buffer
		call read_record
		addl $8, %esp

		cmpl $RECORD_SIZE, %eax
		jne finished_reading

		movl $RECORD_AGE + record_buffer, %eax
		cmpl %eax, -8(%ebp)
		jle read_loop

		movl %eax, -8(%ebp)
		jmp read_loop

	finished_reading:
		movl $1, %eax
		movl -8(%ebp), %ebx
		int $0x80

			
