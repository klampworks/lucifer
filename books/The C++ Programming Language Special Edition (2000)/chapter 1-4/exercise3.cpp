/*
 * Exercise 3.
 *
 * Write a program that prints the sizes of the fundamental types, a few 
 * pointer types, and a few enumerations of your choice. Use the 
 * sizeof operator. 
 *
 */

#include <iostream>

int main()
{
	std::cout << 
		"int = " << sizeof(int) << "\n" <<
		"short = " << sizeof(short) << "\n" <<
		"long = " << sizeof(long) << "\n" <<
		"long long = " << sizeof(long long) << "\n" <<
		"float = " << sizeof(float) << "\n" <<
		"double = " << sizeof(double) << "\n" <<
		"char = " << sizeof(char) << "\n" <<
		std::endl;
}
