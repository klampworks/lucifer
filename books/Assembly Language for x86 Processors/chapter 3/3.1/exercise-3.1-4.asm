TITLE Exercise 4

INCLUDE c:\Irvine\Irvine32.INC

.code
main PROC
	mov eax, (10 MOD 3)
	call DumpRegs
	exit
main ENDP
END main
