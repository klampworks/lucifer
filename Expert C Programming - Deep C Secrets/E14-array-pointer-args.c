#include <assert.h>

char ga[] = {'a', 'b', 'c'};

void fun1(char *ca)
{
	printf("%p\n", &ca);
	printf("%p\n", &(ca[0]));
	printf("%p\n", &(ca[1]));

	/* Pointer not array! */
	assert(&ca != &(ca[0]));

	assert(ca == &(ca[0]));
	assert(&(ca[0]) + 1 == &(ca[1]));
}

void fun2(char *pa)
{
	printf("%p\n", &pa);
	printf("%p\n", &(pa[0]));
	printf("%p\n", &(pa[1]));
	printf("%p\n", ++pa);
}

int main()
{
	fun1("he");
	fun2("he");

	printf("%p\n", &ga);
	printf("%p\n", &(ga[0]));
	printf("%p\n", &(ga[1]));

	/* Array not pointer! */
	assert(&ga == &(ga[0]));
}
