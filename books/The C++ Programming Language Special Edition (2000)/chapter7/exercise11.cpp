/*
 * Exercise 11.
 *
 * Write an error function that takes a print/-style format string containing 
 * %s, %c, and %d directives and an arbitrary number of arguments. Don't use 
 * printf(). Look at §21.8 if you don't know the meaning of %s, %c, and %d. 
 * Use <cstdarg>.
 *
 */
#include <cstdarg>
#include <iostream>

void error(const char *msg, ...)
{
	int n = 0;

	/* Assume no % or %%. */
	for (const char *i = msg; *i; ++i)
		if (*i == '%') ++n;

	va_list vl;
	va_start(vl, n);

	bool t;
	for (const char *i = msg; *i; ++i) {

		if (*i == '%') {
			t = true;
			continue;
		}

		if (!t) {
			std::cout << *i;
		} else {

			switch (*i) {

			case 'c': {
				char r = va_arg(vl, int);
				std::cout << r;
				} break;
			case 's': {
				short r = va_arg(vl, int);
				std::cout << r;
				} break;
			case 'd': {
				int r = va_arg(vl, int);
				std::cout << r;
				} break;

			/* Default do nothing. Invalid format don't care. */
			};

			t = false;
		}
	}

	va_end(vl);
}

int main()
{
	error("hello %c yyy %s dsjf%d\n", 'c', (short)5, 55);
}
