/*
 * Exercise 14: Play Around with Array/Pointer Arguments
 *
 * Define a function that takes a character array ca as an argument. 
 * Inside the function, print out the values of &ca and &(ca[0]) and &(ca[1]).
 * Define another function that takes a character pointer pa as an argument.
 * Inside the function, print out the values of &pa and &(pa[0]) and
 * &(pa[1]) and ++pa.
 * Set up a global character array ga and initialize it with the letters of the
 * alphabet. Call the two functions using this global as the parameter. Compare
 * the values that you print out.
 * In the main routine, print out the values of &ga and &(ga[0]) and
 * &(ga[1]).
 * Before running your program, write down which values you expect to match,
 * and why. Account for any discrepancies between your expected answers and
 * observed results.
 *
 */

#include <assert.h>

char ga[] = {'a', 'b', 'c'};

void fun1(char *ca)
{
	printf("%p\n", &ca);
	printf("%p\n", &(ca[0]));
	printf("%p\n", &(ca[1]));

	/* Pointer not array! */
	assert(&ca != &(ca[0]));

	assert(ca == &(ca[0]));
	assert(&(ca[0]) + 1 == &(ca[1]));
}

void fun2(char *pa)
{
	printf("%p\n", &pa);
	printf("%p\n", &(pa[0]));
	printf("%p\n", &(pa[1]));
	printf("%p\n", ++pa);
}

int main()
{
	fun1("he");
	fun2("he");

	printf("%p\n", &ga);
	printf("%p\n", &(ga[0]));
	printf("%p\n", &(ga[1]));

	/* Array not pointer! */
	assert(&ga == &(ga[0]));
}
