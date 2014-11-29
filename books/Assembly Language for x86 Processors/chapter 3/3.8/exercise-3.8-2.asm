

INCLUDE c:\Irvine\Irvine32.inc

.data
	a BYTE 1
	b SBYTE -1
	cc WORD 1
	d SWORD -1
	e DWORD 1
	f SDWORD -1
	g FWORD 1
	h QWORD -1
	i TBYTE 1
	j REAL4 -1.0
	k REAL8 -1.0
	l REAL10 -1.0

.code
main:
	call DumpRegs
	exit
end main
