/*
 * Exercise 4.
 *
 * Using the vector from §16.5[2], write a loop to delete all fruits with the 
 * initial letter a.
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

	std::remove_if(ret.begin(), ret.end(), [](const std::string &a) {
		return a[0] == 'a';
	});

	for (auto st = ret.begin(); st != ret.end(); ++st)
		std::cout << *st << std::endl;
}
