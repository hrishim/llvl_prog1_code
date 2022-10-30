#
# Copyright (C) 2018 bzt (bztsrc@github)
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies
# of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#
#

SRCS = $(wildcard *.c) ../common/uart.c
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -O2 -ffreestanding -nostdinc -nostdlib -nostartfiles -I../include/

start.o: ../common/start.s
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

%.o: %.s
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

%.o: %.c
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

sum.elf : start.o sum.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clz.elf : start.o clz.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clz_inst.elf : start.o clz_inst.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

days_in_month.elf : start.o days_in_month.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

fibonacci.elf : start.o fibonacci.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

find_max.elf : start.o find_max.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_addition.elf : start.o matrix_addition.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_subtract.elf : start.o matrix_subtract.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial.elf : start.o factorial.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

count_ones.elf : start.o count_ones.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

xor_truth_table.elf : start.o xor_truth_table.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

shift_to_multiply_divide.elf : start.o shift_to_multiply_divide.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

sum_solution.elf : start.o sum_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clz_solution.elf : start.o clz_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clz_inst_solution.elf : start.o clz_inst_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

days_in_month_solution.elf : start.o days_in_month_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

fibonacci_solution.elf : start.o fibonacci_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

find_max_solution.elf : start.o find_max_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_addition_solution.elf : start.o matrix_addition_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_subtract_solution.elf : start.o matrix_subtract_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial_solution.elf : start.o factorial_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

count_ones_solution.elf : start.o count_ones_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

xor_truth_table_solution.elf : start.o xor_truth_table_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

shift_to_multiply_divide_solution.elf : start.o shift_to_multiply_divide_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clean:
	rm *.elf *.o >/dev/null 2>/dev/null || true

run:
	qemu-system-aarch64 -M raspi3 -kernel kernel8.img -serial null -serial stdio -nographic
