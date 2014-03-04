/*
 * Exercise 7.
 *
 * Open and read 100 files containing 1500 characters each. Open and read one 
 * file contain-ing 150,000 characters. Hint: See example in §21.5.1. Is 
 * there a performance difference?
 * What is the highest number of files that can be simultaneously open on your 
 * system? Consider these questions in relation to the use of #include files.
 *
 */

#include <iostream>
#include <string>
#include <fstream>
#include <ctime>

int main(int argc, char **argv)
{
	time_t st = time(NULL);
	for (int i = 1; i < argc; ++i) {

		std::ifstream ifs;
		ifs.open(argv[i]);

		std::string tmp;
		while(std::getline(ifs, tmp))
			std::cout << tmp << std::endl;

		ifs.close();
	}
	time_t en = time(NULL);
	std::cout << en - st << std::endl;
}
