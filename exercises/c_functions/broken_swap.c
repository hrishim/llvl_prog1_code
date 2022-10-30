#include "uart.h"

// function to swap the two numbers
void swap(int num1,int num2)
{
    int temp;
    temp   = num1;
    num1   = num2;
    num2   =  temp;
}

int main()
{
    int num1 =  2, num2 = 5;

    //displaying numbers after swapping
    uart_print_num(num1);
    uart_print_num(num2);

    // Your code starts here

    swap(num1,num2);

    // Your code ends here

    //displaying numbers after swapping
    uart_print_num(num1);
    uart_print_num(num2);

    return 0;
}

