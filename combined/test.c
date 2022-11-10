#include <stdio.h>

extern size_t add_a(size_t a, size_t b);
extern size_t add_b(size_t a, size_t b);

int main(void) {
  printf("hello!\n");
  printf("a: %lu\n", add_a(1, 2));
  printf("b: %lu\n", add_b(2, 3));
  return 0;
}
