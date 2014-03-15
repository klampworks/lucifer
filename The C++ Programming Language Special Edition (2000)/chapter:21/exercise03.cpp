/*
 * Exercise 3.
 *
 * Write a program that prints (a) all lowercase letters, (b) all letters, 
 * (c) all letters and dig-its,
 *
 */

#include <iostream>

int main()
{
	for (int i = 'a'; i < 'z'; ++i)
		std::cout << (char)i << std::endl;

	for (int i = 'A'; i < 'Z'; ++i)
		std::cout << (char)i << std::endl;

	for (int i = '0'; i < '9'; ++i)
		std::cout << (char)i << std::endl;
}
