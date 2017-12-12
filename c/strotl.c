#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char cipher[] ="da173a63153da04e4ee646a169712fce\0";

    for(int n=0; n < strlen(cipher); n++) {
        printf("%d\n", (int)strtol(&cipher[n], NULL, 16));
    }

    return 0;
}

