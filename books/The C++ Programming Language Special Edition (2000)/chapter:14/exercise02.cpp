/*
 * Exercise 2.
 *
 * Complete the Ptr_to_T class from § 11.11 as a template that uses exceptions 
 * to signal run-time errors.
 *
 */
#include <exception>

class out_of_range : std::exception {};

template <typename T>
class ptr_to_t {
	T *p;
	T *array;
	int size;

	public:
	ptr_to_t(T *p, T *v, int s)
	{
		array = new T[s];
		size = s;

		for (int i = 0; i < size; ++i)
			array[i] = *p;

		p = array;
	}

	ptr_to_t(T *p)
	{
		array = new T;
		*array = *p;
		size = 1;

		p = array;
	}

	ptr_to_t& operator++()
	{
		if ((p+1 - array) >= size)
			throw out_of_range();

		++p;
	}

	ptr_to_t& operator--()
	{
		if (p-1 < array)
			throw out_of_range();

		--p;
	}
};
