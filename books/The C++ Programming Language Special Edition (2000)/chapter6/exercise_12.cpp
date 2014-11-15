/*
 * Exercise 12.
 *
 * Modify the program from §6.6[3] to also compute the median.
 *
 */

#include <string>
#include <sstream>
#include <map>
#include <iostream>
#include <vector>
#include <algorithm>

int main()
{
	const char *input = "ringo 6.5 momo 5.5 ringo 1.2 ringo 3.3 anzu 9.9";

	std::map<std::string, std::vector<float>> totals;

	std::stringstream ss(input);
	std::string tmp_s;
	float tmp_f;
	float total_total = 0.0;

	while(ss >> tmp_s && ss >> tmp_f)
		totals[tmp_s].push_back(tmp_f);

	for (auto &a: totals) {

		float sum = 0;
		std::cout << a.first << ":\n";
		for (const auto b: a.second) {
			std::cout << "\t" << b << std::endl;
			sum += b;
		}
		std::cout << "sum: " << sum << std::endl;
		std::cout << "mean: " << sum/a.second.size() << std::endl;
		std::sort(a.second.begin(), a.second.end());

		float median = 0;

		if (a.second.size() & 1) {
			median = a.second[(a.second.size() / 2) - 1];
		} else {
			size_t pos = a.second.size() / 2;
			float s = a.second[pos] + a.second[pos-1];
			median = s / 2;
		}
		std::cout << "median: " << median << std::endl;

		std::cout << std::endl;
	}

#if 0
	std::cout << "\nTotal items = " << totals.size() << " total = " 
		<< total_total << " mean = " << total_total / totals.size()
		<< std::endl;
		#endif
}
