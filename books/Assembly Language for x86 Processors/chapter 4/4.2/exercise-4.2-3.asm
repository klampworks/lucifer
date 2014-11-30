INCLUDE c:\Irvine\Irvine32.INC

.data 
	val2 WORD 8000h
	val4 WORD 7fffh

.code
main PROC
	xor eax, eax
	mov ax, val2
	sub ax, val4
	call DumpRegs
	exit
main ENDP
END main
