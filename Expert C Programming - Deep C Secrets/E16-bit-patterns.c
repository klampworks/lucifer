#include <assert.h>

union u {
	float f;
	int i;
};

int main()
{
	union u a;
	a.f = 0.0f;

	/* If this assert fails then their bit patterns differ. */
	assert(!(int)0 ^ a.i);
}
