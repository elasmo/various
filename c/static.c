/**
 * Example: static variables
 *
 * - A static variable inside a function keeps its value between invocations.
 *   (use sparingly since it's not thread-safe and makes the code harder to
 *   understand)
 * - A static global variable or a function is "seen" only in the file it's 
 *   declared in. This is called encapsulation and is a good practise.
 *
 *   Ref: stackoverflow.com
*/

#include <stdio.h>

void foo()
{
    int a = 10;
    static int sa = 10;

    a += 5;
    sa += 5;

    printf("a = %d, sa = %d\n", a, sa);
}


int main()
{
    int i;

    for (i = 0; i < 10; ++i)
        foo();
}
