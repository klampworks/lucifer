/*
 * Exercise 1.
 *
 * Generalize the STC class (§ 14.6.3.1) to a template that can use the 
 * "resource acquisition is initialization" technique to store and reset 
 * functions of a variety of types.
 *
 */

unexpected_handler set_unexpected(unexpected_handler);

template <typename fn>
class STC {
	fn old;

	public:
	STC(fn f)
	{
		old = set_unexpected(f);
	}

	~STC()
	{
		set_unexptected(old);
	}
};
