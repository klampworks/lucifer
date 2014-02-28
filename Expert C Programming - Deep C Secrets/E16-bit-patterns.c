/*
 * Exercise 16: Check Those Bit Patterns
 *
 * Write a one-liner to check whether or not the bit pattern for floating 
 * point 0.0 is the same as integer zero on your system.
 *
 */

#include <assert.h>

union u {
	float f;
	int i;
};

int main()
{
	union u a;
	a.f = 0.0f;

	/* If this assert fails then their bit patterns differ. */
	assert(!(int)0 ^ a.i);
}
