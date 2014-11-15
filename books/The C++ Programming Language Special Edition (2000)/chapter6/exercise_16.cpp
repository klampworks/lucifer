/*
 * Exercise 16.
 *
 * Write a function atoi (const char*) that takes a C-style string containing 
 * digits and returns the corresponding into For example, 
 * atoi("123") is 123. 
 *
 */

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <cctype>

#include <iostream>

int atoi_ng(const char *in)
{
	int neg = (*in == '-')? ++in, -1: 1;

	const char *s = in+strlen(in)-1;
	int t = 0;

	for (int i = 1; s >= in; i*=10, --s) {

		if (!isdigit(*s)) return 0;

		int res = *s - '0';
		t += res * i;
	}

	return t * neg;
}

int main()
{
	assert(atoi("123") == atoi_ng("123"));
	assert(atoi("kkkkk") == atoi_ng("kkkkk"));
	assert(atoi("-123") == atoi_ng("-123"));
}
