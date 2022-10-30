.section ".text.main"

.global main

// Function to encrypt string in-place using caesar cipher
// by adding 2 to ascii value of every character in the string
// For example:
// If input string is: Hello
// Expected encrypted string is: Jgnnq
caesar_cipher_string:

    // Your code starts here

    // Your code ends here

    ret


main:
    // Initialize register x0 with address of string at label 'str1'
    // i.e. the start of the string 'Hello'. 
    adr x0, str1 
    bl uart_puts

    // Re-initialize register x0 with address of string at label 'str1'
    adr x0, str1 

    // Call function to encrypt string in-place using caesar cipher
    bl caesar_cipher_string

    // print the string at label 'str1'
    adr x0, str1 
    bl uart_puts

    ret
 
str1:   .asciz "Hello"

