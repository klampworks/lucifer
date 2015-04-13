; 4. In all of the calling conventions explained, the return value is 
; stored in a 32-bit
; register (EAX). What happens when the return value does not fit in a 32-bit
; register? Write a program to experiment and evaluate your answer. Does the
; mechanism change from compiler to compiler? 
;

SECTION  .data
SECTION  .text
GLOBAL _start
_start: 

push 1
push 2
call addme

mov ebx, eax
mov eax, 1
int 80h

addme:
    push ebp
    mov ebp, esp

    movsx eax, WORD [ebp + 8]
    movsx ecx, WORD [ebp + 0Ch]
    add eax, ecx

    mov esp, ebp
    pop ebp
    retn


