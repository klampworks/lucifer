INCLUDE c:\Irvine\Irvine32.inc

.data
	myArray WORD 20 DUP(?)
	ArraySize = ($ - myArray)


.code
main PROC
	mov eax, ArraySize
	call DumpRegs

	exit
main ENDP
END main
