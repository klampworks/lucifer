/*
 * Exercise 1.
 *
 * Sort a list using only standard library algorithms.
 *
 */

#include <vector>
#include <string>
#include <algorithm>
#include <functional>
#include <iostream>


int main()
{
	std::vector<std::string> seq({
		"apricot",
		"peach",
		"banana",
		"strawberry",
		"apple",
		"melon"
	});

	auto fn = [&seq]() {
		for (const auto a : seq)
			std::cout << a << std::endl;
	};

	fn();
	std::sort(seq.begin(), seq.end());
	fn();
}
