/*
 * Exercise 15: Hooray for Arrays!
 *
 * Using the declarations:
 * intintintapricot[2][3][5];
 * (*r)[5] = apricot[0];
 * *t = apricot[0][0];
 * write a program to print out the initial values of r and t in hex (use 
 * the %x printf conversion character to print a hex value), increment these 
 * two pointers, and print out their new values.
 * Before running the program, predict how many bytes the increment will 
 * actually cause to be added to each pointer. Use Figure 9-8 on page 255 to 
 * help you.
 *
 */

#include <stdio.h>
#include <assert.h>

const int yu = 6;
int anzu[2][3][5];

int (*r)[yu] = anzu[0];
int *t = anzu[0][0];

int main()
{
	assert(r == t);

	printf("%zu\n", ((size_t)(t+1) - (size_t)t));
	assert(((size_t)(t+1) - (size_t)t) == sizeof(int));

	printf("%zu\n", ((size_t)(r+1) - (size_t)r));
	assert(((size_t)(r+1) - (size_t)r) == sizeof(int) * yu);
}
