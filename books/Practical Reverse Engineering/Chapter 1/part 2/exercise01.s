; 1. Given what you learned about CALL and RET, explain how you would read the
; value of EIP? Why can't you just do MOV EAX, EIP? 

SECTION  .data
SECTION  .text
GLOBAL _start
_start: 
    ; error: symbol `eip' undefined
    ;mov eax, eip 

    call test
    test:

    ; After call the base pointer contains the return address.
    ; But since we havn't really jumped anywehre this should be equal to eip.
    pop ebx

    ; System call exit, ebx will be the exit code.
    mov eax, 1
    int 080h
