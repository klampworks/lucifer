/*
 * Exercise 7.
 *
 * Define a table of the names of months of the year and the number of days in 
 * each month. Write out that table. Do this twice; once using an array of 
 * char for the names and an array for the number of days and once using an 
 * array of structures, with each structure holding the name of a month and 
 * the number of days in it.
 *
 */

#include <cassert>
#include <iostream>

const char *names[] = {"January", "February", "March", "April", "May", "June",
	"July",	"August", "September", "October", "November", "December"};

int days[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

struct month {
	const char *name;
	int days;
};

struct month months[] = {{"January", 31}, {"February", 28}, {"March", 31}, 
	{"April", 30}, {"May", 31}, {"June", 30}, {"July", 31},	{"August", 31},
	{"September", 30}, {"October", 31}, {"November", 30}, {"December",31}};

int main()
{
	assert((sizeof names / sizeof names[0]) 
		== (sizeof days / sizeof days[0]));

	for (size_t i = 0; i < (sizeof days / sizeof days[0]); ++i)
		std::cout << names[i] << " has " << days[i] 
			<< " days." << std::endl;

	std::cout << std::endl;

	for (size_t i = 0; i < (sizeof months / sizeof months[0]); ++i)
		std::cout << months[i].name << " has " << months[i].days 
			<< " days." << std::endl;

}
