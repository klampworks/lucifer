/* 
 * Exercise 4.
 *
 * Write a program that prints out the letters ' a ' .. ' z' and the digits 
 * ' 0 ' .. ' 9' and their integer values. Do the same for other printable 
 * characters. Do the same again but use hexa-decimal notation.
 *
 */

#include <cstdio>

int main()
{
	for (int i = 'a'; i <= 'z'; ++i)
		printf("%c\t%d\t%x\n", i, i, i);

	for (int i = '0'; i <= '9'; ++i)
		printf("%c\t%d\t%x\n", i, i, i);
}
