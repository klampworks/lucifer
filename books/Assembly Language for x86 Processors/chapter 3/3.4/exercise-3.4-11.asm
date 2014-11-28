INCLUDE c:\Irvine\Irvine32.INC

.data 
	bArray BYTE 20 DUP(0)

.code
main PROC
	xor eax, eax
	call DumpRegs
	exit
main ENDP
END main
