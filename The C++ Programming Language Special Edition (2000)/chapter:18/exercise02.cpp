/*
 * Exercise 2.
 *
 * Produce a vector of squares of numbers 1 through 100. Print a table of 
 * squares. Take the square root of the elements of that vector and print the 
 * resulting vector.
 *
 */

#include <vector>
#include <iostream>

int main()
{
	std::vector<int> squares;
	squares.reserve(100);

	std::vector<int> squaresrt;
	squaresrt.reserve(100);

	for (int i = 1; i < 101; ++i) {
		squaresrt.push_back(i);
		squares.push_back(i*i);
	}

	for (int a : squares)
		std::cout << a << std::endl;

	for (int a : squaresrt)
		std::cout << a << std::endl;
	
}
