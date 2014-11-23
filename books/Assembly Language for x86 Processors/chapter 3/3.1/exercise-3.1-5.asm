TITLE Exercise 4

INCLUDE c:\Irvine\Irvine32.INC

.code
main PROC
	mov eax, 3F800000r
	call DumpRegs
	exit
main ENDP
END main
