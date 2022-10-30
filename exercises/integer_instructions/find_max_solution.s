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
    mov    x4, x0

    // Initialize current maximum value with first element of array
    ldr    w0, [x0]

    // Check if there is only one element in the array
    cmp    w1, 1

    // Branch to done label if there is only one element
    beq    done

    // Set index to element 1
    mov    x2, 1

    // Iterate over array elements from index 2 and with current max 
loop:
    ldr    w3, [x4, x2, lsl 2]

    // Compare the value against current maximum
    cmp    w0, w3

    // Select the new value if it is greater than current maximum
    csel    w0, w0, w3, ge

    // Increment the index
    add    x2, x2, 1

    // Check if we have iterated through all the elements of the array
    cmp    w1, w2

    // Branch back to beginning of loop if there are more elements
    bgt    loop
done:
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

