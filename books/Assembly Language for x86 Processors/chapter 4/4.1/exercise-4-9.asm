INCLUDE c:\Irvine\Irvine32.INC

.data 
	var2 WORD 1000h, 2000h, 3000h, 4000h
	var3 SWORD -16, -42

.code
main PROC
	xor eax, eax
	call DumpRegs
	mov ax, var2
	call DumpRegs
	mov ax, [var2+4]
	call DumpRegs
	mov ax, var3
	call DumpRegs
	mov ax, [var3-2]
	call DumpRegs
	exit
main ENDP
END main
