section .data
msg db "Hello World!",0x0a
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

    mov ebx, [ebp+8]

    st:
        mov ecx, [ebx]
        cmp ecx, 0
        jz en
        inc ebx
    en:
        
    mov eax, [ebp+8]
    sub eax, ebx

    mov esp, ebp
    pop ebp
    ret 4
