#include "uart.h"

int find_num_days_in_month(int month_num)
{

    switch (month_num) {
        // Month numbers having 31 Days
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
            break;

        // Month numbers having 30 Days
        case 4:
        case 6:
        case 9:
        case 11:
            return 30;
            break;

        // Month numbers having 28/29 Days
        case 2:
            return 28; 
            break;

    }
    return -1;
}

void main()
{
    int result = 0;
    unsigned int month_num = 5;

    // Find number of days in given month number 'month_num' and store the result in variable 'result'
    // For ex: If the value in register x0 is 1, then it means January, 2 means February .. 12 means December

    // Your code starts here

    result = find_num_days_in_month(month_num);

    // Your code ends here

    uart_print_num(result);
}

