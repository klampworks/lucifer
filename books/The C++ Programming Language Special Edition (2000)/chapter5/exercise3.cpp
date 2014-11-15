/*
 * Exercise 3.
 *
 * Use typedefto define the types unsigned char, const unsigned char, pointer 
 * to integer, pointer to pointer to char, pointer to array of char, array of 
 * 7 pointers to int, pointer to an array of 7 pointers to int, and array of 
 * 8 arrays of 7 pointers to into
 *
 */

typedef unsigned char a;
typedef const unsigned char b;
typedef int* c;
typedef char** d;
typedef char* e[];
typedef int* f[7];
typedef int** g[7];
typedef int * h[8][7];

int main(){}
