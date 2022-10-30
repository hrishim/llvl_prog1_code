#include "uart.h"

int count_leading_zeros(unsigned int integer_value)
{
    // Initialize count to zero
    int count = 0;

    // Check if leftmost bit of 'integer_value' is '1' and 
    // exit the 'while' loop when the bit is a '1'
    while ( !(integer_value & (1 << 31)) )
    {
        // Shift the provided 'integer_value' by '1'
        integer_value = (integer_value << 1);

        // Increement the count
        count++;
    }

    // Return the count value 
    return count;
}

void main()
{
    int result = 0;
    unsigned int num = 0x0000FFFF;

    // Count the number of leading zeros on unsigned int 'num' and store the result in variable 'result'
    // A leading zero is any 0 digit that comes before the first nonzero digit in a number's binary form

    // Your code starts here

    result = count_leading_zeros(num);

    // Your code ends here

    uart_print_num(result);
}

