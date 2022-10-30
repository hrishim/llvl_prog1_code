.section ".text.main"

.global main
    .text
    .align  2

    // Recursive function to Find sum of all integers smaller than or equal to given number using a recursive function. 
    // For example, if given number is 4, the result would be 4+3+2+1 which is 10.
sum_of_n_recursive:
    stp x9, x30, [sp, -32]! // Save X30(link register) and a X19 (temporary register used as a local variable) onto the stack and adjust SP 
    mov w9, w0              // Move the number passed as argument to temporary register 
    cmp w0, 1               // Check if number is less that or equal to 1
    ble done                // Branch to label 'done' if we have completed adding all numbers till 1
    sub w0, w0, #1          // Subtract 1 from the number to perform a recursive call and obtain sum of all lower numbers 
    bl  sum_of_n_recursive  // Perform a recursive call to obtain sum of all lower numbers
    add w0, w0, w9          // Add the resultant sum of all lower numbers with current number
done:
    ldp x9, x30, [sp], 32   // Restore back temporary register and X30 from stack
    ret                     // Return the result

    .align  2

main:
    // Initialize register x0 with a positive integer value N
    mov w0, 5 

    bl sum_of_n_recursive

    // print the result
    bl uart_print_num

    ret
