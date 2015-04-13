;2. Come up with at least two code sequences to set EIP to 0xAABBCCDD. 

SECTION  .data
SECTION  .text
GLOBAL _start
_start: 

    jmp 0AABBCCDDh
    ;push 0AABBCCDDh
    ;ret

    ; System call exit, ebx will be the exit code.
    mov eax, 1
    int 080h
