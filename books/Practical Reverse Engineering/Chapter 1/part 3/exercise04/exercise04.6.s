section .data
str1 db "hello",0xa,0
len1 equ $ - str1

section .text
    global _start

_start:

    push len1
    push str1
    call write_msg

    push '@'
    push str1
    call strset

    push len1
    push str1
    call write_msg

    mov ebx, eax
    mov eax, 1
    int 0x80

strset:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov bl, [ebp+0xc]

    st:
    	mov bh, BYTE [eax]

	cmp bh, 0
	je en

	mov [eax], bl
	inc eax
	jmp st

    en:

    mov esp, ebp
    pop ebp
    ret 5

write_msg:
    push ebp
    mov ebp, esp

    mov edx, [ebp+0xc]
    mov ecx, [ebp+8]
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov esp, ebp
    pop ebp
    ret 8
    
