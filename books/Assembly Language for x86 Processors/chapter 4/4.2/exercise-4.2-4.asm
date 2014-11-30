INCLUDE c:\Irvine\Irvine32.INC

.data 
	val2 WORD 8000h

.code
main PROC
	xor eax, eax
	mov ax, val2
	add ax, 1
	call DumpRegs
	exit
main ENDP
END main
