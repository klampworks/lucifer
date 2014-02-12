#include <stdio.h>
#include <assert.h>

void mergsort(void **input, int len, int(*cmp)(void *a, void *b))
{
	if (len < 2)
		return;

	for (int j = 1; j < len; ++j) {

		void *key = input[j];
		int i = j - 1;

		while (i >= 0 && cmp(input[i], key)) {

			input[i+1] = input[i];
			--i;
		}

		input[i+1] = key;
	}
}

void print_array(int *input, int len)
{
	for (int i = 0; i < len; i++)
		printf("%d\n", input[i]);
}

int greater(int a, int b)
{
	return a >= b;
}

int lesser(void *a, void *b)
{
	return (int)*a <= (int)*b;
}

void verify(int *input, int len, int(*cmp)(int a, int b))
{
	if (len < 2)
		return;

	for (int i = 2; i < len; ++i)
		assert(cmp(input[i], input[i-1]));
}

int main()
{

	int input[] = {31, 41, 59, 26, 41, 58};
	int length = sizeof input / sizeof(input[0]);

	mergsort(&input, length, &lesser);
	print_array(input, length);
	verify(input, length, &lesser);
}
