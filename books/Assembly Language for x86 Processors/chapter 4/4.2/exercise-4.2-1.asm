INCLUDE c:\Irvine\Irvine32.INC

.data 
	val2 WORD 8000h

.code
main PROC
	xor eax, eax
	inc val2
	mov ax, val2
	call DumpRegs
	exit
main ENDP
END main
