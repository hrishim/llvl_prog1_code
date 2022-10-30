.section ".text.main"

.global main

main:
    // Initialize register x0 with a positive integer value
    mov w0, 0x0000FFFF 

    // Factorial value is multiplication of all integers smaller than or equal to given number. For example factorial of 4 is 4*3*2*1 which is 24.

    // Your code starts here

    // Your code ends here

    // print the result
    bl uart_print_num

    ret
