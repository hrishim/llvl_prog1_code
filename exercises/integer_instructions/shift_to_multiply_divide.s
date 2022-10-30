.section ".text.main"

.global main

main:
    // Initialize register w0 with a value
    mov w0, 6    
    mov w1, 576  

    // Multiply the 32-bit value in register w0 by 128 using Left Shift Operator and place the result in register w8
    // Divide  the 32-bit value in register w1 by 64 using Right Shift Operator and place the result in register w9

    // Your code starts here
    // Your code ends here

    // print the result
    mov w0, w8
    bl uart_print_num
    mov w0, w9
    bl uart_print_num

    ret
