.section .data
.section .text

.globl factorial
.type factorial,@function

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
