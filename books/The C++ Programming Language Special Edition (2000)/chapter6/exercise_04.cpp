/*
 * Exercise 4.
 *
 * Write a table of values for the bitwise logical operations (§6.2.4) for all 
 * possible combina-tions of 0 and 1 operands.
 * 
 */

#include <cassert>
#include <climits>

int main()
{
	assert((0 & 0) == 0);
	assert((0 & 1) == 0);
	assert((1 & 0) == 0);
	assert((1 & 1) == 1);

	assert((0 | 0) == 0);
	assert((0 | 1) == 1);
	assert((1 | 0) == 1);
	assert((1 | 1) == 1);

	assert((0 ^ 0) == 0);
	assert((0 ^ 1) == 1);
	assert((1 ^ 0) == 1);
	assert((1 ^ 1) == 0);

	assert((~0) == -1);
	assert((~1) == -2);

	assert((0 << 0) == 0);
	assert((0 << 1) == 0);
	assert((1 << 0) == 1);
	assert((1 << 1) == 2);

	assert((0 >> 0) == 0);
	assert((0 >> 1) == 0);
	assert((1 >> 0) == 1);
	assert((1 >> 1) == 0);
}

