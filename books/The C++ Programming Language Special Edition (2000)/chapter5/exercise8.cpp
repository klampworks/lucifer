/*
 * Exercise 8.
 *
 * Run some tests to see if your compiler really generates equivalent code for 
 * iteration using pointers and iteration using indexing (§5.3.I). If 
 * different degrees of optimization can be requested, see if and how that 
 * affects the quality of the generated code.
 *
 */

#include <vector>

std::vector<int> v = {0,1,2,3,4,4,5,6,7,9};

int main()
{
	for (volatile int i = 0; i < v.size(); ++i);
	for (auto i = v.begin(), en = v.end(); i != en; ++i);
}
