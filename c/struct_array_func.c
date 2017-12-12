/*
 * Routines to set and show data in struct arrays by passing
 * a pointer.
 * by diox
 */
#include <stdio.h>
#include <stdlib.h> /* malloc */
#include <string.h> /* memset */

#define NELEMS 10 

typedef struct {
  int c;
  char *str;
} data_t;

void setdata(data_t *myData, int index, int c, char *str) {
  myData[index].c = c;
  myData[index].str = str;
}

void showdata(data_t *myData) {
  int i;
  for(i = 0; i < NELEMS; i++) {
    printf("%d: c = %d, str = %s\n", i, myData[i].c, myData[i].str);
  }
}

int main(void) {
  size_t bytes = NELEMS * sizeof(data_t);

  /* Allocate memory and nullify it */
  data_t *myData = malloc(bytes);
  memset(myData, 0, bytes);

  /* Set c to 12, str to "Hello world" at array index 2 */
  setdata(myData, 2, 12, "Hello world");

  /* Show all elements  */
  showdata(myData);

  /* Free memory */
  free(myData);

  return 0;
}
