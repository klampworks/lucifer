/*
 * Exercise 1.
 *
 * Write declarations for the following: a function taking arguments of type 
 * pointer to charac-ter and reference to integer and returning no value; a 
 * pointer to such a function; a function tak-ing such a pointer as an 
 * argument; and a function returning such a pointer. Write the definition
 * of a function that takes such a pointer as an argument and returns its 
 * argument as the return value.
 *
 */

void fn_1(char *c, int &i);
void(*fn_2)();
void fn_3(void(*fn)());
void (*fn_4())();

int main(){}
