/*
 * Exercise 3.
 *
 *  Write intrusive and non-intrusive doubly-linked lists. What operations 
 *  should be pro-vided in addition to the ones you found necessary to supply 
 *  for a singly-linked list?
 *
 */

struct link {
	link *pre;
	link *suc;
	link(link *p, link *s)
		: pre(p), suc(s){}
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
