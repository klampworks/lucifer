INCLUDE c:\Irvine\Irvine32.INC

.data 
	val3 DWORD 0ffffh

.code
main PROC
	xor eax, eax
	sub eax, val3
	call DumpRegs
	exit
main ENDP
END main
