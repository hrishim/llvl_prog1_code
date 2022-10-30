.section ".text.main"

.global main

main:
    // Fibonacci series, named after an Italian mathematician, is a sequence of numbers, where every number 
    // is sum of the preceding two numbers. The first two numbers of the series are '0' and '1'.
    // Fibonacci series is: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, . . . 
    // In a Fibonacci series, every number is the sum of the preceding two numbers
    // Write code to store first N numbers of Fibonacci series at label 'fib_arr'. 
    // The number of elements to be stored is available in register x0 

    // Preserve the values of x29 and x30 in stack
    stp	 x29, x30, [sp, #-32]!

    // Register x1 is initialized with address of array at label 'fib_arr'
    adr     x1, fib_arr

    // Register x0 is intialized with count of Fibonacci numbers to be generated
    mov x0, 10

    // Your code starts here

    // 0th of the series is 0
    mov    w2, #0
    str    w2, [x1]

    // 1st of the series is 1
    mov    w2, #1
    str    w2, [x1, #4]

    // Subtract the 2 values that has been initialized above from the size
    sub    w3, w0, #2

    // Increment the index
    add    x0, x1, #4

    // Determine the address of last element of array
    add    x3, x0, x3, uxtw 2

    mov    w1, #1
loop:

    // Load the previous-1 value. Previous value is already available in register w1
    ldr    w2, [x0, #-4]

    // Add the previous 2 numbers in the series
    add    w1, w1, w2

    // Increment the index
    add    x0, x0, #4

    // Store the value in array
    str    w1, [x0]

    // Check if we have stored required number of elements
    cmp    x0, x3

    // Branch back to beginning of loop if there are more elements
    bne    loop

    // Your code ends here

    // print the result
    mov     x9, 10
    adr     x8, fib_arr
print_loop:
    ldr w0, [x8]
    bl uart_print_num
    add x8, x8, 4
    subs x9, x9, 1
    bne print_loop

    // Restore the values of x29 and x30 in stack
    ldp	x29, x30, [sp], #32

    ret
 
fib_arr:   
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0
    .word 0


