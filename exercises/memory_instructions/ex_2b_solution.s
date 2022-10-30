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

    // Reverse a string in-place
    // Register X0 holds the address of the location to be reversed in-place

    // Your code starts here

    mov   x1, #0
find_len_start:
    add   x1, x1, #0x1
    ldrb  w5, [x0, x1]
    cbnz  w5, find_len_start

    mov   w5, w1
    asr   w5, w5, #1

    cmp   w1, #0x1
    b.le  end

    add   x2, x0, x1
    mov   x1, #0x0 

loop_start:
    ldrb    w3, [x0, x1]
    ldrb    w4, [x2, #-1]
    strb    w4, [x0, x1]
    strb    w3, [x2, #-1]!

    add     x1, x1, #0x1
    cmp     w5, w1
    b.gt    loop_start 
end:

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

