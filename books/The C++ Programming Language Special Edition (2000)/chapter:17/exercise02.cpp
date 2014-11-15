/*
 * Exercise 2.
 *
 * Implement a simple test of whether a word is a palindrome (that is, if its 
 * representation is symmetric; examples are ada, otto, and tut). 
 *
 */
#include <cstring>

int main(int argc, char **argv)
{
	const char *input = argv[1];

	const char *st = input;
	const char *en = input + strlen(input) - 1;

	for (;st < en;) {
		if (*st++ != *en--)
			return 1;
	}
	return 0;
}
