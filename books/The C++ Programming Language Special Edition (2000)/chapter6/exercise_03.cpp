/*
 * Exercise 3.
 *
 * Read a sequence of possibly whitespace-separated (name,value) pairs, where 
 * the name is a single whitespace-separated word and the value is an integer 
 * or a floating-point value. Compute and print the sum and mean for each name 
 * and the sum and mean for all names. Hint: §6.1.8.
 *
 */

#include <string>
#include <sstream>
#include <map>
#include <iostream>

int main()
{
	const char *input = "ringo 6.5 momo 5.5 ringo 1.2 anzu 9.9";

	std::map<std::string, std::pair<float, float>> totals;

	std::stringstream ss(input);
	std::string tmp_s;
	float tmp_f;
	float total_total = 0.0;

	while(ss >> tmp_s && ss >> tmp_f) {

		++totals[tmp_s].first;
		totals[tmp_s].second += tmp_f; 
		total_total += tmp_f;
	}

	for (const auto &a: totals) {

		std::cout << a.first << " total = " << a.second.second 
			<< " mean = " << a.second.second / a.second.first <<
			std::endl;
	}

	std::cout << "\nTotal items = " << totals.size() << " total = " 
		<< total_total << " mean = " << total_total / totals.size()
		<< std::endl;
}
