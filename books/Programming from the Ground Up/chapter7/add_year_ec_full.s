.include "../chapter6/linux.s"
.include "../chapter6/record_def.s"

.section .data
input_file_name:
.ascii "test.dat\0"

output_file_name:
.ascii "testout.dat\0"

.section .bss
.lcomm record_buffer, RECORD_SIZE

.section .text
.globl _start

_start:
	movl %esp, %ebp
	subl $8, %esp

	movl $5, %eax
	movl $input_file_name, %ebx
	movl $0, %ecx
	movl $0666, %edx
	int $0x80

	movl %eax, -4(%ebp)

	cmpl $0, %eax
	je c1

	.section .data
	no_open_file_code:
	.ascii "0001: \0"
	no_open_file_msg:
	.ascii "Can't open input file\0"

	.section .text
	pushl $no_open_file_msg
	pushl $no_open_file_code
	call error_exit

	c1:
	movl $5, %eax
	movl $output_file_name, %ebx
	movl $0101, %ecx
	movl $0666, %edx
	int $0x80

	movl %eax, -8(%ebp)

	cmpl $0, %eax
	je c2

	.section .data
	no_out_open_file_code:
	.ascii "0002: \0"
	no__out_open_file_msg:
	.ascii "Can't open output file\0"

	.section .text
	pushl $no__out_open_file_msg
	pushl $no__out_open_file_code
	call error_exit

	c2:
	loop_begin:
		pushl -4(%ebp)
		pushl $record_buffer
		call read_record
		addl $8, %esp

		cmpl $RECORD_SIZE,%eax
		jne loop_end

		incl record_buffer + RECORD_AGE

		pushl -8(%ebp)
		pushl $record_buffer
		call write_record
		addl $8, %esp

		jmp loop_begin

	loop_end:
		movl $1, %eax
		movl $0, %ebx
		int $0x80

