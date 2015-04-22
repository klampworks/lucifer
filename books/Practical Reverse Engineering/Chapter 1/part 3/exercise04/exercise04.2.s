section .data
msg db "Hello World!",0x0
seek db "o"

section .text
    global _start

_start:

    push seek
    push msg
    call strchr
    mov ebx, eax
    mov eax, 1
    int 0x80


strchr:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov ecx, [ebp+0xc]
    xor ebx, ebx
    mov bl, BYTE [ecx]

    st:
        mov cl, BYTE [eax]

        cmp cl, bl
        jz found

        cmp cl, 0
        jz not_found

        inc eax
        jmp st

    not_found:
        mov eax, 0

    found:
        
    mov esp, ebp
    pop ebp
    ret 4
