.section .data
heap_begin:
.long 0

current_break:
.long 0

.equ HEADER_SIZE, 8
.equ HDR_AVAIL_OFFSET, 0
.equ HDR_SIZE_OFFSET, 4

.equ UNAVAILABLE, 0
.equ AVAILABLE, 1
.equ SYS_BRK, 45

.section .text

.globl allocate_init
.type allocate_init, @function

allocate_init:
	pushl %ebp
	movl %esp, %ebp

	#Call brk with 0 to find the last valid address.
	movl $45, %eax
	movl $0, %ebx
	int $0x80

	incl %eax
	movl %eax, current_break
	movl %eax, heap_begin

	movl %ebp, %esp
	popl %ebp
	ret

.globl allocate
.type allocate, @function

allocate:
	pushl %ebp
	movl %esp, %ebp

	#Arg, bytes to allocate.
	movl 8(%ebp), %ecx
	movl heap_begin, %eax
	movl current_break, %ebx

	alloc_loop_begin:
		cmpl %ebx, %eax
		je move_break

		movl HDR_SIZE_OFFSET(%eax), %edx
		cmpl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
		je next_location

		cmpl %edx, %ecx
		jle allocate_here

		next_location:
			addl $HEADER_SIZE, %eax
			addl %edx, %eax
			jmp alloc_loop_begin

		allocate_here:
			movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
			addl $HEADER_SIZE, %eax

			movl %ebp, %esp
			popl %ebp
			ret

	move_break:
		addl $HEADER_SIZE, %ebx
		addl %ecx, %ebx

		pushl %eax
		pushl %ecx
		pushl %ebx
		movl $45, %eax
		int $0x80

		cmpl $0, %eax
		je error

		popl %ebx
		popl %ecx
		popl %eax

		movl $UNAVAILABLE, HDR_AVAIL_OFFSET(%eax)
		movl %ecx, HDR_SIZE_OFFSET(%eax)

		addl $HEADER_SIZE, %eax
		movl %ebx, current_break

		movl %ebp, %esp
		popl %ebp
		ret

	error:
		movl $0, %eax
		movl %ebp, %esp
		popl %esp
		ret

.globl deallocate
.type deallocate, @function

deallocate:
	#This is 4 because we didn't set up a proper stack frame.
	movl 4(%ebp), %eax

	subl $HEADER_SIZE, %eax
	movl $AVAILABLE, HDR_AVAIL_OFFSET(%eax)
	ret


	

