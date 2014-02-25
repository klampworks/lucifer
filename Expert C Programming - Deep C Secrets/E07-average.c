/*
 * Exercise 7: How to Exceed the Speed Limit?
 *
 * Imagine that you have been given the task of writing a program to read a 
 * file of 10,000 numbers and calculate the average. Your program must run in 
 * the shortest amount of time. What programming and compiler techniques will 
 * you use to achieve this?
 *
 */

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <time.h>

void gen_numbers()
{
	srand(time(NULL));
	FILE *fp = fopen("numbers", "w");

	for (int i = 0; i < 10000; i++) {
		fprintf(fp, "%d\n", rand() % 100);
	}

	fclose(fp);
}

int main()
{
	assert(sizeof(long long) == 8);
	gen_numbers();
	FILE *fp = fopen("numbers", "r");

	const int maxbuf = 19;
	char buf[maxbuf];
	int pos = 0;

	unsigned long long total = 0;
	unsigned long long acc = 0;
	int count = 0;

	char ch;
	while ((ch =  getc(fp))) {

		if (ch == EOF)
			break;

		if (ch != '\n') {

			buf[pos] = ch;	
			++pos;

			if (pos == maxbuf) {
				printf("Encountered excessivly long number.\n");
				exit(1);
			}
		} else {

			buf[pos] = '\0';
			acc += atoi(buf);
			count++;

			/* If the most signifigant bit is set then we risk an overflow if we continue,
			 * calculate the current average and add it to the total. */
			if (acc & 0x20000) {
				total += (acc / count);
				acc = count = 0;
			}

			pos = 0;
		}
	}

	fclose(fp);
	if (count)
		total += (acc / count);

	printf("Average is %lld\n", total);
}
