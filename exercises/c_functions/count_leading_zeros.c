#include "uart.h"

int count_leading_zeros(unsigned int integer_value)
{
    // Initialize count to zero
    int count = 0;

    // Your code starts here

    // Your function should cont the number of leading zeros in variable 'integer_value'
    // and place the result in variable 'count' 

    // Your code ends here

    // Return the count value 
    return count;
}


void main()
{
    int result = 0;
    unsigned int num = 0x0000FFFF;

    // Count the number of leading zeros on unsigned int 'num' and store the result in variable 'result'
    // A leading zero is any 0 digit that comes before the first nonzero digit in a number's binary form

    // Your function called here
    result = count_leading_zeros(num);


    uart_print_num(result);
}

