#include <stdio.h>
#include <errno.h>
#include <assert.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *a = "d3b07384d113edec49eaa6238ad5ff00";

    size_t len_a = strlen(a);

    assert((len_a & 1) == 0); // length must be an even number

    int i;

    for(i = 0; i < len_a; i+=2) {

        // One char in the string (0xD) is an octet (d = 13, f = 15) = 4 bits
        // Two chars are hexidecimal (dd = 221, ff = 255) = 8 bits
        // We will read 8 bits - 2 characters - at a time

        char hex[3] = {a[i], a[i + 1], '\0'};
        // (^ same as memcpy(buf, &a[i], 2))

        // Ask strtol to convert the 2-character string to a number. 
        // We let strtol know that the input is a hex value by setting the
        // base to 16. If we just read 4 bits (1 char), then the base needs to
        // be 8.
        uint8_t byte = strtol(hex, NULL, 16);
        if(errno == ERANGE)
            abort();

        printf("hex %x = decimal %d\n", byte, byte);
    }
}
