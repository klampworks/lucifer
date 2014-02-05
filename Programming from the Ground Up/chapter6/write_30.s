.include "linux.s"
.include "record_def.s"

.section .data
file_name:
.ascii "test.dat\0"

record:
.ascii "Fredrick\0"
.rept 31 #Padding
.byte 0
.endr
.ascii "Bartlett\0"
.rept 31
.byte 0
.endr
.ascii "4242 A Prairie\nTulsa, OK 55555\0"
.rept 209
.byte 0
.endr
.long 45

.section .text
.globl _start

_start:
movl %esp, %ebp
subl $4, %esp

#Open the output file.
movl $5, %eax
movl $file_name, %ebx
movl $0101, %ecx
movl $0666, %edx
int $0x80

#Store the file descriptor
movl %eax, -4(%ebp)

movl $30, %ebx
loop_begin:
	
	decl %ebx

	pushl -4(%ebp)
	pushl $record
	call write_record
	addl $8, %esp

	cmpl $0, %ebx
	jne loop_begin

movl $1, %eax
movl $0, %ebx
int $0x80
	
