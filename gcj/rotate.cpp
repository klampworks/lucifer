#include <iostream>
#include <fstream>
#include <vector>
#include <cassert>

int main() {

	const char *filename = "input";
	std::ifstream ifs;
	ifs.open(filename);

	assert(ifs.good());
	std::string tmp;

	std::getline(ifs, tmp);
	int T = std::stoi(tmp);

	while(std::getline(ifs, tmp)) {
	
		std::cout << tmp << std::endl;
		if (tmp.empty())
			continue;

		size_t pos = tmp.find(" ");
		int N = std::stoi(tmp.substr(0, pos));
		int K = std::stoi(tmp.substr(pos));
		
		std::vector<std::vector<int>> grid;
		for (int i = 0; i < N; i++) {

			std::vector<int> tmp_v;

			std::getline(ifs, tmp);
			for (const char &c: tmp) {
				tmp_v.push_back(c);	
			}
			tmp_v.pop_back();

			grid.push_back(std::move(tmp_v));
		}

		/*
		int tmp_i;
		for (unsigned i = 0; i < N - 2; i++) {
			for (unsigned j = i + 1; j < N - 1; j++) {
				tmp_i = grid[i][j];
				grid[i][j] = grid[j][i];
				grid[j][i] = tmp_i;
			}
		}
		*/

/*
		for (auto &row : grid) {

			for (int i = N - 2; i >= 0; i--) {
				if (row[i] != '.') { 
					
					row[i+1] = row[i];
					row[i] = '.';
				}
			}
		}
		*/

		//for (unsigned i = 0; i < N; i++) {
		for (int i = N - 1; i >= 0; i--) {
			for (unsigned j = 0; j < N; j++) {
			//for (int j = N - 1; j >= 0; j--) {
				std::cout << (char)grid[j][i];
			}
			std::cout << std::endl;
		}

	}

}
