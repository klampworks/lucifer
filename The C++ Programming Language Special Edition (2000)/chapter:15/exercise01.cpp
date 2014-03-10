/*
 * Exercise 1.
 *
 * Write a template ptr_cast that works like dynamic_cast, except that it 
 * throws bad_cast rather than returning O.
 *
 */

#include <exception>
class base {

};

class dev : public base {

};

template <typename a, typename b>
b* cast(a *in)
{
	b *ret = dynamic_cast<b*>(in);
	if (!ret)
		throw std::exception();
}

int main()
{
	dev *s = new dev;
	base *i = cast<dev, base>(s);

}
