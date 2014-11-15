/*
 * Exercise 14.
 *
 * What is wrong with these macro definitions?
 *
 */

/* The equals sign is part of the replacment text. */
#define PI =3 .141593;

/* There is no terminating semi-colon. */
#define MAX (a, b) a>b?a:b

/* Recursive macro expansion. */
#define lac (a) (a) *fac ( (a) -1)

int main(){}
