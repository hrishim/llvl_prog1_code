#include "uart.h"

unsigned int factorial_recursive(unsigned int n)
{
    // Return 1 if value is 0 or 1
    if(n == 1 || n == 0) {
        return 1;
    }

    // If the value is greater than 1, perform a recursive call to the same function with (n - 1) value 
    return n * factorial_recursive(n - 1);
}

void main()
{
    unsigned int result = 0;
    unsigned int num = 5;

    // Find the factorial of given number 'num' and store the result in variable 'result'
    // Factorial value is multiplication of all integers smaller than or equal to given number. For example factorial of 4 is 4*3*2*1 which is 24.

    // Your code starts here

    result = factorial_recursive(num);

    // Your code ends here

    uart_print_num(result);
}

