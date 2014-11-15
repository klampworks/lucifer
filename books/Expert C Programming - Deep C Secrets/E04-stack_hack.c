/*
 * Exercise 04: Stack Hack
 *
 * Compile and run this small test program to discover the approximate 
 * location of the stack on your system.
 *
 */

#include <stdio.h>
#include <stdlib.h>

int a;
int b = 1;
int *c;

int main()
{
	int i;
	printf("The stack top is near %p\n", &i);
	printf("BSS  %p\n", &a);
	printf("Text %p\n", &b);
	printf("Heap %p\n", &c);

	c = malloc(sizeof *c);
	return 0;
}
