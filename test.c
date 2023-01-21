#include <stdio.h>

int main(int argc, char *argv[]) {
  int (*p)[3];
  int a[3] = {1, 2, 3};

  p = &a;

  printf("%d", *p[0]);
  printf("%d", **p);

  return 0;
}
