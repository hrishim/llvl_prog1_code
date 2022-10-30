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

count_leading_zeros.elf : start.o count_leading_zeros.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

count_leading_zeros_solution.elf : start.o count_leading_zeros_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy_register.elf : start.o memcopy_register.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy_register_solution.elf : start.o memcopy_register_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy_stack.elf : start.o memcopy_stack.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy_optimized.elf : start.o memcopy_optimized.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

sum_of_n.elf : start.o sum_of_n.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

sum_of_n_solution.elf : start.o sum_of_n_solution.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_addition.elf : start.o matrix_addition.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_subtract.elf : start.o matrix_subtract.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

caesar_cipher.elf : start.o caesar_cipher.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial.elf : start.o factorial.o $(OBJS)
	aarch64-none-elf-ld -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

clean:
	rm *.elf *.o >/dev/null 2>/dev/null || true

run:
	qemu-system-aarch64 -M raspi3 -kernel kernel8.img -serial null -serial stdio -nographic
