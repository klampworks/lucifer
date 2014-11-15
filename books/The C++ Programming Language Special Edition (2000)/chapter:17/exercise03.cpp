/*
 * Exercise 3.
 *
 * Define a queue using (only) two stacks.
 *
 */

#include <vector>

template <typename t>
class queue {

	std::vector<t> one;
	std::vector<t> two;

	void push(const t &a) {	
		one.push_back(a);
	}

	void flip() {
		while(!one.empty()) {
			two.push_back(one.back());
			one.pop_back();
		}
	}

	t pop() {
		t ret = two.back();
		two.pop_back();
		return ret;
	}
};

int main(){}
