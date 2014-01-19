#Read an input file, convert the characters to upper care and write to output file.

.section .data
.equ SYS_OPEN, 5
.equ SYS_WRITE, 4
.equ SYS_READ, 3
.equ SYS_CLOSE, 2
.equ SYS_EXIT, 1

.equ O_RDONLY, 0
#.equ O_CREAT_WRONLY_TRUNC, 03101
.equ O_CREAT_WRONLY_TRUNC, 1
.equ STDOUT, 1
.equ STDERR, 2

.equ ARGC, 2

.section .bss
.equ BUFFER_SIZE, 500
.lcomm BUFFER_DATA, BUFFER_SIZE

.section .text

.globl _start

_start:

	read_loop_begin:
		movl $3, %eax
		movl $0, %ebx
		movl $BUFFER_DATA, %ecx
		movl $BUFFER_SIZE, %edx
		int $0x80

	cmpl $0, %eax
	jle end_loop

	continue_read_loop:
		pushl $BUFFER_DATA
		pushl %eax
		call convert_to_upper
		popl %eax
		addl $4, %esp

		movl %eax, %edx
		movl $0, %eax
		int $0x80

		movl $4, %eax
		movl $1, %ebx
		movl $BUFFER_DATA, %ecx
		int $0x80

	jmp read_loop_begin

	end_loop:
		movl $SYS_CLOSE, %eax
		movl -8(%ebp), %ebx
		int $0x80

		movl $SYS_CLOSE, %eax
		movl -4(%ebp), %ebx
		int $0x80

		movl $SYS_EXIT, %eax
		movl $0, %ebx
		int $0x80


.equ a, 'a'
.equ z, 'z'
.equ conv, 'A' - 'a'

convert_to_upper:
	pushl %ebp
	movl %esp, %ebp

	movl 12(%ebp), %eax
	movl 8(%ebp), %ebx
	movl $0, %edi

	cmpl $0, %ebx
	je end_convert_loop

	convert_loop:
		movb (%eax, %edi, 1), %cl
		cmpb $a, %cl
		jl next_byte
		cmpb $z, %cl
		jg next_byte

		addb $conv, %cl
		movb %cl, (%eax, %edi, 1)

		next_byte:
			incl %edi
			cmpl %edi, %ebx
			jne convert_loop

	end_convert_loop:
		movl %ebp, %esp
		popl %ebp
		ret
	
