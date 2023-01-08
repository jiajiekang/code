#include <stdio.h>

struct company {
    char cn[3];
    char hn[9];
    short pm;
    short sr;
    char cp[3];
};

struct company dec = {"DEC", "Ken Olsen", 137, 40, "PDP"};

int main() {
    int i;
    dec.pm = 38;
    dec.sr += 70;
    
    i = 0;
    dec.cp[i] = 'V';
    i++;
    dec.cp[i] = 'A';
    i++;
    dec.cp[i] = 'A';

    return 0;
}
