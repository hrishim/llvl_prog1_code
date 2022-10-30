.section ".text.main"

.global main

// Function to find length of a string
find_string_length:
    sub sp, sp, 16  // Adjust sp
    str x30, [sp]   // Save x30

    mov   x2, #0        
    ldrb  w3, [x0, x2]  
    cbz   w3, find_len_end 
find_len_start:
    add   x2, x2, #0x1
    ldrb  w3, [x0, x2]
    cbnz  w3, find_len_start
    
find_len_end:
    mov x0, x2      // Move return value to x0

    ldr x30, [sp]   // Restore sp
    add sp, sp, 16  // Adjust sp

    ret


// Function to copy a string
memcopy_string:
    sub sp, sp, 16  // Adjust sp
    str x30, [sp]   // Save x30

    mov x19, x0 // Store str1 in x19
    mov x20, x1 // Store str2 in x20

    // Find the string length
    bl find_string_length

    mov x2, x0  // Move length value to x2
    mov x0, x19 // Move str1 to x0(first argument)
    mov x1, x20 // Move str2 to x1(second argument)

    mov	  x3, #0x0 
copy_loop_start:
    ldrb  w4, [x0, x3]
    strb  w4, [x1, x3]
    add	  x3, x3, #0x1
    cmp	  x2, x3
    b.gt  copy_loop_start

    ldr x30, [sp]   // Restore x30
    add sp, sp, 16  // Adjust sp

    ret


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

    // Copy the string
    bl memcopy_string

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

