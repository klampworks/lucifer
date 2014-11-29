INCLUDE c:\Irvine\Irvine32.inc

H = 08h

.code
main PROC
	mov eax, 10000h
	call DumpRegs

	exit
main ENDP
END main
