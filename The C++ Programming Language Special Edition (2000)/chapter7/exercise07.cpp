/*
 * Exercise 7.
 *
 * Consider:
 * struct Tnode {
 * string word;
 * int count;
 * Tnode* left;
 * Tnode* right;
 * } ;
 *
 *   Write a function for entering new words into a tree of Tnodes. 
 *   Write a function to write out a tree of Tnodes. Write a function to write 
 *   out a tree of Tnodes with the words in alphabetical order. Modify Tnode 
 *   so that it stores (only) a pointer to an arbitrarily long word stored as an
 *   array of characters on free store using new. Modify the functions to use 
 *   the new definition of Tnode.
 *
 */

#include <string>
#include <iostream>

struct Tnode {
	std::string word;
	int count;
	Tnode* left;
	Tnode* right;

	Tnode(const std::string &s) {
		word = s;
		left = NULL;
		right = NULL;
	};
};

void insert(Tnode *parent, Tnode *node)
{
	if (!parent->left) {
		parent->left = node;
		return;
	} else if (!parent->right) {
		parent->right = node;
		return;
	}

	if (node->word < parent->word)
		insert(parent->left, node);
	else
		insert(parent->right, node);
}

void write(Tnode *node)
{
	if (!node)
		return;

	write(node->left);
	std::cout << node->word << std::endl;
	write(node->right);
}

int main()
{
	Tnode *root = new Tnode("root");;
	Tnode *one = new Tnode("one");
	Tnode *two = new Tnode("two");

	insert(root, one);
	insert(root, two);

	write(root);
}

