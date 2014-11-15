/*
 * Exercise 05: The Stack Frame
 *
 * 1. Manually trace the flow of control in the above program, and fill in 
 * the stack frames at each call statement. For each return address, use the 
 * line number to which it will go back.
 * 
 * 2. Compile the program for real, and run it under the debugger. Look at the 
 * additions to the stack when a function has been called. Compare with your 
 * desk checked results to work out exactly what a stack frame looks like on 
 * your system.
 *
 */

#include <stdio.h>

void a (int i) {

	if (i>0)
		a(--i);
	else
		printf("i has reached zero ");

	return;
}

int main() {
	a(1);
}

