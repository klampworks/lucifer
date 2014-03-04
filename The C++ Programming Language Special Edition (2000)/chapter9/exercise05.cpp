/*
 * Exercise 5.
 *
 * An external include guard is a construct that tests outside the file it is 
 * guarding and includes only once per compilation. Define such a construct, 
 * devise a way of testing it, and dis-cuss its advantages and disadvantages 
 * compared to the include guards described in §9.3.3. Is there any 
 * significant run-time advantage to external include guards on your system?
 *
 */

#ifndef A
#define A
#include "A.cpp"
#endif
