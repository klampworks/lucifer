/*
 * Exercise 4.
 *
 * Write a List of pointers that deletes the objects pointed to when it 
 * itself is destroyed or if the element is removed from the List.
 *
 */

#include <vector>

template<typename t>

class list {

	std::vector<t*> vals;

	void append(t* a) {
		vals.push_back(a);
	}

	void pop() {
		if (vals.empty()) 
			return;

		delete vals.back();
		vals.pop_back();
	}

	~list() {
		for (t* a : vals)
			delete a;
	}
};

int main(){}
