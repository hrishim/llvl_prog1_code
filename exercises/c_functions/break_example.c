
#include "uart.h"

void main() {
  int i= 0;

  do {
    if (i > 4)
      break;

    uart_puts("Value of i: ");
    uart_print_num(i);
    i++;
  } while(i < 5);

  uart_puts("After the loop i is:");
  uart_print_num(i);
}

