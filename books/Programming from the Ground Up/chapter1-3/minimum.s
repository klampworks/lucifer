#This program finds the smallest number from a list.

# %edi -- Index for the list.
# %ebx -- Highest number found so far.
# %eax -- Current data item.

.section .data
data_items:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start
_start:

#Move 0 into $edi out Index.
movl $0, %edi

#Load the first number into eax(?)
movl data_items(, %edi, 4), %eax

#First item is the lowest so far.
movl %eax, %ebx

#If the first value is zero the list is empty, lets get out of here.
cmpl $0, %eax
je loop_exit

#label for the start of the loop.
start_loop:

	#Increment %edi.
	incl %edi

	movl data_items(, %edi, 4), %eax

	#If the current item is 0 this means we've hit the end of the list.
	cmpl $0, %eax
	je loop_exit


	#Jump to the start of the loop if this value is not bigger then our
	#biggest so far.
	cmpl %eax, %ebx
	jle start_loop

	movl %eax, %ebx
	jmp start_loop

loop_exit:
#%ebx holds the status code for exit, it already contains the largest number.
movl $1, %eax
int $0x80
