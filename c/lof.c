#include <stdio.h>
#include <stdlib.h>

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

int main(int argc, char *argv[]) {
	if(argc != 2) {
		fprintf(stderr, "Usage: %s <file>\n", argv[0]);
		exit(1);
	}

	FILE *fp;

	/* Open file */
	if((fp = fopen(argv[1], "r")) == NULL) {
        perror("fopen");
		return 1;
	}

	/* Print length of file */
	printf("%ld bytes\n", lof(fp));

	/* Close file */
	fclose(fp);

	return 0;
}
