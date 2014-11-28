INCLUDE c:\Irvine\Irvine32.INC

.data 
	val1 SWORD ?

.code
main PROC
	xor eax, eax
	add ax,val1
	call DumpRegs
	exit
main ENDP
END main
