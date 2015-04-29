section .data
msg db "Hello World!",0xa,0
len equ $ - msg
fill db "k"

section .text
    global _start

_start:

    call write_msg

    push 6
    push fill
    push msg
    call memset

    call write_msg

    mov ebx, eax
    mov eax, 1
    int 0x80


memset:
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
    
