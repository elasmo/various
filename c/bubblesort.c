/*
 * Bubble sort example
 * by diox
 */
#include <stdio.h>

#define N_ELEMS 5

void bsort(int *data)
{
	int m,n;
	int temp;
	
	for(m = N_ELEMS; m > 0; m--) {
		for(n = 0; n < m; n++) {
			if(data[n] > data[n+1]) {
				temp = data[n];
				data[n] = data[n+1];
				data[n+1] = temp;
			}
		}
	 }
}

int main()
{
	int numbers[N_ELEMS] = { 67, 54, 120, 63, 34 };
	int l;

	bsort(numbers);

	printf("Sorted: ");

	for(l = 0; l < N_ELEMS; l++)
		printf("%d ", numbers[l]);

	printf("\n");

	return 0;
}
