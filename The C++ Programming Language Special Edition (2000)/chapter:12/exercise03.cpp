/*
 * Exercicse 3.
 *
 * Define interfaces for Warrior, Monster, and Object (that is a thing you can 
 * pick up, drop, use, etc.) classes for an adventure-style game.
 *
 */

class object {
	const char *name;
	int wieght;
};

class chara {
	const char *name;
	int stats;
};

class monster : public chara {
	std::vector<object*> spoils;
};

class warrior : public chara {
	void pick_up(object*(;
};
