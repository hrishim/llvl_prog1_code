.section ".text.main"


    // Write a recursive function to find factorial of a given number.
    // Factorial value is multiplication of all integers smaller than or equal to given number. 
    // For example factorial of 4 is 4*3*2*1 which is 24.
factorial_recursive:

    // Your code starts here

    // Your code ends here

    ret   

.global main
main:
    // Initialize register x0 with a positive integer value
    mov w0, 6

    // Call a recursive function to find factorial of given number
    bl factorial_recursive

    // print the result
    bl uart_print_num

    ret
