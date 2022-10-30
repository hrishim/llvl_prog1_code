.section ".text.main"

.global main

main:
    // Initialize register x0 with address of string at label 'str1'
    // i.e. the start of the string 'Hello'. 
    adr x0, str1 
    bl uart_puts

    // Initialize register x1 with address of string at label 'str2'
    // i.e. the start of the string 'Howdy'. 
    adr x0, str2 
    bl uart_puts

    // Re-initialize register x0 with address of string at label 'str1'
    adr x0, str1 
    // Re-initialize register x1 with address of string at label 'str2'
    adr x1, str2 

    // Copy data using pre-indexed addressing mode
    // Register X0 holds the address of the location from which we 
    // will copy the string. 
    // Register X1 holds the address of the location to which we 
    // will copy this string. 

    // Your code starts here

    ldrb w4, [x0] // copy H
    strb w4, [x1] // store H
                     
    ldrb w4, [x0, #1]! // copy e
    strb w4, [x1, #1]! // store e
                     
    ldrb w4, [x0, #1]! // copy l
    strb w4, [x1, #1]! // store l
                     
    ldrb w4, [x0, #1]! // copy l
    strb w4, [x1, #1]! // store l
                     
    ldrb w4, [x0, #1]! // copy o
    strb w4, [x1, #1]! // store o

    // Your code ends here

    // print the string at label 'str1'
    adr x0, str1 
    bl uart_puts

    // print the string at label 'str2'
    // It will now contain the string 'Hello'
    adr x0, str2 
    bl uart_puts

    ret
 
str1:   .asciz "Hello"

str2:   .asciz "Howdy"

