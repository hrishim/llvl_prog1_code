#include "uart.h"

void main()
{
    int result = 0;
    unsigned int month_num = 5;

    // Find number of days in given month number 'month_num' and store the result in variable 'result'
    // For ex: If the value in register x0 is 1, then it means January, 2 means February .. 12 means December

    // Your function called here

    uart_print_num(result);
}

