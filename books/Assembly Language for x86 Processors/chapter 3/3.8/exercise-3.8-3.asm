INCLUDE c:\Irvine\Irvine32.inc

sun = 0
mon = 1
tue = 2
wed = 3
thu = 4
fri = 5
sat = 6

.data
	week DWORD sun, mon, tue, wed, thu, fri, sat

.code
main:
	call DumpRegs
	exit
end main
