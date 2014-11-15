/*
 * Exercise 2.
 *
 * Write a program that illustrates the sequence of constructor calls at the 
 * state of an object relative to RTTI during construction. Similarly 
 * illustrate destruction.
 *
 */

#include <iostream>

struct base {

	base() {
		std::cout << "Constructing base." << std::endl;
	}

	~base() {
		std::cout << "Destroying base." << std::endl;
	}
};
	
struct der : base {

	der() {
		std::cout << "Constructing der." << std::endl;
	}

	~der() {
		std::cout << "Destroying der." << std::endl;
	}
};

int main() {
	
	{
	der d;
	}

	return 0;
}
