
INCLUDE c:\Irvine\Irvine32.inc

.data
	a DWORD 999h
	b DWORD 222h
	d DWORD 111h

.code
	MAIN PROC
	mov eax, a
	sub eax, b
	sub eax, d

	call DumpRegs
	exit
	MAIN ENDP
end main
