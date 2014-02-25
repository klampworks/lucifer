#include <stdio.h>
#include <stdlib.h>


void error(const char *err)
{
	printf("%s\n", err);
	exit(1);
}

void add_element(char c)
{
	static char *dynamic = NULL;
	static int current_element = 0;
	static int total_element = 1;

	if (!dynamic) {

		dynamic = malloc(total_element);
	} else if (current_element == total_element - 1) {

		total_element*=2;
		char *dyn_tmp = realloc(dynamic, total_element);

		if (!dyn_tmp) {
			printf("Couldn't expand the table.\n");
			return;
		} else {
			dynamic = dyn_tmp;
		}
	}

	current_element++;
	dynamic[current_element] = c;
}

int main()
{
	add_element('a');
	add_element('b');
}
