INCLUDE c:\Irvine\Irvine32.INC

.code
main PROC
	xor eax, eax
	mov al, -127
	sub al, -1
	call DumpRegs
	exit
main ENDP
END main
