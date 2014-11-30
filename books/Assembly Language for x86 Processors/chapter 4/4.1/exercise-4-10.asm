INCLUDE c:\Irvine\Irvine32.INC

.data 
	var1 SBYTE -4,-2,3,1
	var2 WORD 1000h,2000h,3000h,4000h
	var4 DWORD 1,2,3,4,5

.code
main PROC
	xor edx, edx
	call DumpRegs
	mov edx,var4
	call DumpRegs
	movzx edx,var2 
	call DumpRegs
	mov edx,[var4+4]
	call DumpRegs
	movsx edx,var1
	call DumpRegs
	exit
main ENDP
END main
