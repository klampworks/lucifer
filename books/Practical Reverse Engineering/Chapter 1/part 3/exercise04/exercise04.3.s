section .data
msg db "Hello World!",0
len equ $ - msg
newmsg db "Idiot"

section .text
    global _start

_start:

    push 5
    push newmsg
    push msg
    call memcpy

    call write_msg

    mov ebx, eax
    mov eax, 1
    int 0x80


memcpy:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov ebx, [ebp+0xc]
    mov ecx, [ebp+0x10]

    st:
        cmp ecx, 0
        jz en

        mov dl, BYTE [ebx]
        mov [eax], dl
        dec ecx
	inc ebx
	inc eax
        jmp st

    en:
        
    mov eax, [ebp+8]
    mov esp, ebp
    pop ebp
    ret 4

write_msg:
    push ebp
    mov ebp, esp

    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov esp, ebp
    pop ebp
    ret 0
    
