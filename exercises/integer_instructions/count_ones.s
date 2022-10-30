.section ".text.main"

.global main

main:
    // Initialize register w0 with a value
    mov w0, 0x6A3E 

    // Count the number of 1s in the binary representation of an integer.
    // Example: If input decimal value is 19, its binary representation would be 10011. It has 3 set bits. So output should be 3

    // Your code starts here

    // Your code ends here

    // print the result
    bl uart_print_num

    ret
