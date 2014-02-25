/*
 * Exercise 9: Catching Signals on the PC
 *
 * Signal handling functions are a part of ANSI C now, and they apply equally 
 * to PCs as well as UNIX. For example, a PC programmer can use the signal() 
 * function to catch Ctrl-Break and prevent a user breaking out of the program.
 * Write a signal handler to catch the INT 1B (Ctrl-Break) signal on a PC. 
 * Have it print a user-friendly message, but not exit.
 * If you use UNIX, write a signal handler, so that on receiving a control-C 
 * (control-C is passed to a UNIX process as a SIGINT signal) the program 
 * restarts, rather than quits. The typedefs that will help you define a 
 * signal handler are shown in Chapter 3 on declarations.
 * The header file <signal.h> needs to be included in any source file that 
 * uses signals.
 *
 */

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <setjmp.h>

static jmp_buf buf;

static void handler(int signo)
{
	printf("Caught sigint, helpfully not stopping.\n");
	longjmp(buf, 1);
}

int main()
{
	assert(signal(SIGINT, handler) != SIG_ERR);

	setjmp(buf);

	int counter = 0;
	for (;;) {
		
		printf("Counting %d\n", ++counter);
		sleep(1);
	}
}
