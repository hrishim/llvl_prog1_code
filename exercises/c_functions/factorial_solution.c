#include "uart.h"

unsigned int factorial(unsigned int n)
{
    int i;

    // Initialize factorial_val to 1
    int factorial_val = 1;

    // For loop to iterate values from 2 to N-1
    for (i = 2; i <= n; i++) {
        // Multiply current number 'i' with the product in factorial_val in each iteration of the loop
        factorial_val = factorial_val * i;
    }

    // Return the factorial value 'factorial_val'
    return factorial_val;
}

void main()
{
    unsigned int result = 0;
    unsigned int num = 5;

    // Find the factorial of given number 'num' and store the result in variable 'result'
    // Factorial value is multiplication of all integers smaller than or equal to given number. For example factorial of 4 is 4*3*2*1 which is 24.

    // Your code starts here

    result = factorial(num);

    // Your code ends here

    uart_print_num(result);
}

