#This program finds the highest number from a list.

# %edi -- Index for the list.
# %ebx -- Highest number found so far.
# %eax -- Current data item.

.section .data
data_items:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
data_items2:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
data_items3:
.long 3,67,34,223,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start
_start:

pushl $data_items
call maximum
subl $4, %esp

pushl $data_items2
call maximum
subl $4, %esp

pushl $data_items3
call maximum
subl $4, %esp

#%ebx holds the status code for exit, it already contains the largest number.
movl $1, %eax
int $0x80

.type maximum, @function
maximum:
	pushl %ebp
	movl %esp, %ebp
	movl 8(%ebp), %esi

	#Move 0 into $edi out Index.
	movl $0, %edi

	#Load the first number into eax(?)
	movl (%esi, %edi, 4), %eax

	#First item is bigger than or equal to 0 so it is the biggest so far.
	movl %eax, %ebx

	#label for the start of the loop.
	start_loop:

	#If the current item is 0 this means we've hit the end of the list.
	cmpl $0, %eax
	je loop_exit

	#Increments %edi.
	incl %edi

	movl (%esi, %edi, 4), %eax

	#Jump to the start of the loop if this value is not bigger then our
	#biggest so far.
	cmpl %ebx, %eax
	jle start_loop

	movl %eax, %ebx
	jmp start_loop

	loop_exit:
	movl %esp, %ebp
	popl %ebp
	ret



