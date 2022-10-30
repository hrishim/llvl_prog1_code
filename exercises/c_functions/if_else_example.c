#include "uart.h"

// function returns the lower of two integers
int find_lower_int(int x, int y) {
  if (x <= y) {
    // if the value of x is less than or equal to y
    // execute the code in this block
    return x;
  } else {
    // if the condition above is false
    // execute code in this block
    return y;
  }
}

int main()
{
    int lower_int_val = find_lower_int(2, 6);
    uart_print_num(lower_int_val);
}
