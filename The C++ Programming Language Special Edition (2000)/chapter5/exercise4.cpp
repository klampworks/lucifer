/*
 * Exercise 4.
 *
 * Write a function that swaps (exchanges the values of) two integers. 
 * Use int* as the argu-ment type. Write another swap function using int& as 
 * the argument type.
 *
 */

#include <cassert>

void swap_p(int *l, int *r)
{
	int t = *l;
	*l = *r;
	*r = t;
}

void swap_r(int &l, int &r)
{
	int t = l;
	l = r;
	r = t;
}

int main()
{
	int a = 1, b = 2;

	swap_p(&a, &b);
	assert(a == 2);
	assert(b == 1);

	swap_r(a, b);
	assert(a == 1);
	assert(b == 2);
}
