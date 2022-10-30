#include "uart.h"

void preFixPostFixExample() {
  int x = 2;

  //pre-fix increment
  int y = ++x; // increment the value of x then store in y

  uart_puts("Value of y is: ");
  uart_print_num(y); // y = 3
  uart_puts("Value of x is: ");
  uart_print_num(x); // x = 3

  // post-fix decrement
  y = x--;
  uart_puts("Value of y is: ");
  uart_print_num(y); // y = 3
  uart_puts("Value of x is: ");
  uart_print_num(x); // x = 2
}

int main()
{
  preFixPostFixExample();
}

