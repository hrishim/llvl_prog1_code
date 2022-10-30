.section ".text.main"

.global main

main:
    // Initialize register x0 with a positive integer value N
    mov w0, 5 

    // Factorial value is multiplication of all integers smaller than or equal to given number. For example factorial of 4 is 4*3*2*1 which is 24.

    // Your code starts here
    add    w2, w0, 1
    
    // Initialize w0 to 1. 
    mov    w0, 1

    // Initialize w0 to 2. 
    mov    w1, 2

    // Multiply numbers from 2 to N-1 with w0 using a loop
loop:
    // Multiply current number in w1 with the product in w0
    mul    w0, w0, w1

    // Increment the value in w1 by 1
    add    w1, w1, 1

    // Compare w1 and w2 to check if they are equal 
    cmp    w2, w1
    
    // Branch back to label 'loop' if w1 is not equal to w2 
    bne    loop

    // Your code ends here

    // print the result
    bl uart_print_num

    ret
