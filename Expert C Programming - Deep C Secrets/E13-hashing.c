/*
 * Exercise 13: Write a Hash Program
 *
 * Type in the fragment of code above, and supply enough of the missing types, 
 * data, and code to get it running as a program. Then (horrors!) debug it 
 * into existence.
 *
 */

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#define FILE_HASH 10

struct file {
	char *fname;	
	struct file *flink;
};

struct file *file_hash_table[FILE_HASH] = {NULL};

int hash_filename(char *s)
{
	/* Disable hashing to test the linked link. */
	#if 0
	return 0;
	#endif

	int length = strlen(s);
	return (length+4*(s[0]+4*s[length/2])) % FILE_HASH;
}

struct file* find_filename(char *s)
{
	int hash_value = hash_filename(s);
	struct file *f;

	for (f = file_hash_table[hash_value]; f != NULL; f = f->flink) {

		if (!strcmp(f->fname, s))
			return f;
	}

	/* File not found, create new one. */
	f = malloc(sizeof *f);

	size_t len = strlen(s);
	f->fname = malloc(len + 1);
	strcpy(f->fname, s);
	assert(!f->fname[len]);

	f->flink = file_hash_table[hash_value];
	file_hash_table[hash_value] = f;
	return f;
}

int main()
{
	struct file *f;
	f = find_filename("one");
	assert(!strcmp(f->fname, "one"));

	f = find_filename("two");
	assert(!strcmp(f->fname, "two"));

	f = find_filename("three");
	assert(!strcmp(f->fname, "three"));

	f = find_filename("three");
	assert(!strcmp(f->fname, "three"));

	/* Validate that the linked list works without hashing. */
	#if 0
	f = file_hash_table[0];
	assert(!strcmp(f->fname, "three"));

	f = f->flink;
	assert(!strcmp(f->fname, "two"));

	f = f->flink;
	assert(!strcmp(f->fname, "one"));

	f = f->flink;
	assert(!f);
	#endif
}
