/*
 * Exercise 2.
 *
 * Create a vector<string> and read a list of names of fruits from cin into 
 * it. Sort the list and print it.
 *
 */

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>

int main()
{
	std::vector<std::string> ret;
	std::string tmp;

	while (std::cin >> tmp && tmp != "q")
		ret.push_back(tmp);

	std::sort(ret.begin(), ret.end()); 

	for (std::string a : ret)
		std::cout << a << std::endl;
}
