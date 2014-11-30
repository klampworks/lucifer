INCLUDE c:\Irvine\Irvine32.INC

.data 
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0ffffh
	val4 WORD 7fffh

.code
main PROC
	xor eax, eax
	xor ebx, ebx
	mov ax, val2
	neg ax
	add ax, bx
	sub ax, val4
	call DumpRegs
	exit
main ENDP
END main
