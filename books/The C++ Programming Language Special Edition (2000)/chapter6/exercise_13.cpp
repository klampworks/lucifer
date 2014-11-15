/*
 * Exercise 13.
 *
 * Write a function cat () that takes two C-style string arguments and returns 
 * a string that is the concatenation of the arguments. Use new to find store 
 * for the result.
 *
 */

#include <cstdlib>
#include <cstring>
#include <cassert>

char* cat(const char* l, const char * r)
{
	size_t ls = strlen(l);
	size_t rs = strlen(r);

	char *ret = new char[ls+rs+1];
	char *rr = ret;

	while(*l)
		*rr++ = *l++;

	while(*r)
		*rr++ = *r++;
	
	*rr = '\0';
	return ret;
}

int main()
{
	const char *l = "hello";
	const char *r = " world";
	char *ret = cat(l, r);

	assert(!strcmp(ret, "hello world"));
}
