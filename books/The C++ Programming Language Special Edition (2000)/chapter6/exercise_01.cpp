/*
 * Exercise 1.
 *
 * Rewrite the following for statement as an equivalent while statement:
 *
 * for (i=O; i<max_length; i++) if (input_line[i] == '?') quest_count++;
 *   Rewrite it to use a pointer as the controlled variable, that is, so that 
 *   the test is of the form *p== '? ' .
 *
 */
#include <cassert>

int main()
{
	const char input[] = "test?";
	int quest_count = 0;
	const char *i = input;
	
	while(*i++) if (*i == '?') ++quest_count;
	assert(quest_count == 1);
}
