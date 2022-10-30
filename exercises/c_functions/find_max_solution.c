#include "uart.h"

int find_max(int integer_array[], int n)
{
    int i;

    // Initialize 'max_val' variable as first element of array
    int max_val = integer_array[0];

    // Iterate through array elements
    for (i = 1; i < n; i++) {
        // Compare every element of array with current 'max_val'.  
        if (integer_array[i] > max_val) {
            // If the array element is greater than 'max_val', update 'max_val' with current array element
            max_val = integer_array[i];
        }
    }

    // return the maximum value 'max_val'
    return max_val;
}

#define NUM_ELEMENTS 7
int integer_array[NUM_ELEMENTS] = {2, 5, 6, 1, 3, 7, 0};

void main()
{
    int result = 0;

    // Find the element with maximum value in array 'integer_array' and store the result in variable 'result'

    // Your code starts here

    result = find_max(integer_array, 7);

    // Your code ends here

    uart_print_num(result);
}

