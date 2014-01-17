#include <iostream>
#include <fstream>
#include <vector>
#include <cassert>

bool krow(const std::vector<std::vector<int>> &grid,
	int row, int col, int K, int N)
{
	int x;
	char seek = grid[row][col];

	for (x = 1; x < K;) {
		if (col + x >= N) break;
		else if (grid[row][col+x] != seek) break;
		x++;
	}
	if (x == K) return true;
	
	for (x = 1; x < K;) {
		if (row + x >= N) break;
		else if (grid[row+x][col] != seek) break;
		x++;
	}
	if (x == K) return true;

	for (x = 1; x < K;) {
		if (col - x < 0) break;
		else if (grid[row][col-x] != seek) break;
		x++;
	}
	if (x == K) return true;

	for (x = 1; x < K;) {
		if (row - x < 0) break;
		else if (grid[row-x][col] != seek) break;
		x++;
	}
	if (x == K) return true;

	/* Diagonal */
	for (x = 1; x < K;) {
		if (col + x >= N || row + x >= N) break;
		else if (grid[row+x][col+x] != seek) break;
		x++;
	}
	if (x == K) return true;
	
	for (x = 1; x < K;) {
		if (row + x >= N || col - x < 0) break;
		else if (grid[row+x][col-x] != seek) break;
		x++;
	}
	if (x == K) return true;

	for (x = 1; x < K;) {
		if (col - x < 0 || row - x < 0) break;
		else if (grid[row-x][col-x] != seek) break;
		x++;
	}
	if (x == K) return true;

	for (x = 1; x < K;) {
		if (row - x < 0 || col + x >= N) break;
		else if (grid[row-x][col+x] != seek) break;
		x++;
	}
	if (x == K) return true;
	return false;
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
	
		counter++;
		if (tmp.empty())
			continue;

		bool R = false;
		bool B = false;

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

		for (int row = 0; row < N; row++) {
			for (int x = 0; x < N; x++) {
				for (int col = N -1; col > 0; col--) {
					if (grid[row][col] == '.') {
						grid[row][col] = grid[row][col-1];
						grid[row][col-1] = '.';
					}
				}
			}
		}
		
		for (int row = 0; row < N; row++) {
			for (int col = 0; col < N; col++) {

				if (grid[row][col] == '.')
					continue;

				if (krow(grid, row, col, K, N)) {
					if (grid[row][col] == 'B')
						B = true;
					else
						R = true;
				}
			}
		}

		std::cout << "Case #" << counter << ": ";
		if (B && R)
			std::cout << "Both";
		else if (B)
			std::cout << "Blue";
		else if (R)
			std::cout << "Red";
		else
			std::cout << "Neither";

		std::cout << std::endl;

/*
		for (int row = 0; row < N; row++) {
			for (int col = 0; col < N; col++) {
				std::cout << (char)grid[row][col];	
			}
			std::cout << std::endl;
		}
*/

	}

}
