#include "uart.h"
int SAMPLE_VALUE = 5;
void main() {
  int i= 0;

  while(i < SAMPLE_VALUE) {
    uart_puts("Value of i: ");
    uart_print_num(i);
    i++;
  }

  uart_puts("After the loop i is:");
  uart_print_num(i);
}
