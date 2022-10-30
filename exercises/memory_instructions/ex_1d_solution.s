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

    // Copy data using register-indexed addressing mode
    // Register X0 holds the address of the location from which we 
    // will copy the string. 
    // Register X1 holds the address of the location to which we 
    // will copy this string. 

    // Your code starts here

    mov  x2, #0
    ldrb w4, [x0, x2] // copy H
    strb w4, [x1, x2] // store H
    add  x2, x2, #1
                     
    ldrb w4, [x0, x2] // copy e
    strb w4, [x1, x2] // store e
    add  x2, x2, #1
                     
    ldrb w4, [x0, x2] // copy l
    strb w4, [x1, x2] // store l
    add  x2, x2, #1
                     
    ldrb w4, [x0, x2] // copy l
    strb w4, [x1, x2] // store l
    add  x2, x2, #1
                     
    ldrb w4, [x0, x2] // copy o
    strb w4, [x1, x2] // store o
    add  x2, x2, #1

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

