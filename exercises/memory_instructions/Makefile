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

all: clean kernel8.img

start.o: ../common/start.s
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

%.o: %.s
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

%.o: %.c
	aarch64-none-elf-gcc $(CFLAGS) -c $< -o $@

ex_1a.elf : start.o ex_1a.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1b.elf : start.o ex_1b.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1c.elf : start.o ex_1c.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1d.elf : start.o ex_1d.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1e.elf : start.o ex_1e.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1f.elf : start.o ex_1f.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_2a.elf : start.o ex_2a.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_2b.elf : start.o ex_2b.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1a_solution.elf : start.o ex_1a_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1b_solution.elf : start.o ex_1b_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1c_solution.elf : start.o ex_1c_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1d_solution.elf : start.o ex_1d_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1e_solution.elf : start.o ex_1e_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_1f_solution.elf : start.o ex_1f_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_2a_solution.elf : start.o ex_2a_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

ex_2b_solution.elf : start.o ex_2b_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clean:
	rm *.elf *.o >/dev/null 2>/dev/null || true

run:
	qemu-system-aarch64 -M raspi3 -kernel kernel8.img -serial null -serial stdio -nographic
