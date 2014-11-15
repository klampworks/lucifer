/*
 * Exercise 8.
 *
 * Rewrite Tnode from §7.1 0[7] as a class with constructors, destructors, 
 * etc. Define a tree of Tnodes as a class with constructors, destructors, etc
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

struct tree {

	Tnode *root;

	tree(const std::string &a)
	{
		root = new Tnode(a);
	}

	void insert(const std::string &a)
	{
		Tnode *node = new Tnode(a);
		insert(root, node);
	}

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

	void write()
	{
		write(root);
	}

	void write(Tnode *root)
	{
		if (!root)
			return;

		write(root->left);
		std::cout << root->word << std::endl;
		write(root->right);
	}

	void rm(Tnode *root)
	{
		if (!root)
			return;

		rm(root->left);
		rm(root->right);
		delete root;
		root = NULL;
	}

	~tree()
	{
		rm(root);
	}
};



int main()
{
	tree t("root");
	t.insert("one");
	t.insert("two");

	t.write();
}

