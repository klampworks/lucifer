.include "linux.s"
.include "record_def.s"

.section .data
file_name:
.ascii "test.dat\0"

.section .bss
.lcomm record_buffer, RECORD_SIZE

.section .text
.globl _start

_start:
movl %esp, %ebp
subl $8, %esp

movl $3, %eax
movl $file_name, %ebx
movl $0, %ecx 	#Readonly
movl $0666, %edx
int $0x80

movl %eax, -4(%ebp)
movl $STDOUT, -8(%ebp)

record_read_loop:
	pushl -4(%ebp)
	pushl $record_buffer
	call read_record
	addl $8, %esp

	cmpl $RECORD_SIZE, %eax
	jne finished_reading

	pushl $RECORD_FIRSTNAME + record_buffer
	call count_chars
	addl $4, %esp

	movl %eax, %edx
	movl -8(%ebp), %ebx
	movl $4, %eax
	movl $RECORD_FIRSTNAME + record_buffer, %ecx
	int $0x80

	pushl -8(%ebp)
	call write_newline
	addl $4, %ebp

	jmp record_read_loop

finished_reading:
	movl $0, %eax
	movl $0, %ebx
	int $0x80
