.section ".text.main"

.global main

main:
    // Initialize register w0 with a value
    mov w0, 0x6A3E 

    // Count the number of 1s in the binary representation of an integer.
    // Example: If input decimal value is 19, its binary representation would be 10011. It has 3 set bits. So output should be 3

    // Your code starts here
	mov	w1, w0
	cbz	w0, done
	mov	w0, 0
loop:
	and	w2, w1, 1
	add	w0, w0, w2
	lsr	w1, w1, 1
	cbnz	w1, loop
done:
    // Your code ends here

    // print the result
    bl uart_print_num

    ret
