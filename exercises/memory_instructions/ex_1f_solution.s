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

    // Copy data using a software loop after determining the length of string
    // Register X0 holds the address of the location from which we 
    // will copy the string. 
    // Register X1 holds the address of the location to which we 
    // will copy this string. 

    // Your code starts here

    mov   x2, #0
    ldrb  w5, [x0, x2]
    cbz   w5, skip_to_copy 
find_len_start:
    add   x2, x2, #0x1
    ldrb  w5, [x0, x2]
    cbnz  w5, find_len_start

skip_to_copy:
    mov	  x3, #0x0 
copy_loop_start:
    ldrb  w4, [x0, x3]
    strb  w4, [x1, x3]
    add	  x3, x3, #0x1
    cmp	  w2, w3
    b.gt	copy_loop_start

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

