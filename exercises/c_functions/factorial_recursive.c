#include "uart.h"

unsigned int factorial_recursive(unsigned int n)
{
    // Your code starts here

    // Your code ends here
}

void main()
{
    unsigned int result = 0;
    unsigned int num = 5;

    // Find the factorial of given number 'num' and store the result in variable 'result'
    // Factorial value is multiplication of all integers smaller than or equal to given number. For example factorial of 4 is 4*3*2*1 which is 24.

    // Your function called here
    result = factorial_recursive(num);

    uart_print_num(result);
}

