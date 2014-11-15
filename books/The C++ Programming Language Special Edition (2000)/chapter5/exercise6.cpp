/* 
 * Exercise 6.
 *
 * Define functions f(char) , g(char&) , and h(const char&). Call them with 
 * the arguments 'a', 49, 3300, c, uc, and sc, where c is a char, uc is an 
 * unsigned char, and sc is a signed char. Which calls are legal? 
 *
 */


void f(char){}
void g(char&){}
void h(const char&){}

int main()
{
	char a = 'a';
	unsigned char b = 'b';
	signed char c = 'c';

	f('a');
	f(49);
	f(3300); /* Overflow but legal. */
	f(a);
	f(b);
	f(c);

	//g('a'); /* Illegal, cannot reference an rvalue. */
	//g(49);  /* Illegal, cannot reference an rvalue. */
	//g(3300); /* Illegal, cannot reference an rvalue. */
	g(a);
	//g(b); /* Illegal, Reference must be the same type. */
	//g(c); /* Illegal, Reference must be the same type. */

	h('a'); 
	h(49);  
	h(3300); /* Overflow but legal. */
	h(a);
	h(b); 
	h(c); 

}
