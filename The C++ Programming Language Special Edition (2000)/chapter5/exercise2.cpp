/*
 * Exercise 2.
 *
 * What, on your system, are the restrictions on the pointer types char*, 
 * int*, and void*?
 * For example, mayan int* have an odd value? Hint: alignment.
 *
 */

#include <cassert>
#include <cstddef>

#pragma pack(push)
#pragma pack(1)

struct s {
	char a;
	char *b;
	short c;
};
#pragma pack(pop)

int main()
{
	struct s ss;

	/* Abort if address is even. */
	assert((size_t)&ss.b & 1);
}
