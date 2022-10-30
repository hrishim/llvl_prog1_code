#include "uart.h"

void main() {
  int i;
  for(i = 0; i < 10; i++) {
    if (i % 2 != 0)
      continue;

    uart_puts("Value of i: ");
    uart_print_num(i);
  }

  uart_puts("After the loop i is:");
  uart_print_num(i);
}

