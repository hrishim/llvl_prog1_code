.section ".text.main"

.global main

main:
    // Print the truth table for XOR
    // Your code starts here
	mov	w0, 0
	mov	w8, 0
	mov	w9, 0
loop1:
    mov w8, 0
loop2:
    mov w0, w9
    bl uart_print_num_no_newline
    mov w0, w8
    bl uart_print_num_no_newline
    eor w0, w8, w9
    bl uart_print_num
    add w8, w8, 1
    cmp w8, 1
    ble loop2
    add w9, w9, 1
    cmp w9, 1
    ble loop1
    // Your code ends here

    ret
