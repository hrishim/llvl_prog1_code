.section ".text.main"

.global main

main:
    // Preserve the values of x29 and x30 in stack
    stp	 x29, x30, [sp, #-32]!

    // Initialize register x0 with address of 2-D array at label 'A'
    adr x0, A

    // Initialize register x1 with address of 2-D array at label 'B'
    adr x1, B

    // Initialize register x2 with address of 2-D array at label 'C'
    adr x2, C

    // Number of dimension in square matrices A, B and C
    mov x3, 3


    // Subtract two square matrices of size 3*3. 
    // The start address of first square matrix to be subtracted is in register x0
    // The start address of second square matrix to be subtracted is in register x1
    // The start address of square matrix where the difference of matrix A and matrix B needs to be stored is in register x2
    // Register x3 holds the dimension of square matrices A, B  and C

    // Your code starts here
    mov     x11, #36 
    // Initialize x6 to 0 to start processing from Row 0
    mov    x6, 0
    b    continue_1
loop1:
    // Increment offset value to point to next row
    add    x6, x6, 12
    // Check if we have iterated through all the rows
    cmp    x6, x11
    // Branch to  done if we have covered all rows
    beq    done
continue_1:
    // Add offset to Matrix-A pointer in register x10 
    add    x10, x0, x6
    // Add offset to Matrix-B pointer in register x9 
    add    x9, x1, x6
    // Add offset to Matrix-C pointer in register x8 
    add    x8, x2, x6
    // Initialize x4 to 0, in order to iterate through all the columns in current row
    mov    x4, 0
loop2:
    // Load the value from Matrix-A to register w5
    ldr    w5, [x10, x4, lsl 2]
    // Load the value from Matrix-B to register w7
    ldr    w7, [x9, x4, lsl 2]
    // Subtract the value in w7(from Matrix B) from w5(from Matrix A) with value and store the result in w5
    sub    w5, w5, w7
    str    w5, [x8, x4, lsl 2]
    // Increment the index to point to the next column
    add    x4, x4, 1
    // Check if we have iterated through all columns in the current row
    cmp    x3, x4
    // Branch back if there are more columns in current row
    bne    loop2
    // Branch back to loop1 to iterate through remaining columns
    b    loop1
done:

    // Your code ends here

    // Print matrix A
    mov     x9, 3
    mov     x10, 3
    adr     x8, A
    bl      uart_print_newline 
    adr     x0, print_mat_a 
    bl      uart_puts 
print_loop_a:
    ldr w0, [x8]
    bl uart_print_num_no_newline
    add x8, x8, 4
    subs x9, x9, 1
    bne print_loop_a
    bl uart_print_newline 
    subs x10, x10, 1
    mov     x9, 3
    bne print_loop_a

    // Print matrix B
    mov     x9, 3
    mov     x10, 3
    adr     x8, B
    bl      uart_print_newline 
    adr     x0, print_mat_b 
    bl      uart_puts 
print_loop_b:
    ldr w0, [x8]
    bl uart_print_num_no_newline
    add x8, x8, 4
    subs x9, x9, 1
    bne print_loop_b
    bl uart_print_newline 
    subs x10, x10, 1
    mov     x9, 3
    bne print_loop_b

    // Print matrix C
    mov     x9, 3
    mov     x10, 3
    adr     x8, C
    bl      uart_print_newline 
    adr     x0, print_mat_c 
    bl      uart_puts 
print_loop_c:
    ldr w0, [x8]
    bl uart_print_num_no_newline
    add x8, x8, 4
    subs x9, x9, 1
    bne print_loop_c
    bl uart_print_newline 
    subs x10, x10, 1
    mov     x9, 3
    bne print_loop_c

    // Restore the values of x29 and x30 in stack
    ldp	x29, x30, [sp], #32

    ret

    .align    3
    .type    A, %object
    .size    A, 36
A:
    .word    1
    .word    3
    .word    5
    .word    7
    .word    9
    .word    11
    .word    13
    .word    15
    .word    17


    .type    B, %object
    .size    B, 36
B:
    .word    1
    .word    2
    .word    3
    .word    4
    .word    5
    .word    6
    .word    7
    .word    8
    .word    9

    .type    C, %object
    .size    C, 36
C:
    .word    0
    .word    0
    .word    0
    .word    0
    .word    0
    .word    0
    .word    0
    .word    0
    .word    0

print_mat_a:  .asciz "Matrix A"
print_mat_b:  .asciz "Matrix B"
print_mat_c:  .asciz "Matrix C"

