/*
 * Exercise 2.
 *
 * Write a singly-linked list class template that accepts elements of any type 
 * derived from a class Link that holds the information necessary to link 
 * elements. This is called an intrusive list.
 *
 */

struct link {
	link *suc;
	link(link *s)
		: suc(s){}
};

struct ilink : link {
	std::string value;
};


class intrustive_list {

	link *head;

	public:
	list() : head(NULL) {}
	list(link *l) : head(l) {}
};

int main() {}
