/*
 * Exercise 3.
 *
 * Implement reverse_iterator (?19.2.5).
 *
 */

template<typename t>
struct rit {

	t *it;

	template<typename tt>
	rit(tt a) {
		it = a.end() -1;
	}

	t operator*() {
		return *it;
	};

	void operator++() {
		--it;
	}

	void operator--() {
		++it;
	}
};

int main(){}
