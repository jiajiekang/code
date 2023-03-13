int a[5];
int b[5];

int main (int argc, char *argv[])
{
  for (int i = 0; i < 5; i++) {
    a[i] &= 0xDF;
    b[i] |= 0x20;
  }
  return 0;
}
