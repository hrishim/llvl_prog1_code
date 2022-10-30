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


