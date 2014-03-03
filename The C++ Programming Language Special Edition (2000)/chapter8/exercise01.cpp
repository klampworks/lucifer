/*
 * Exercise 1.
 *
 * Write a doubly-linked list of string module in the style of the Stack 
 * module from §2.4. Exercise it by creating a list of names of programming 
 * languages. Provide a sort () function for that list, and provide a function 
 * that reverses the order of the strings in it.
 *
 */

#include <string>
#include <iostream>

struct node {
	std::string value;
	node *parent;
	node *child;
};

void insert(node *head, std::string value)
{
	node *nn = new node;
	nn->value = value;
	nn->child = NULL;

	for (;head->child; head = head->child);

	nn->parent = head;
	head->child = nn;
}

void print(node *head)
{
	for (;head; head = head->child) 
		std::cout << head->value << std::endl;
}

void sort(node *head)
{
	for (node *i = head; i; i = i->child) {

		node *min = i;
		for (node *j = i->child; j; j = j->child) {
			if (j->value < min->value)
				min = j;
		}

		if (min != i) {
			std::string t = min->value;
			min->value = i->value;
			i->value = t;
		}
	}
}

int main()
{
	node *head = new node;
	head->value = "b one";
	head->parent = NULL;
	head->child = NULL;

	insert(head, "a two");
	insert(head, "c three");
	print(head);

	sort(head);
	print(head);
}
