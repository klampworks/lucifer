#This program finds the highest number from a list.

# %edi -- Index for the list.
# %ebx -- Highest number found so far.
# %eax -- Current data item.

.section .data
data_items:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66

.section .text

.globl _start
_start:

#Magic number 52 (length of list * wordsize) because we havn't been
#taught how to multiply yet!
movl $48, %ecx
addl $data_items, %ecx

#Move the starting address of data_items into $edi.
movl $data_items, %edi

#Load the first number into eax(?)
movl (%edi), %eax

#First item is bigger than or equal to 0 so it is the biggest so far.
movl %eax, %ebx

#label for the start of the loop.
start_loop:

addl $4, %edi

#If the current item is 0 this means we've hit the end of the list.
cmpl %ecx, %edi
je loop_exit

movl (%edi), %eax

#Jump to the start of the loop if this value is not bigger then our
#biggest so far.
cmpl %ebx, %eax
jle start_loop

movl %eax, %ebx
jmp start_loop

loop_exit:
#%ebx holds the status code for exit, it already contains the largest number.
movl $1, %eax
int $0x80
