#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int find_j(const char *in)
{
  char *input = strdup(in);

  const unsigned char hardcoded[] = {0x08, 0x45, 0x36, 0xab, 0xc8, 0xcc,
    0x11, 0xe3, 0x7a, 0x00};

  for (int i = 1; i < 10; ++i) {
    input[i - 1] ^= hardcoded[i];
  }

  int j = 0;
  for (int i = 0; i < 8; ++i) {
    j += input[i];
  }

  j &= 0xff;
  free(input);
  return j;
}

int main()
{
  char input[] = "aaaaaaaaa";

  int j = 0;
  for (int a = '!'; a < '~'; ++a) {
    for (int b = '!'; b < '~'; ++b) {
      input[0] = a;
      input[1] = b;

      j = find_j(input);
      if (j > 0x61 && j < 0x61 + 0x19 ) {
        input[8] = j;
        printf("Found a key:\n%s\n", input);
        exit(0);
      }
    }
  }

  printf("sorry\n");
}

