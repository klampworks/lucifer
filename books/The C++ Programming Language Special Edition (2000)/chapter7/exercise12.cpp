/*
 * Exercise 12.
 *
 * How would you choose names for pointer to function types defined using 
 * typedeJ?
 *
 */

typedef int(*fn_t)(int, char**);

int main(int argc, char **argv)
{
	fn_t fn = &main;
	fn(argc, argv);
}
