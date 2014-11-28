INCLUDE c:\Irvine\Irvine32.INC

.data 
	val1 BYTE "pink",0

.code
main PROC
	xor eax, eax
	call DumpRegs
	exit
main ENDP
END main
