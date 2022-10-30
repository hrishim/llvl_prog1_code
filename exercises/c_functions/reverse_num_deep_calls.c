#include "uart.h"

int divide(int dividend, int divisor)
{
    return dividend/divisor;
}

int get_reminder(int dividend, int divisor)
{
    return dividend % divisor;
}

int reverse_num(int num)
{
    // Initialize reverse_num with value 0
    int reverse_num = 0;

    // Loop while the value of num is greater than 0
    while (num > 0) {

        // Multiply the reverse_num by 10 and then add remainder value obtained by dividing num by 10
        reverse_num = reverse_num * 10 + get_reminder(num, 10);

        // Divide the number by 10
        num = divide(num, 10);
    }

    // Return reverse_num
    return reverse_num;
}


void main()
{
    unsigned int result = 0;
    unsigned int num = 13579;

    // Reverse the digits of a given number 'num' and store the result in variable 'result'
    // For example: if given number is = 13579 Output: 97531

    // Your code starts here

    result = reverse_num(num);

    // Your code ends here

    uart_print_num(result);
}

