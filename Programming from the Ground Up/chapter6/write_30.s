.include "linux.s"
.include "record_def.s"

.section .data
file_name:
.ascii "test.dat\0"

record:
.ascii "Fredrick\0"
.rept 31 #Padding
.byte 0
.endr
.ascii "Bartlett\0"
.rept 31
.byte 0
.endr
.ascii "4242 A Prairie\nTulsa, OK 55555\0"
.rept 209
.byte 0
.endr
.long 45

.section .text
.globl _start

start:

