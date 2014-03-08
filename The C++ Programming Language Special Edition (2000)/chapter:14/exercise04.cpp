/*
 * Exercise 4.
 *
 * Write a complete Vector template with Range and Size exceptions.
 *
 */

#include <exception>

class range : std::exception};

template <typename t>
struct Vector {

	std::vector<t> v;
	t& get(size_t pos) throw (range)
	{
		if (pos > v.size)
			throw range();
		return v[pos];
	}
};
