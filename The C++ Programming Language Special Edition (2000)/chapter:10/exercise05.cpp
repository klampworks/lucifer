/*
 * Exercise 5.
 *
 * Define a class Histogram that keeps count of numbers in some intervals 
 * specified as argu-ments to Histogram's constructor. Provide functions to 
 * print out the histogram. Handle out-of-range values.
 *
 */
#include <vector>
#include <iostream>
#include <exception>

class out_of_range : std::exception {

	const char* what()
	{
		return "Out of range.";
	}
};
class Histogram {

	int min, max;
	std::vector<int> values;

	Histogram(int minp, int maxp)
	{
		min = minp;
		max = maxp;
	}

	void add(int n)
	{
		if (n < min || n > max)
			throw out_of_range();

		values.push_back(n);
	}

	void print()
	{
		for(const auto &a: values)
			std::cout << a << std::endl;

	}
};

int main(){}

