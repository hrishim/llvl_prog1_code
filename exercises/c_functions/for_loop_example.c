#include "uart.h"
int NUM = 5;
void main() {
  int i;
  for(i = 0; i < NUM; i++) {
    uart_puts("Value of i: ");
    uart_print_num(i);
  }
}
