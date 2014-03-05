/*
 * Exercise 6.
 *
 * Define some classes for providing random numbers of certain distributions 
 * (for example, uniform and exponential). Each class has a constructor 
 * specifying parameters for the distribu-tion and a function draw that 
 * returns the next value.
 *
 */

#include <ctime>
#include <cstdlib>

class c {
	
	int min, max;
	c(int mmin, int mmax)
	{
		min = mmin;
		max = mmax;

		srand(time(NULL));
	}

	int draw()
	{
		return rand()  * (max - min + 1) + min;
	}
};
 
