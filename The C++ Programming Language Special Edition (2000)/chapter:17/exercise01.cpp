/*
 * Exercise 1.
 *
 * Write a program that lists the distinct words in a file in alphabetical 
 * order. 
 *
 */

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>

int main(int argc, char **argv)
{
	std::ifstream ifs;
	ifs.open(argv[1]);

	if (!ifs.good()) return 1;

	std::string tmp;
	std::vector<std::string> ret;

	while (ifs) {
		ifs >> tmp;
		ret.push_back(tmp);
	}

	std::sort(ret.begin(), ret.end());
	auto en = std::unique(ret.begin(), ret.end());
	for (auto st = ret.begin(); st != en; ++st)
		std::cout << *st << std::endl;

	ifs.close();
}
