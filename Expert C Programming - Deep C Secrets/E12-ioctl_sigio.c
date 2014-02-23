#include <signal.h>
#include <fcntl.h>
#include <assert.h>
#include <string.h>
void handler(int i)
{
	char in[2];
	size_t r = read(0, in, 1);

	if (r > 0) {
		in[1] = '\0';
		write(1, in, 2);
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

