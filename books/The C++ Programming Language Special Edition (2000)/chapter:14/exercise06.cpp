/*
 * Exercise 6.
 *
 *  Given a
 *  int main () { / * ... * / }
 *  change it so that it catches all exceptions, turns them into error 
 *  messages, and abort ( ) s. Hint: callJrom_ C () in § 14.9 doesn't quite 
 *  handle all cases.
 *
 */

#include <exception>
#include <iostream>

int main()
{
	try {
		//...
	} catch (std::exception e) {
		std::cout << e.what() << std::endl;
		return 1;
	}
}

