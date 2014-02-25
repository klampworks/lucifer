/*
 * Exercise 5.
 *
 * What, on your system, are the largest and the smallest values of the 
 * following types: char, short, int, long,float, double, long double, and 
 * unsigned.
 *  
 */

#include <iostream>
#include <climits>
#include <cfloat>

int main()
{
	std::cout << "Min char = " << CHAR_MIN << 
		" and max char = " << CHAR_MAX << "\n" <<
	std::cout << "Min short = " << SHRT_MIN << 
		" and max short = " << SHRT_MAX << "\n" <<
	std::cout << "Min int = " << INT_MIN << 
		" and max int = " << INT_MAX << "\n" <<
	std::cout << "Min long = " << LONG_MIN << 
		" and max long = " << LONG_MAX << "\n" <<
	std::cout << "Min float = " << FLT_MIN << 
		" and max float = " << FLT_MAX << "\n" <<
	std::cout << "Min double = " << DBL_MIN << 
		" and max double = " << DBL_MAX << "\n" <<
	std::cout << "Min long double = " << LDBL_MIN << 
		" and max long double = " << LDBL_MAX << "\n" <<
	std::cout << "Min unsigned = " << 0 << 
		" and max unsigned = " << UINT_MAX << "\n" <<
	std::endl;
}
