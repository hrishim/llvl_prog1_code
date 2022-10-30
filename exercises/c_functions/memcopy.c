#include "uart.h"


void memcopy(char *dest, char *src, int n)
{
   // Add code below to to copy the contents from source array 'src' to destination array 'dest'
   // Number of characters to be copied is provided in argument 'n'

   // Your code starts here

   // Your code ends here
}


void main()
{
    char src_str[] = "Hello";
    char dest_str[10] = "Howdy";

    // Your function gets called here
    memcopy(dest_str, src_str, 6);

    uart_puts(src_str);
    uart_puts(dest_str);
}

