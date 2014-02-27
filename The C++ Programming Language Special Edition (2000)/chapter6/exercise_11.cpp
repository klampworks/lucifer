/*
 * Exercise 11.
 *
 * See how your compiler reacts to these errors:
 * void f(int a, int b)
 * {
 * 	if (a = 3) / / ...
 * 	if (a&077 == 0) / / ...
 * 	a : = b+1;
 */

int main()
{
	int a, b;

	if (a=3); /*With -Wall -- warning: suggest parentheses around 
		    assignment used as truth value [-Wparentheses. */

	if (a&077 ==0); /*With -Wall -- warning: suggest parentheses around 
			comparison in operand of ‘&’ [-Wparentheses] */

	a := b+1; /* error: expected primary-expression before ‘=’ token */
}
