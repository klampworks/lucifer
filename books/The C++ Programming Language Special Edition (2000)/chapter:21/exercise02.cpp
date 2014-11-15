/*
 * Exercise 2.
 *
 * Define a type Name_and_address. Define << and >> for it.
 *
 */

class name_and_address {

	std::string name;

	&name_and_address operator<<(const std::string &other) {
		name += other;
		return *this;
	}

	&name_and_address operator>>(std::string other) {
		other += name;
		return *this;
	}
};
