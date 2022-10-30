#include "uart.h"

#define NUM_ELEMENTS 7
int integer_array[NUM_ELEMENTS] = {2, 5, 6, 1, 3, 7, 0};

int find_max(int integer_array[], int n)
{
    int i;

    // Initialize 'max_val' variable as first element of array
    int max_val = integer_array[0];

    // Add code to iterate through array elements and find the maximum value in 'integer_array' and store the result in 'max_val'

    // Your code starts here

    // Your code ends here

    // return the maxumim value 'max_val'
    return max_val;
}

void main()
{
    int result = 0;

    // Find the element with maximum value in array 'integer_array' and store the result in variable 'result'

    // Your function called here
    result = find_max(integer_array, 7);

    uart_print_num(result);
}

