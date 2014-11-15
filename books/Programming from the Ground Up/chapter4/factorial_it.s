#Iterative factorial

.section .data

.section .text

.globl _start
.globl factorial

_start:

#Argument for factorial
pushl $4
call factorial

#Get rid of the argument we pushed.
addl $4, %esp

movl $1, %eax
int $0x80


factorial:
pushl %ebp
movl %esp, %ebp

#Move argument into eax
movl 8(%ebp), %eax
movl %eax, %ebx

start_loop:
	cmpl $1, %eax
	je end_factorial

	decl %eax
	imull %eax, %ebx
	jmp start_loop

end_factorial:
movl %ebp, %esp
popl %ebp
ret
