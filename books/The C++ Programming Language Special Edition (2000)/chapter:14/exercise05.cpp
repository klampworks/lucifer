/*
 * Exercise 5.
 *
 * Write a loop that computes the sum of a Vector as defined in § 14.12[6] 
 * without examining the size of the Vector. Why is this a bad idea?
 *
 */

template<typename T>
int total(const T &v)
{
	int ret;
	for (int i = 0;;++i) {
		try {
			/* Assuming .get throws. No internet can't check. */
			ret += v.get(i);
		} catch (...) {
			return ret;
		}
	}
}
