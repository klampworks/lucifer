/*
 * Exercise 1.
 *
 * Implement reverse () from ? 18.6.7. Hint: See ? 19.2.3.
 *
 */

#include <vector>
#include <iostream>

template <class Bi>
void reverse(Bi first, Bi last)
{
	for(--last; first < last; ++first, --last) {
		
		auto a = *first;
		*first = *last;
		*last = a;
	}
}

int main()
{
	std::vector<char> v({
		'a',
		'b',
		'c',
	});

	reverse(v.begin(), v.end());

	for (auto a : v)
		std::cout << a << std::endl;
}
