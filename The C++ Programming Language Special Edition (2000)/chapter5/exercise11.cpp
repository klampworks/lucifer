/*
 * Exercise 11.
 *
 * Read a sequence of words from input. Use Quit as a word that terminates the 
 * input. Print the words in the order they were entered. Don't print a word 
 * twice. 
 *
 */

#include <iostream>
#include <set>

int main()
{
	std::string in;

	/* Using a set to avoid duplicates. */
	std::set<std::string> words;

	while(std::cin >> in && in != "quit")
		words.insert(in);

	for (const auto &a: words)
		std::cout << a << std::endl;
}
