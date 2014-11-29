INCLUDE c:\Irvine\Irvine32.inc

Sample TEXTEQU <"Hello, world\n",0>

.data
	myString BYTE Sample
.code
main PROC
	call DumpRegs
	exit
main ENDP
END main
