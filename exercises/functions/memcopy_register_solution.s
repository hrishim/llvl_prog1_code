.section ".text.main"

.global main

// Function to find length of a string
find_string_length:
    sub sp, sp, 32    // Adjust sp
    str x30, [sp]     // Save x30
    str x19, [sp, 8]  // Save x19 (local var 1)
    str x20, [sp, 16] // Save x20 (local var 2)

    mov   x19, #0         // Maintain count in local var 1(x19)
    ldrb  w20, [x0, x19]  // Use local var 2(x20) to hold temporary results
    cbz   x20, find_len_end 
find_len_start:
    add   x19, x19, #0x1
    ldrb  w20, [x0, x19]
    cbnz  x20, find_len_start
    
find_len_end:
    mov x0, x19  // Move return value to x0

    ldr x19, [sp, 8]    // Restore x19
    ldr x20, [sp, 16]   // Restore x20

    ldr x30, [sp]       // Restore x30
    add sp, sp, 32      // Adjust sp

    ret


// Function to copy a string
memcopy_string:
    sub sp, sp, 32     // Adjust sp
    str x30, [sp]      // Save x30
    str x19, [sp, 8]   // Save x19 (local var 1)
    str x20, [sp, 16]  // Save x20 (local var 2)

    mov x19, x0 // Store str1 in local var1 (x19)
    mov x20, x1 // Store str2 in local var2 (x20)

    // Find the string length
    bl find_string_length

    mov x2, x0  // Move length value to x2
    mov x0, x19 // Move str1 to x0
    mov x1, x20 // Move str2 to x1

    mov	  x19, #0x0    // Maintain count in local var 1(x19)
copy_loop_start:
    ldrb  w20, [x0, x19]  // Use local var 2(x20) to hold temporary results
    strb  w20, [x1, x19]
    add	  x19, x19, #0x1
    cmp	  x2, x19
    b.gt  copy_loop_start

    ldr x19, [sp, 8]   // Restore x19 
    ldr x20, [sp, 16]  // Restore x20

    ldr x30, [sp]      // Restore x30
    add sp, sp, 32     // Adjust sp

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

