INCLUDE c:\Irvine\Irvine32.inc

.data
	myArray WORD 20 DUP(?)
	ArraySize = ($ - myArray)

SetupESI TEXTEQU <mov esi,OFFSET myArray>

.code
main PROC
	SetupESI
	call DumpRegs

	exit
main ENDP
END main
