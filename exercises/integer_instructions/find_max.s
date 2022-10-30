.section ".text.main"

.global main

main:
    // Initialize register x0 with address of array at label 'arr1'
    adr x0, arr1 
    // Initialize register x1 with number of elements in array
    mov x1, 6

    // Find the element with maximum value in given array
    // The start address of array is available in register x0
    // The number of elements in array is in register x1
 
    // Your code starts here

    // Your code ends here

    // print the result
    bl uart_print_num

    ret
 
arr1:   
    .word 2
    .word 5
    .word 6
    .word 1
    .word 3
    .word 7

