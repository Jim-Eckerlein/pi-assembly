#include <stdio.h>
#include <stdlib.h>

extern double pi(long x);

int main(int argc, char **argv) {
    int x = 100000000;
    if (argc >= 2)
        x = strtol(argv[1], NULL, 0);
    double r = pi(x);
    printf("Result: %.16lf\n", r);

    return 0;
}
