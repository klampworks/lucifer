/*
 * Exercise 03: Look at the Segments in an Executable
 *
 * 1. Compile the "hello world" program, run ls -l on the executable to get 
 * its overall size, and run size to get the sizes of the segments within it.
 *
 * 2. Add the declaration of a global array of 1000 ints, recompile, and 
 * repeat the measurements. Notice the differences.
 *
 * 3. Now add an initial value in the declaration of the array (remember, 
 * C doesn't force you to provide a value for every element of an array in 
 * an initializer). This will move the array from the BSS segment to the data 
 * segment. Repeat the measurements. Notice the differences.
 *
 * 4. Now add the declaration of a big array local to a function. Declare a 
 * second big local array with an initializer. Repeat the measurements. Is 
 * data defined locally inside a function stored in the executable? Does it 
 * make any difference if it's initialized or not?
 *
 * 5. What changes occur to file and segment sizes if you compile for 
 * debugging? For maximum optimization?
 *
 */

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
