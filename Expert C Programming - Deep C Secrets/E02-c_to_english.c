#include <stdio.h>
#define MAXTOKENLEN 255
#define MAXTOKENS 255

struct token {
	char type;
	char string[MAXTOKENLEN];
};

struct token stack[MAXTOKENS];
struct token this;

int main(int argc, char **argv)
{

}
