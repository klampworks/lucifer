/*
 * Exercise 3.
 *
 * Define a class Int that acts exactly like the built-in type int, except 
 * that it throws exceptions rather than overflowing or underflowing.
 *
 */

#include <exception>
class overflow : std::exception{};
class underflow : std::exception{};

struct INT {
	int v;

	int operator+(int r) throw(overflow) 
	{
		int ret = v+r;
		if (ret < v)
			throw overflow();

		return ret;
	}

	int operator-(int r) throw(underflow) 
	{
		int ret = v-r;
		if (ret > v)
			throw underflow();

		return ret;
	}
};
