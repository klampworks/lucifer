/*
 * Exercise 06: Jump to it
 *
 * Take the source of a program you have already written and add 
 * setjmp/longjmp to it, so that on receiving some particular input it will 
 * start over again.
 *
 * The header file <setjmp.h> needs to be included in any source file that 
 * uses setjmp or longjmp.
 *
 */

#include <stdio.h>
#include <setjmp.h>
#include <stdlib.h>
#include <time.h>

static jmp_buf buf;

int main()
{
	char input[2];

	srand(time(NULL));

	if (!setjmp(buf)) {
		printf("Guess what number I'm thinking of.\n");
		longjmp(buf, 1);
	} else {

		scanf("%1s", input);

		if (*input == rand() % 10) {
			printf("You win.\n");
			exit(0);
		} else {
			longjmp(buf, 0);
		}
	}
}
