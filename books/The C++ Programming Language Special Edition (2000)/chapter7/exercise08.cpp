/*
 * Exercise 8.
 *
 * Write a function to invert a two-dimensional array. Hint: §C.7.
 *
 */

#include <iostream>

void invert(int arr[][3], int x)
{
	int tmp[x][3];
	for (int i = 0; i < x; ++i) {
		for (int j = 0; j < 3; ++j) {
			tmp[i][j] = arr[i][j];
		}
	}

	for (int i = 0; i < x; ++i) {
		for (int j = 0; j < 3; ++j) {
			arr[i][j] = tmp[j][i];
		}
	}
}

int main()
{
	int arr[3][3] = {1,2,3,4,5,6,7,8,9};
	int x = 3;

	invert(arr, x);

	for (int i = 0; i < x; ++i) {
		for (int j = 0; j < 3; ++j) {
			std::cout << arr[i][j] << std::endl;
		}
	}
}
