/*
 * Exercise 4.
 *
 * Modify the program from the previous exercise to print the number of 
 * comment lines, the number of non-comment lines, and the number of 
 * non-comment, whitespace-separated words for each file #included.
 *
 */

#include <string>
#include <iostream>
#include <fstream>
#include <cctype>

void process(const std::string &filename)
{
	std::ifstream ifs;
	ifs.open(filename.c_str());

	int comments = 0;
	int words = 0;

	while(ifs) {

		char c = '\0';
		while(ifs.get(c), isspace(c));
		ifs.get(c);

		if (c == '/') {
			
			char cc = ifs.peek();
			if (cc == '/') {
				++comments;
				ifs.ignore(2000, '\n');
				continue;
			} else if (cc == '*') {

				st:
				ifs.ignore('*');
				if (ifs.peek() == '/') {
					++comments;
					continue;
				}
				/* Infinite loop on unclosed comment. */
				goto st;
			}
		}

		++words;
		while(ifs.get(c), !isspace(c));
		continue;
	}

	std::cout << comments << words << std::endl;

	ifs.close();
}

void print_file(const std::string &filename)
{
	std::ifstream ifs;
	ifs.open(filename.c_str());
	std::string tmp;

	process(filename);

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
