#include <stdio.h>

void bus_error()
{
	union { 
		char a[10];
		int i;
	} u;

	int *p = (int*)&(u.a[1]);
	*p = 17;
}

void segfault()
{
	int *p = 0;
	*p = 17;
}

int main()
{
	bus_error();

}
