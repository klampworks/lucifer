.section .data
message:
.ascii "Hello world.\0" 

file:
.ascii "output\0"

.section .bss
.section .text
.globl _start

_start:

movl $5, %eax
movl $file, %ebx
movl $03101, %ecx
movl $0666, %edx
int $0x80

movl %eax, %ebx
movl $4, %eax
movl $message, %ecx
movl $13, %edx

int $0x80

movl $1, %eax
movl $0, %ebx
int $0x80
