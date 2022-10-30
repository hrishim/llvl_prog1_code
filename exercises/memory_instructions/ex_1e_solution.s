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

    // Copy data using different sizes: HalfWord, Word, Double Word and Pair
    // Register X0 holds the address of the location from which we 
    // will copy the string. 
    // Register X1 holds the address of the location to which we 
    // will copy this string. 

    // Your code starts here

    ldr x4, [x0], #8 // copy "Welcome "
    str x4, [x1], #8 // store "Welcome "
                     
    ldrh w4, [x0], #2 // copy "To"
    strh w4, [x1], #2 // store "To"
                     
    ldr w4, [x0], #4 // copy " Arm" 
    str w4, [x1], #4 // store " Arm"
                     
    ldp x3, x4, [x0] // copy " Assembly World"
    stp x3, x4, [x1] // store " Assembly World"

    // Your code ends here

    // print the string at label 'str1'
    adr x0, str1 
    bl uart_puts

    // print the string at label 'str2'
    // It will now contain the string 'Hello'
    adr x0, str2 
    bl uart_puts

    ret
 
str1:   .asciz "Welcome To Arm Assembly World"

str2:   .asciz "AAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

