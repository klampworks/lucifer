/*
 * Exercise 10.
 *
 * Define an array of strings in which the strings contain the names of the 
 * months. Print those strings. Pass the array to a function that prints those 
 * strings.
 *
 */

#include <string>
#include <iostream>

void print(std::string *a, size_t len)
{
	for (int i = 0; i < len; ++i)
		std::cout << a[i] << std::endl;
}

int main()
{
	std::string months[] = {"January", "February", "March", "April", 
		"May", "June", "July", "August", "September", "October", 
		"November", "December"};

	print(months, sizeof months / sizeof months[0]);
}
