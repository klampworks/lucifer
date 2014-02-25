/*
 * Exercise 12: Write an Interrupt-Driven Input Routine on Your System
 *
 * Interrupt-driven input is a breeze on MS-DOS. The system provides such 
 * spartan services that it is easy to brush them aside and pluck characters 
 * direct from the I/O port. Under SVr4, you will need to do the following:
 *
 * Create a signal handler routine that will be invoked to read a character 
 * when the OS sends a signal that one is ready. The signal to catch is SIGPOLL.
 * The signal handler should read a character, and also reset itself as the
 * handler for this signal each time it is invoked. Have it echo the character 
 * it just read, and quit if it was a 'q'. Note: this is just for teaching 
 * purposes. In practice the results are usually undefined if you call any 
 * standard library function from within a signal handler.
 * Make an ioctl() call to inform the OS that you require a signal to be sent
 * every time input comes in on the standard input. Look at the manpages for
 * streamio. You will need a command of I_SETSIG and an argument of S_RDNORM.
 * Once the signal handler has been set up, the program can do something else
 * until input comes in. Have it increment a counter. Print the value of the
 * counter in the handler routine.
 * Every time a character is sent from the keyboard, the SIGPOLL signal will 
 * be sent to the process. The signal handler will read the character, and 
 * reset itself to be the handler.
 *
 */

#include <signal.h>
#include <fcntl.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>

void handler(int i)
{
	char in[1];
	size_t r = read(0, in, 1);

	if (r > 0) {
		if (in[0] == 'q')
			exit(0);

		write(1, in, 1);
	}
}

int main()
{
	struct sigaction sa;
	memset(&sa, 0, sizeof sa);
	sa.sa_handler = handler;

	assert(sigaction(SIGIO, &sa, NULL) >= 0);
	assert(fcntl(0, F_SETOWN, getpid()) >= 0);
	assert(fcntl(0, F_SETFL, O_NONBLOCK|O_ASYNC) >= 0);

	for(;;);
}

