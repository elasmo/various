/*
 * Get length of file
 * Opens a file in ro-mode with fopen(), sets file position to 0
 * with fseek() and seeks to EOF and then resets position.
 * by diox
 */
#include <stdio.h>

long lof(FILE *fp) {
  long len;

  /* Set file position to 0 and seek to file end */
  fseek(fp, 0, SEEK_END);

  /* Get current position in file */
  len = ftell(fp);

  /* Set file position to 0 */
  fseek(fp, 0, SEEK_SET);

  /* Return length in bytes */
  return len;
}

int main(void) {
  FILE *fp;

  /* Open file */
  if((fp = fopen("lof.c", "r")) == NULL) {
     fprintf(stderr, "Read error.\n");
     return 1;
  }

  /* Print length of file */
  printf("%ld bytes\n", lof(fp));

  /* Close file */
  fclose(fp);

  return 0;
}
