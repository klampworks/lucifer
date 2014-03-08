/*
 * Exercise 2.
 *
 * Define new_char_vec () to allocate contiguous memory for a Char_vec object 
 * so that the ele-ments can be indexed through element as shown. Under what 
 * circumstances does this trick cause serious problems?
 *
 */

#include <cassert>

class char_vec {
	int sz;
	char element[1];

	public:
	static char_vec* new_char_vec(int size) {

		char_vec *ret = new char_vec[size];
		ret->sz = size;
		return ret;
	}

	char& operator[] (int i) { return element[5*i]; }
};

int main()
{
	char_vec *v = char_vec::new_char_vec(5);
	(*v)[3] = 'h';
	assert((*v)[3] == 'h');
}
