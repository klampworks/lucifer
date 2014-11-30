INCLUDE c:\Irvine\Irvine32.INC

.data 
	var1 SBYTE -4,-2,3,1

.code
main PROC
	xor eax, eax
	call DumpRegs
	mov al, var1
	call DumpRegs
	mov ah, [var1+3]
	call DumpRegs
	exit
main ENDP
END main
