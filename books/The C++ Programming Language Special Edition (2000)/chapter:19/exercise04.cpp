/*
 * Exercise 4.
 *
 * Implement ostream_iterator (?19.2.6).
 *
 */
#include <iostream>

template<typename t>
class osit {

	t os;

	template<typename tt>
	void operator*(tt v) {
		os << v;
	}
};

int main(){}
