#include "uart.h"
int SAMPLE_VALUE = 25;

void main() {
  int x = SAMPLE_VALUE;

  switch (x) {
    case 5:
      uart_puts("X is 5");
      break;
    case 10:
    case 15:
      uart_puts("X is 10 or 15");
      break;
    case 25:
      uart_puts("X is 25");
      break;
    default:
      uart_puts("I dont know what X is...");
      break;
  }
}

