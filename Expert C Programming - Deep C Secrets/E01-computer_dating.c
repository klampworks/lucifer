/* 
 * Exercise 01: When will the time_t's wrap around?
 *
 * Requires x86 processor for the ror instruction.
 * Requires -std=gnu* compiler flag for inline assembly.
 * Requires -m32 compiler flag to illustrate the author's original 
 * 	point (written in 1994, the book assumes 32 bit machines).
 * Note that ctime segfaults on 64 bit systems due to the absurd number
 * 	we are passing.
 */

#include <stdio.h>
#include <time.h>
#include <assert.h>

int main()
{
	time_t prev = 1;

	/* Rotate right to get MIN (100000...) */
	__asm__ (	"ror $1, %0;"
		:"=r"(prev)
		:"r"(prev)
		:
	);  

	/* Invert to get MAX (0111111...) */
	prev = ~prev;

	/* Make sure that this is the overflow point. */
	assert(prev > prev + 1);

	/* Print out this date as a string. */
	printf("%s\n", ctime(&prev));
}
