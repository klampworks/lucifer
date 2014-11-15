/*
 * Exercise 8: How Much Memory Can You Allocate?
 *
 * Run the following program to see how much memory you can allocate in your 
 * process.
 *
 */

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int mb = 0;
	while (malloc(1<<20)) ++mb;
	printf("Allocated %d mb total\n", mb);
	return 0;
}
