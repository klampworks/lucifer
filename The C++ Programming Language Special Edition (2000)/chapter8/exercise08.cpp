/*
 * Exercise 8.
 *
 * Write a function that either returns a value or that throws that value 
 * based on an argument.
 *
 */

#include <exception>

struct ooops : std::exception {

	int a;
	ooops(int b) {
		a = b;
	};
};

int fn(int i) {

	if (i < 0)
		throw ooops(i);
	
	return i;
}

int main()
{
	fn(9);
}
