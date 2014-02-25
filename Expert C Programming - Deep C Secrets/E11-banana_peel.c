/*
 * Exercise 11: How to Fake Out Prototypes
 *
 * Try a few examples to clarify the issues here. Create the following 
 * function in a file of its own.
 *
 * Try calling it with and without a prototype, and with a prototype that 
 * doesn't match the definition.
 * In each case, predict what will happen before trying it. Check your 
 * prediction by writing a union that allows you to store a value of one 
 * type, and retrieve another of a different size. Does changing the order of 
 * the parameters (in the declaration and the definition) affect how the 
 * values are perceived in the called function? Account for this. How many 
 * of the error cases does your compiler catch?
 *
 */

#include <stdio.h>
#include "E11-banana_peel.h"

void banana_peel(int, int, float);
int main()
{
	banana_peel((char)92, (short)255, 66600.0);
}
