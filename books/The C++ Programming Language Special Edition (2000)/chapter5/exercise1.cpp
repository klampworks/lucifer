/*
 * Exercise 1.
 *
 * Write declarations for the following: a pointer to a character, an array of 
 * 10 integers, a reference to an array of 10 integers, a pointer to an array 
 * of character strings, a pointer to a pointer to a character, a constant 
 * integer, a pointer to a constant integer, and a constant pointer to an 
 * integer. Initialize each one.
 *
 */

int main()
{
	char *a = 0;
	int b[10] = {0};
	int (&c)[10] = b;

	char *d[10] = {0};
	char **e = 0;
	const int f = 0;
	const int *g = 0;
	int const *h = 0;
}
