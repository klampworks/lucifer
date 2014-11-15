/*
 * Exercise 14.
 *
 * Write a function rev () that takes a C-style string argument and reverses 
 * the characters in it. That is, after rev (p) the last character of p will 
 * be the first, etc.
 *
 */
#include <cstring>
#include <cassert>
#include <iostream>

void rev(char *in)
{
	size_t len = strlen(in);
	char *en = in+len-1;

	char t;
	while(in < en) {
		t = *in;
		*in++ = *en;
		*en-- = t;
	}
}

int main()
{
	char in[] = "hello";
	rev(in);
	assert(!strcmp(in, "olleh"));
}
