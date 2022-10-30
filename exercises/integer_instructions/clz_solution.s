.section ".text.main"

.global main

main:
    // Initialize register x0 with address of array at label 'arr1'
    mov w0, 0x0000FFFF 

    // Count the number of leading zeros on 32-bit value in register w0
    // A leading zero is any 0 digit that comes before the first nonzero digit in a number’s binary form

    // Your code starts here
    mov    w1, w0

    // Initialize count to 0
    mov    w0, 0

    // Test if bit 31 of value is 1. If it is 1, branch to label 'done'
    tbnz    w1, #31, done

    // Keep left shifting the value by one until leftmost bit does not become 1
loop:
    // Left shift the value by 1
    lsl    w1, w1, 1

    // Increment the count by 1
    add    w0, w0, 1

    // Test if bit 31 is 1. If it is not 1, branch back to label 'loop'
    tbz    w1, #31, loop
done:
    // Your code ends here

    // print the result
    bl uart_print_num

    ret
