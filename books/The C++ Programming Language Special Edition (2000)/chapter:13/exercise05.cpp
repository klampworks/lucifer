/*
 * Exercise 5.
 *
 * Write a program that reads (key, value) pairs and prints out the sum of the 
 * values corre-sponding to each distinct key. Specify what is required for a 
 * type to be a key and a value.
 *
 */
#include <vector>
#include <iostream>

template<typename key, typename value>
void dist(const std::vector<std::pair<key, value> > &v)
{
	std::vector<std::pair<key*, value> > ret;

	for (size_t i = 0; i < v.size(); ++i) {
		int found = -1;
		for (size_t j = 0; j < ret.size(); ++j) {
			if((*ret[j].first) == v[i].first) {
				found = j;
				break;
			}
		}

		if (found < 0)
			ret.push_back(std::pair<key*, value>(
				&ret[i].first, ret[i].value));
		else
			ret[found].second += ret[i].value;
	}

	for (size_t j = 0; j < ret.size(); ++j) {
		std::cout << ret[j].first << " : " 
			<< ret[j].second << std::endl;
	}
}

int main()
{}
