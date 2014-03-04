/*
 * Exercise 3.
 *
 * Write a program that reads a source file and writes out the names of files 
 * # included.
 * Indent file names to show files #included by included files. 
 * Try this program on some real
 * source files (to get an idea of the amount of information included).
 *
 */
#include <string>
#include <iostream>
#include <fstream>

void print_file(const std::string &filename)
{
	std::ifstream ifs;
	ifs.open(filename.c_str());
	std::string tmp;

	while(std::getline(ifs, tmp)) {
		
		size_t pos;
		if ((pos = tmp.find("#include")) == std::string::npos) 
			continue;

		size_t st = tmp.find("<", pos);

		if (st == std::string::npos)
			st = tmp.find("\"", pos);

		if (st == std::string::npos)
			continue;
		
		++st;

		size_t en = tmp.find(">", st);

		if (en == std::string::npos)
			en = tmp.find("\"", st);

		if (en == std::string::npos)
			continue;

		std::string filename = tmp.substr(st, en-st);
		std::cout << filename << std::endl;
		print_file(filename);
	}

	ifs.close();
}

int main(int argc, char **argv)
{
	for (int i = 1; i < argc; ++i)
		print_file(argv[i]);
}
