/*
 * Exercise 2.
 *
 * Define a class INT that behaves exactly like an into Hint: Define 
 * INT::operator int().
 *
 */

class INT {
	int i;

	operator int() {
		return i;
	}
};

int main() {}
