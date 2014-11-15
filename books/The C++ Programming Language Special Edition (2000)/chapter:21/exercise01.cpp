/*
 * Exercise 1.
 *
 * Read a file of floating-point numbers, make complex numbers out of pairs 
 * of numbers read, and write out the complex numbers.
 *
 */

#include <vector>
#include <complex>
#include <fstream>
#include <iostream>

int main()
{
	std::ifstream ifs;
	ifs.open("in");

	std::vector<std::complex<float>> v;

	while(ifs) {

		float f1;
		ifs >> f1;

		if (!ifs) break;

		float f2;
		ifs >> f2;

		v.push_back(std::complex<float>(f1, f2));
	}

	for (const auto &a: v)
		std::cout << a << std::endl;

	ifs.close();
}
