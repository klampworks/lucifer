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

    mov ebx, eax
    mov eax, 1
    int 0x80

strcmp:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov ebx, [ebp+0xc]

    st:
   	cmp al, bl 

    eq:

    lt:

    gt:


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
    
