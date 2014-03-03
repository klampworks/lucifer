/*
 * Exercise 4.
 *
 * Write a program that throws an exception in one function and catches it in 
 * another.
 *
 */

#include <exception>

void ex()
{
	throw std::exception();
}

int main()
{
	try {
		ex();
	} catch(...) {

	}
}
