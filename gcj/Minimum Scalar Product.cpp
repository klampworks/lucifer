#include <iostream>
#include <fstream>
#include <vector>
#include <cassert>
#include <algorithm>


std::vector<int> split(std::string &&v1_s)
{
	std::vector<int> v1; 
	int st = 0;
	int en = 0;
	while((en = v1_s.find(" ", st)) != std::string::npos) {
		v1.push_back(std::stoi(v1_s.substr(st, en-st)));
		st = en+1;
	}
	v1.push_back(std::stoi(v1_s.substr(st)));

	return std::move(v1);
}

int main() {

	const char *filename = "input";
	std::ifstream ifs;
	ifs.open(filename);

	assert(ifs.good());
	std::string tmp;

	std::getline(ifs, tmp);
	int T = std::stoi(tmp);

	int counter = 0;
	while(std::getline(ifs, tmp)) {
	
		if (counter == 10)
			std::cout << tmp << std::endl;
		if (tmp.empty())
			continue;

		counter++;

		bool R = false;
		bool B = false;

		int n = std::stoi(tmp);

		std::string v1_s, v2_s;

		std::getline(ifs, v1_s);
		std::getline(ifs, v2_s);

		auto v1 = split(std::move(v1_s));
		auto v2 = split(std::move(v2_s));

		assert(v1.size() == n);
		assert(v2.size() == n);

		std::sort(v1.begin(), v1.end(), [](int a, int b){ return a > b;});
		std::sort(v2.begin(), v2.end(), [](int a, int b){ return a < b;});
		
		long long total = 0;
		long long former = 0;
		for (int i = 0; i < n; i++) {
			total += v1[i] * v2[i];
			
			if (total > 0)
				assert(total > former);
			else
				assert(total < former);

			former = total;
		}

		std::cout << "Case #" << counter << ": " << total << std::endl;
	}
}
