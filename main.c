#include <stido.h>

int main() {
    char a[][16] = { "ibm             ", "dec             ", "dos             ", "vax             " };
    for (int i = 0; i < sizeof a / sizeof a[0]; i++) {
        for (int j = 0; j < 3; j++) {
            a[i][j] &= 0b11011111;
        }
        printf("%s\n", a[i][j]);
    }
    return 0;
}
