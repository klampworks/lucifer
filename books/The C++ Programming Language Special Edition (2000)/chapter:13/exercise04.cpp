/*
 * Exercise 4.
 *
 * Define a sort () that takes its comparison criterion as a template 
 * argument. Define a class Record with two data members count and price. 
 * Sort a vector<Record> on each data member.
 *
 */

#include <algorithm>
#include <vector>

struct record {
	int count;
	int price;

	bool operator<(const record &r) const 
	{
		return (count * price) < (r.count * r.price);
	}
};

std::vector<record> a;

int main()
{
	std::sort(a.begin(), a.end());
}


