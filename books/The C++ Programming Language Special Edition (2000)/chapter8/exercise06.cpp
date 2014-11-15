/*
 * Exercise 6.
 *
 * Modify the program from §8.5[5] to measure if there is a difference in the 
 * cost of catching exceptions depending on where in a class stack the 
 * exception is thrown. Add a string object to each function and measure again.
 *  
 */

#include <exception>
#include <ctime>
#include <iostream>
#include <string>

void fn2(int, std::string);
void fn1(int i, std::string a)
{
	fn2(++i, a);
}

void fn2(int i, std::string a)
{
	if (i > 10)
		throw std::exception();
	fn1(++i, a);
}

int main()
{
	time_t st = time(NULL);
	try {
		fn1(0, "hello");
	} catch (...) {

	}
	time_t en = time(NULL);

	std::cout << en - st << std::endl;
}
