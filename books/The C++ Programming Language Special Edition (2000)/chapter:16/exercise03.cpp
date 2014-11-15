/*
 * Exercise 3.
 *
 * Using the vector from §16.5[2], write a loop to print the names of all 
 * fruits with the ini-tialletter a.
 *
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

	char sought = 'a';
	for (std::string a : ret) {
		if (a[0] == sought)
			std::cout << a << std::endl;
		else if (a[0] > sought)
			break;
	}
}
