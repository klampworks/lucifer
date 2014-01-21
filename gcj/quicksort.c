#include <stdio.h>

void quicksort(int *list, int len)
{
	printf("Len = %d\n", len);
	/* We cannot sort a list of zero or one items.
	 * This is also the base case for recursing. */
	if (len < 2)
		return;

	/* Find a pivot, we'll just take the middle element. */
	int pivot = list[len / 2];
	int *left = list;
	int *right = list + len - 1;

	while (left <= right) {

		/* If left is smaller than the pivot 
		 * it is in the right place. */
		if (*left < pivot) {
			left++;
			continue;
		}

		/* If right is bigger than the pivot
		 * it is in the right place. */
		if (*right > pivot) {
			right--;
			continue;
		}

		/* We have a left and/or right that is on the
		 * wrong side of the pivot. We need to swap them. */
		int tmp = *left;
		*left = *right;
		*right = tmp;

		left++;
		right--;
	}

	/* Recursive call with the left and right segments. */

	/* From start to right. */
	int left_len = right - list + 1;

	/* From left to the end. */
	int right_len = (list + len) - left;

	quicksort(list, left_len);
	quicksort(left, right_len);
}

main()
{
	int list[] = {
	43,43,6,4,3,7,2,6,2,2,6,6,78,
	7,64,56,44,63,37,37,3,76,6};

	int len = 22;
	quicksort(list, len);
	
	int i;
	for (i = 0; i < 22; i++)
		printf("%d\n", list[i]);

}
