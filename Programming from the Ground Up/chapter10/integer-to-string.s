.globl integer2string
.type integer2string, @function

integer2string:
	pushl %ebp
	movl %esp, %ebp
	movl $0, %ecx

	movl 8(%ebp), %eax
	movl $10, %edi

	conversion_loop:
		movl $0, %edx
		divl %edi
		addl $'0', %edx

		pushl %edx
		incl %ecx

		cmpl $0m %eax
		je end_conversion_loop

		jmp conversion_loop

	end_conversion_loop:
		movl 12(%ebp), %edx

	copy_reversing_loop:
		popl %eax
		movb %al, (%edx)

		decl %ecx
		incl %edx

		cmpl $0, %ecx
		je end_copy_reversing_loop
		jmp copy_reversing_loop

	end_copy_reversing_loop:
		movb $0, (%edx)

		movl %ebp, %esp
		popl %ebp
		ret

