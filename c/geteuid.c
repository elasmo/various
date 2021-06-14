#include <stdio.h>
#include <unistd.h>

int main(int argc, char** argv) {
    setuid(0);
    printf("%d\n", getuid());
    return 0;
}
