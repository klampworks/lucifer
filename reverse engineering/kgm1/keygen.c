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

  printf("in = %s\n", in);
  int j = 0; // $ecx
  for (int i = 0; i < 8; ++i) {
    if (strncmp(in, "aaaaaaa", 7) == 0) {
      printf("jj = 0x%x\n", j);
    }
    j += input[i];
  }
  /* j should be 1 but we get 0x62 */

      //printf("&jj = 0x%x\n", j);
j &= 0xff;
      //printf("jj& = 0x%x\n", j);
  free(input);
  return j;
}

int main()
{
  char input[] = "!aaaaaaaa";


//local_1ch must be the 9th character
//0x1c - 0x14 = 8
//if (j != input[8]) {
//  return bad_key;
//}

  int j = 0;
  for (int a = '!'; a < '~'; ++a) {
    for (int b = '!'; b < '~'; ++b) {
      input[0] = a;
      input[1] = b;

      j = find_j(input);
      if ( (j > 0x61 && j < 0x61 + 0x19 ) ) {
        printf("j = %x\n", j);
        input[8] = j;
        printf("Found a key:\n%s\n", input);
        exit(0);
      }
    }
  }
  printf("sorry\n");
  exit(1);
  do {
    input[0] += 1;
    j = find_j(input);
    printf("j = %d\n", j);
  } while ( !(j > 0x61 && j < 0x61 + 0x19 ) );

  input[8] = j;
  printf("%s\n", input);
//if (0x19 > j - 0x61) {
//  return bad_key;
//}
}
