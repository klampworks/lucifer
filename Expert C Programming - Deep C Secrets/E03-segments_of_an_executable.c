#include <stdio.h>

/*
 * Initial.
 * ls -l 7990
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2196     680       8    2884     b44 a.out
 */

/* With global uninitialised array.
 * ls -l 8018
 *
 * size 
 *    text    data     bss     dec     hex filename
 *    2196     680     432    3308     cec a.out
 */

/* With gloabl initialised array.
 * ls -l 8434
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2196    1096       8    3300     ce4 a.out
 */

/* With local uninitisalised array.
 * ls -l 7990
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2196     680       8    2884     b44 a.out
 */

/* With local initialised array.
 * ls -l 7990
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2252     680       8    2940     b7c a.out
 */

/* Initial with debugging symbols.
 * ls -l 9110
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2196     680       8    2884     b44 a.out
 */

/* Initial with -03.
 * ls -l 7990
 *
 * size
 *    text    data     bss     dec     hex filename
 *    2196     680       8    2884     b44 a.out
 */

//int arr[100];
//int arr[100] = {1};

int main()
{
	//int arr[100];
	//int arr[100] = {1};
	printf("Hello world\n");
	return 0;
}
