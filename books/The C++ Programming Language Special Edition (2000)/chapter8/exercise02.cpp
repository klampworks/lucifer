/*
 * Exercise 2.
 *
 * Take some not-too-Iarge program that uses at least one library that does 
 * not use name-spaces and modify it to use a namespace for that library. 
 * Hint: §8.2.9.
 *
 */
#include <iostream>

namespace data {
	const char *word = "hello world";
}

int main()
{
	std::cout << data::word << std::endl;
}
