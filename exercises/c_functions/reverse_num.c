#include "uart.h"

void main()
{
    unsigned int result = 0;
    unsigned int num = 13579;

    // Reverse the digits of a given number 'num' and store the result in variable 'result'
    // For example: if given number is = 13579 Output: 97531

    // Your function called here
    result = reverse_num(num);

    uart_print_num(result);
}
