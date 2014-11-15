/*
 * Exercise 1.
 *
 * Define
 * class Base {
 * public:
 * virtual void iam () {cout < < II
 *  Base\n "; }
 *  } ;
 *
 *  Derive two classes from Base, and for each define iam () to write out the 
 *  name of the class. Create objects of these classes and call iam () for 
 *  them. Assign pointers to objects of the derived classes to Base* pointers 
 *  and call iam () through those pointers.
 *
 */

#include <iostream>

struct base {

	virtual void iam() { 
		std::cout << "Base." << std::endl;
	}
};

struct lucifer : base{

	void iam() {
		std::cout << "Lucifer of Pride." << std::endl;
	}
};

struct leviathan : base {

	void iam() {
		std::cout << "Leviathan of Envy." << std::endl;
	}
};

int main()
{
	base b; b.iam();
	lucifer lu; lu.iam();
	leviathan le; le.iam();

	base *bb = new base;
	bb->iam();
	
	base *luci = new lucifer;
	luci->iam();

	base *levi = new leviathan;
	levi->iam();
}
