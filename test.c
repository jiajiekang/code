#include <stdio.h>

int main(int argc, char *argv[]) {
  int(*daytab)[13];
  printf("%ld\n", sizeof *daytab / sizeof(int));
  return 0;
}
