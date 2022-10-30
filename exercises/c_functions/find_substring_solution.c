#include "uart.h"

int find_substring(char *orig_str, char *str_to_find, int orig_str_len, int sub_str_len)
{
    // Loop for every index in the given string. End at (orig_str_len - sub_str_len) as there cannot be a match after that
    for (int i = 0; i <= orig_str_len - sub_str_len; i++) {

        int j;
 
        // Check for substring match
        for (j = 0; j < sub_str_len; j++)

            // Break the for loop if current index has not matched
            if (orig_str[i + j] != str_to_find[j])
                break;
 
        // Return match
        if (j == sub_str_len)
            return 1;
    }
 
    // Return that there is no match
    return 0;
}

void main()
{
    char original_string[] = "Hello World!";
    char string_to_find[10] = "Wor";
    int found = 0; 

    // Your code starts here

    found = find_substring(original_string, string_to_find, 12, 3);

    // Your code ends here

    uart_puts(original_string);
    uart_puts(string_to_find);
    uart_print_num(found);
}


