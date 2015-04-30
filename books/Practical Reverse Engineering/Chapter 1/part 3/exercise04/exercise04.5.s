section .data
str1 db "Hello",0xa,0
len1 equ $ - str1
str2 db "hello",0xa,0
len2 equ $ - str2

section .text
    global _start

_start:

    push len1
    push str1
    call write_msg

    push len2
    push str2
    call write_msg

    push str1
    push str2
    call strcmp

    mov ebx, eax
    mov eax, 1
    int 0x80

strcmp:
    push ebp
    mov ebp, esp

    mov esi, [ebp+8]
    mov edi, [ebp+0xc]

    st:
    	mov cl, BYTE [esi]
    	mov dl, BYTE [edi]

	cmp cl, 0
	setz al
	cmp dl, 0
	setz ah

	and al, ah
	je eq

	cmp al, 0
	je lt

	cmp ah, 0
	je gt

	cmp cl, dl
	jl lt 
	jg gt

	inc esi
	inc edi
	jmp st
    lt:
	mov eax, -1
	jmp en
    gt:
    	mov eax, 1
    eq:
    	mov eax, 0
    en:

    mov esp, ebp
    pop ebp
    ret 8

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
    
