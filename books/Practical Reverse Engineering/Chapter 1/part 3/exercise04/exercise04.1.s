section .data
msg db "Hello World!",0x0
len equ $-msg

section .text
    global _start

_start:

    push msg
    call strlen
    mov ebx, eax
    mov eax, 1
    int 0x80


strlen:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]

    st:
        mov cl, BYTE [eax]
        cmp cl, 0
        jz en
        inc eax
        jmp st
    en:
        
    mov ebx, [ebp+8]
    sub eax, ebx

    mov esp, ebp
    pop ebp
    ret 4
