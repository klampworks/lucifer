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
