.section ".text.main"

// Function to add two square matrices of size 3*3. 
matrix_add:

    // The start address of first square matrix to be added is in register x0
    // The start address of second square matrix to be added is in register x1
    // The start address of square matrix where the sum of matrix A and matrix B needs to be stored is in register x2
    // Register x3 holds the dimension of square matrices A, B  and C

    // Your code starts here

    // Your code ends here

    ret


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

    // Call function to add two square matrices
    bl matrix_add

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
    .word    2
    .word    3
    .word    4
    .word    5
    .word    6
    .word    7
    .word    8
    .word    9


    .type    B, %object
    .size    B, 36
B:
    .word    1
    .word    4
    .word    7
    .word    2
    .word    5
    .word    8
    .word    3
    .word    6
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

