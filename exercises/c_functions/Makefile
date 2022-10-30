SRCS =  ../common/uart.c
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -O1 -ffreestanding -nostdinc -nostdlib -nostartfiles -I../include/

all: clean kernel8.img

start.o: ../common/start.s
	aarch64-none-elf-gcc $(CFLAGS) -g -c $< -o $@

%.o: %.s
	aarch64-none-elf-gcc $(CFLAGS) -g -c $< -o $@

%.o: %.c
	aarch64-none-elf-gcc $(CFLAGS) -g -c $< -o $@

find_max.elf : start.o find_max.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

count_leading_zeros.elf : start.o count_leading_zeros.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial.elf : start.o factorial.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

print_num_days_in_month.elf : start.o print_num_days_in_month.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial_recursive.elf : start.o factorial_recursive.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

reverse_num.elf : start.o reverse_num.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

find_substring.elf : start.o find_substring.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy.elf : start.o memcopy.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_addition.elf : start.o matrix_addition.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

find_max_solution.elf : start.o find_max_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

count_leading_zeros_solution.elf : start.o count_leading_zeros_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

factorial_solution.elf : start.o factorial_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

print_num_days_in_month_solution.elf : start.o print_num_days_in_month_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

factorial_recursive_solution.elf : start.o factorial_recursive_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

reverse_num_solution.elf : start.o reverse_num_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

find_substring_solution.elf : start.o find_substring_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

memcopy_solution.elf : start.o memcopy_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

matrix_addition_solution.elf : start.o matrix_addition_solution.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

break_example.elf : start.o break_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

continue_example.elf : start.o continue_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

do_while_loop_example.elf : start.o do_while_loop_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

for_loop_example.elf : start.o for_loop_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

if_else_example.elf : start.o if_else_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

prefix_postfix_example.elf : start.o prefix_postfix_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img

switch_example.elf : start.o switch_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

while_loop_example.elf : start.o while_loop_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

hello_world_example.elf : start.o hello_world_example.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

reverse_num_deep_calls.elf : start.o reverse_num_deep_calls.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

swap_with_pointers.elf : start.o swap_with_pointers.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

broken_swap.elf : start.o broken_swap.o $(OBJS)
	aarch64-none-elf-ld -g -nostdlib -nostartfiles $^ -T link.ld -o $@
	aarch64-none-elf-objcopy -O binary $@ kernel8.img
	aarch64-none-elf-objdump --source -d $@ > $@.disass
	aarch64-none-elf-objdump -D $@ > $@.dis

clean:
	rm *.elf *.o >/dev/null 2>/dev/null || true

run:
	qemu-system-aarch64 -M raspi3 -kernel kernel8.img -serial null -serial stdio -nographic
