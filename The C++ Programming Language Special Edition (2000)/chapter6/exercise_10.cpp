/*
 * Exercise 10.
 *
 * Write these functions: strlen ( ) , which returns the length of a C-style 
 * string; strcpy ( ) ,which copies a C-style string into another; and 
 * strcmp ( ) , which compares two C-style strings. Consider what the argument 
 * types and return types ought to be. Then compare your functions with the 
 * standard library versions as declared in <cstring> «string. h» and as 
 * specified in §20.4.1.
 *
 */
#include <cassert>
#include <cstring>
#include <cstdio>

int strlen_ng(const char *input)
{
	int count = 0;
	for (; *input; ++count, ++input);
	return count;
}

void strcpy_ng(char *dest, const char *src)
{
	do {
		*dest++ = *src;
	} while(*src++);
}

int strcmp_ng(const char *l, const char *r)
{
	while (*l == *r) {
		if (!*l) return 0;
		++l, ++r;
	}

	return *l < *r ? -1: 1;
}

int main()
{
	assert(strlen_ng("hello") == 5);

	char a[6] = "hello", b[6];
	strcpy_ng(b, a);
	assert(!strcmp(a, b));

	assert(strcmp("hello", "hello") == strcmp_ng("hello", "hello"));
	assert(strcmp("hello", "hello0") == strcmp_ng("hello", "hello0"));
	assert(strcmp("hello0", "hello") == strcmp_ng("hello0", "hello"));
}
