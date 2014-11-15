/*
 * Exercise 10: Test Crash Your Software
 *
 * Complete the test program fragments above.
 * Try running them to see how these bugs are reported by the OS.
 * Extra Credit: Write signal handlers to catch the bus error and 
 * segmentationHave them print a more user-friendly message, and exit.
 * Rerun your program.
 *
 */

#include <stdio.h>

void bus_error()
{
	union { 
		char a[10];
		int i;
	} u;

	int *p = (int*)&(u.a[1]);
	*p = 17;
}

void segfault()
{
	int *p = 0;
	*p = 17;
}

int main()
{
	bus_error();

}
