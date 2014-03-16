/*
 * Exercise 1.
 *
 * Write a function that takes two strings and returns a string that is the 
 * concatenation of the strings with a dot in the middle. For example, given 
 * file and write, the function returns file. write. Do the same exercise 
 * with C-style strings using only C facilities such as malloc ( ) and 
 * strlen ( ). Compare the two functions. What are reasonable criteria for 
 * a comparison?
 *
 */

#include <cstring>
#include <cassert>
#include <string>
#include <cstdlib>

std::string concat(const std::string &a, const std::string &b)
{
	return a + "." + b;
}

char* concat(const char *a, const char *b)
{
	size_t alen = strlen(a);
	size_t blen = strlen(b);
	size_t len = alen + blen + 2;

	/* Overflow. */
	assert(len > alen);

	char *ret = (char*)malloc(len);
	strcpy(ret, a);

	char *r = ret+alen;
	*r++ = '.';

	strcpy(r, b);
	r+=blen;
	*++r = '\0';

	return ret;
}

int main()
{
	std::string a("lucifer"), b("leviathan"), c("lucifer.leviathan");
	assert(concat(a, b) == c);

	const char *aa = "lucifer";
	const char *bb = "leviathan";
	const char *cc = "lucifer.leviathan";

	char *dd = concat(aa, bb);
	assert(!strcmp(dd, cc));
	free(dd);
}

