/*
 * Exercise 08.
 *
 * What happens if you divide by zero on your system? What happens in case of 
 * overflow and underflow?
 *
 */

#include <cassert>
#include <climits>

int main()
{
	assert(INT_MAX + 1 < INT_MAX);

}
