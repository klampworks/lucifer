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
