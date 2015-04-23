section .data
msg db "Hello World!",0x0a
len equ $-msg

section .text
    global _start

_start:

    push msg
    call strlen
    mov ebx, 0
    mov eax, 1
    int 0x80


strlen:
    push ebp
    mov ebp, esp

    mov ebx, 1
    mov ecx, [ebp+8]
    mov edx, len
    mov eax, 4
    int 0x80

    mov esp, ebp
    pop ebp
    ret 4
