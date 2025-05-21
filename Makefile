CC=avr-gcc
CFLAGS=-ggdb -mmcu=atmega328p -o out.elf --sysroot=/usr/avr

out.elf: main.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: out.elf
	qemu-system-avr -machine uno -bios $< -s -S -nographic

debug: out.elf
	avr-gdb -ex "target remote :1234" $<
