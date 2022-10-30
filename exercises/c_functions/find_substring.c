#include "uart.h"

int find_substring(char *orig_str, char *str_to_find, int orig_str_len, int sub_str_len)
{
    // Add code below to find substring 'str_to_find' in 'orig_str'. The length of original string and substring are  provided in 'orig_str_len' and 'sub_str_len'

    // Your code starts here
    
    // Your code ends here
}

void main()
{
    char original_string[] = "Hello World!";
    char string_to_find[10] = "Wor";
    int found = 0; 

    // Your function gets called here
    found = find_substring(original_string, string_to_find, 12, 3);

    uart_puts(original_string);
    uart_puts(string_to_find);
    uart_print_num(found);
}


