INCLUDE c:\Irvine\Irvine32.inc

string TExTEQU <"Hello, world\n",0>

.data
	string_var BYTE string

.code

main:
	xor eax, eax
end main
