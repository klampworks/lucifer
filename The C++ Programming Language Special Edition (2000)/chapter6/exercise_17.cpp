/*
 * Exercise 17.
 *
 * Write a function itoa (int i, char b [ ]) that creates a string 
 * representation of i in band returns b.
 *
 */

#include <cstring>
#include <cstdlib>
#include <cassert>

void itoa_ng(int i, char *b)
{
	char *pos = b;	

	for (int mask = 1000000000; mask > 0; mask /= 10) {
		*pos++ = ((i&mask) / mask) + '0';
	}
	*pos = '\0';

	char *st = b;

	/* Iterate through the leading zeros until we find the first digit. */
	for (;*st; ++st)
		if (*st != '0') break;

	/* Entire string of zeros, return just 1 zero. */
	if (!*st) {
		*++b = '\0'; 
		return;
	}

	/* This means there are no leading zeros. */
	if (st == b)
		return;

	/* Move the meaningful digits to the start of the string, overwriting
	 * the leadering zeros. */
	while(*st)
		*b++ = *st++;
	
	*b = '\0';
}

int main()
{
	assert(sizeof(int) == 4);

	char *b = (char*)malloc(10);
	itoa_ng(1001, b);
	assert(!strcmp(b, "1001"));
}
