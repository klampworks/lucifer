/*
 * Exercise 2.
 *
 * Write an output iterator, Sink, that doesn't actually write anywhere. 
 * When can Sink be useful?
 *
 */

#include <iterator>

template<typename t>
class sink : public std::iterator<t> {

	private:
	t operator*();
};

int main(){}
