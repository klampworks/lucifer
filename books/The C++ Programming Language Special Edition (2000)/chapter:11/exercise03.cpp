/*
 * Exercise 3.
 *
 * Complete class Ptr_to_ T from § 11.11 and test it. 
 *
 */

template <typename T>
class ptr_to_t {
	T *p;
	T *array;
	int size;

	public:
	ptr_to_t(T *p, T *v, int s)
	{
		array = new v[s];
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
		if ((p+1 - array) < size)
			++p;
	}

	ptr_to_t& operator--()
	{
		if ((p-1 >= array)
			--p;
	}
};
