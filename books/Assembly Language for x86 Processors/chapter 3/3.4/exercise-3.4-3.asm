INCLUDE c:\Irvine\Irvine32.INC

.data 
	val1 SBYTE ?

.code
main PROC
	xor eax, eax
	call DumpRegs
	exit
main ENDP
END main
