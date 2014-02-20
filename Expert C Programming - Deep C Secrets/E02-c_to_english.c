#include <stdio.h>
#include <assert.h>
#define MAXTOKENLEN 255
#define MAXTOKENS 255

struct token {
	char type;
	char string[MAXTOKENLEN];
};

struct token stack[MAXTOKENS];
struct token this;
const char *input;

void gettoken()
{
	const char *st = input;
	const char *en = input;

	int i;
	for (i = 0; *en && *en != ' '; ++en, ++i) {
		this.string[i] = *en;
	}
	this.string[i] = '\0';

	if (st == en)
		return;

	/* Single character. */
	if (st - en == 1 
		/* Not [0-9] */
		&& !(*st > 47 && *st < 58)
		/* Not [A-Z] */
		&& !(*st > 64 && *st < 91)
		/* Not [a-z] */
		&& !(*st > 96 && *st < 123)) {

		this.type = *st;
	}
		
	//classify_string();
	printf("Parsed: %s\n", this.string);

	input = *en? en + 1 : en;
}

void read_to_first_identifier()
{

}

int main(int argc, char **argv)
{
	assert(argc == 2);
	input = argv[1];
	gettoken();
	gettoken();

}
