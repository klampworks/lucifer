INCLUDE c:\Irvine\Irvine32.INC

.data 
	wArray DWORD 3 DUP(?)

.code
main PROC
	xor eax, eax
	call DumpRegs
	exit
main ENDP
END main
