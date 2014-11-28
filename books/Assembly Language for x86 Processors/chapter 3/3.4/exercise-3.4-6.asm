INCLUDE c:\Irvine\Irvine32.INC

.data 
	val1 SDWORD -2147483648

.code
main PROC
	xor eax, eax
	mov eax, val1
	call DumpRegs
	exit
main ENDP
END main
