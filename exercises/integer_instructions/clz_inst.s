.section ".text.main"

.global main

main:
    // Initialize register w0 with a value
    mov w0, 0x000FFFFF 

    // Count the number of leading zeros on 32-bit value in register w0 using arm clz instruction
    // A leading zero is any 0 digit that comes before the first nonzero digit in a number’s binary form

    // Your code starts here

    // Your code ends here

    // print the result
    bl uart_print_num

    ret
