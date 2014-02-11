#Simple program that exits and returns a status code.

.section .data
.section .text
.globl _start

_start:

#Move literal value 1 into eax.
#1 is the system call for exit.
movl $1, %eax

#ebx will hold the exit status,
#we are using 66.
movl $66, %ebx

#Invoke a system call.
int $0x80
