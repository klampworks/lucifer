;3. In the example function, addme, what would happen if the stack pointer were
; not properly restored before executing RET?

; Since only the base pointer is pushed onto the stack during this function,
; the stack pointer fortitously incremenets back to the value it should be.
; Another way of looking at it is, the base pointer and stack pointer are
; the same value in a function without local variables so the 
; `mov esp, ebp` is a nop in this case.
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


