/*
 * Exercise 1.
 *
 * In the following program, which conversions are used in each expression?
 *
 */

struct X {
	int i;
	X(int) ;
	X operator+(int);
};

struct Y {
	int i;
	Y(X);
	Y operator+(X);
	operator int();
};

extern X operator*(X, Y);
extern int f(X);

X x= 1;
Y y=x;
int i = 2;

int main()
{
	i + 10;
	y + 10; /* Ambiguous overload. */
	y+10*y;   /* Ambiguous overload. */
	x + y + i;
	 x*x+i;
	f(7);
	f(y); /* Ambiguous overload. */
	y + y;
	106 + y;
}
