#include "uart.h"


void memcopy(char *dest, char *src, int n)
{
   // For loop to copy the contents from source array to destination array
   for (int i = 0; i < n; i++)
       dest[i] = src[i];
}


void main()
{
    char src_str[] = "Hello";
    char dest_str[10] = "Howdy";

    // Your code starts here

    memcopy(dest_str, src_str, 6);

    // Your code ends here

    uart_puts(src_str);
    uart_puts(dest_str);
}

