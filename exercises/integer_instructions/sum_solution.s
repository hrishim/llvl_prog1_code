.section ".text.main"

.global main

main:
    // Initialize register x0 with address of array at label 'arr1'
    adr x0, arr1 
    // Initialize register x1 with number of elements in array
    mov x1, 6

    // Find the sum of values of all elements in given array
    // The start address of array is available in register x0
    // The number of elements in array is in register x1
 
    // Your code starts here
    mov    x4, x0
    
   // Initialize sum to 0.
    mov    w0, 0
    
   // Iterate over elements of the array and add the value to result 

   // Initialize index to 0. This register will hold the value of current element number
   mov    x2, 0
loop:
    // Load the value at current index
    ldr    w3, [x4, x2, lsl 2]

    // Add the value to sum
    add    w0, w0, w3

    // Increment the index
    add    x2, x2, 1
 
    // Check if we have iterated through all the elements of the array
    cmp    w1, w2

    // Branch back to beginning of loop if there are more elements
    bgt    loop

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
