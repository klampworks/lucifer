.include "linux.s"
.include "record_def.s"

.section .text
.globl write_record

write_record:
pushl %ebp
movl %esp, %ebp

pushl %ebx
movl $SYS_WRITE, %eax
movl 12(%ebp), %ebx #First argument
movl 8(%ebp), %ecx
movl $RECORD_SIZE, %edx
int $0x80

popl %ebx

movl %ebp, %esp
popl %ebp
ret
