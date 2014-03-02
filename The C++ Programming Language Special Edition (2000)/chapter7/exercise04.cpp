/*
 * Exercise 4.
 *
 * Write a program that reads an arbitrary number of files whose names are 
 * given as command-line arguments and writes them one after another on couto 
 * Because this program concatenates its arguments to produce its output, you 
 * might call it cat.
 *
 */

#include <string>
#include <fstream>
#include <iostream>

int main(int argc, char **argv)
{
	for (int i = 1; i < argc; ++i) {
		
		std::ifstream ifs;
		ifs.open(argv[i]);
		
		if (!ifs.good()) {
			ifs.close();
			continue;
		}

		std::string tmp;
		while(std::getline(ifs, tmp))
			std::cout << tmp << std::endl;

		ifs.close();
	}
}
