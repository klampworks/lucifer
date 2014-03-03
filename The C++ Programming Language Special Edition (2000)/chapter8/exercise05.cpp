/*
 * Exercise 5.
 *
 * Write a program consisting of functions calling each other to a calling 
 * depth of 10. Give each function an argument that determines at which level 
 * an exception is thrown. Have main () catch these exceptions and print out 
 * which exception is caught. Don't forget the case in which an exception is 
 * caught in the function that throws it.
 *
 */

#include <exception>

void fn2(int);
void fn1(int i)
{
	fn2(++i);
}

void fn2(int i)
{
	if (i > 10)
		throw std::exception();
	fn1(++i);
}

int main()
{
	try {
		fn1(0);
	} catch (...) {

	}
}
