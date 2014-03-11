/*
 * Exercise 1.
 *
 * Create a vector<char> containing the letters of the alphabet in order. 
 * Print the elements of that vector in order and in reverse order.
 *
 */

#include <vector>
#include <iostream>

int main()
{
	std::vector<char> s;
	s.reserve(26);

	for (int i = 'a'; i <= 'z'; ++i)
		s.push_back(i);

	for (char i : s)
		std::cout << i << std::endl;

	for (auto st = s.rbegin(); st != s.rend(); ++st)
		std::cout << *st << std::endl;
	
}
