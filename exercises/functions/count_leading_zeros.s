.section ".text.main"


    // Write a function to  count the number of leading zeros on 32-bit value
    // A leading zero is any 0 digit that comes before the first nonzero digit in a number?s binary form
count_leading_zeros:

    // Your code starts here

    // Your code ends here

    ret   


.global main
main:
    // Initialize register w0 with a value
    mov w0, 0x0000FFFF 

    // Call function to count the number of leading zeros on 32-bit value in register w0
    bl count_leading_zeros

    // print the result
    bl uart_print_num

    ret
