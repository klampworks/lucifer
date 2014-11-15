/*
 * Exercise 4.
 *
 * Read a sequence of lines of text into a fixed-sized character buffer. 
 * Remove all whitespace characters and replace each alphanumeric character 
 * with the next character in the alphabet
 * (replace z by a and 9 by 0). Write out the resulting line.
 *
 */

#include <iostream>

int main()
{
	char a[10];
	std::cin.width(10);
	std::cin >> a;

	for (char b:a)
		std::cout << (char)(b+1);

	std::cout << std::endl;
}
