/*
 * Exercise 5.
 *
 * What is the size of the array str in the following exanlple:
 * char str[] = "a short string";
 *
 * What is the length of the string "a short string"?
 *
 */

#include <cassert>
#include <cstring>

int main()
{
	char str[] = "a short string";
	assert(sizeof str == 15);
	assert(strlen(str) == 14);
}
