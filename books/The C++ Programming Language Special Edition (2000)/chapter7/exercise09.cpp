/*
 * Exercise 9.
 *
 * Write an encryption program that reads from cin and writes the encoded 
 * characters to cout You might use this simple encryption scheme: the 
 * encrypted form of a character c is c" key [i] , where key is a string 
 * passed as a command-line argument. The program uses the characters in
 * key in a cyclic manner until all the input has been read. Re-encrypting 
 * encoded text with the same key produces the original text. If no key (or 
 * a null string) is passed, then no encryption is done.
 *
 */

#include <iostream>
#include <string>

int main(int argc, char **argv)
{
	if (argc != 2) return 0;

	std::string key = argv[1];
	if (key.empty()) return 0;

	std::string tmp;
	size_t pos = 0;
	while (std::cin >> tmp) {

		for (size_t i = 0; i < tmp.size(); ++i) {

			tmp[i] ^= key[pos];

			if (++pos == key.size())
				pos = 0;
		}

		std::cout << tmp << std::endl;
	}
}
