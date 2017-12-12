#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    const char *hexstring = "e";
    int number = (int)strtol(hexstring, NULL, 16);

    printf("%x\n", number);

    printf("%ld\n", strtol("e", NULL, 16));

    return 0;
}

