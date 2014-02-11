#Recursive factorial

.section .data

.section .text

.globl _start
.globl factorial

_start:

#Argument for factrial
pushl $4
call factorial

#Get rid of the argument we pushed.
addl $4, %esp

#Factorial returns the result in eax but we want it in
#ebx for the exit system call.
movl %eax, %ebx

movl $1, %eax
int $0x80


factorial:
pushl %ebp
movl %esp, %ebp

#Move argument into eax
movl 8(%ebp), %eax

#Factorial stops at 1, return.
cmpl $1, %eax
je end_factorial

decl %eax
pushl %eax
call factorial

#eax will now hold the return value of the call above
#Move the original argument into %ebx
movl 8(%ebp), %ebx

imull %ebx, %eax

end_factorial:
movl %ebp, %esp
popl %ebp
ret
