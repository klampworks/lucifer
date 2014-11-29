INCLUDE c:\Irvine\Irvine32.inc

SecondsInDay = (60*60*24)

.code
main PROC
	mov eax, SecondsInDay
	call DumpRegs

	exit
main ENDP
END main
