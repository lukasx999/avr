#!/bin/sh
set -euxo pipefail


avr-gcc main.c -ggdb -mmcu=atmega328p -o out.elf #-DMOCK -DF_CPU=16000000UL

qemu-system-avr -machine uno -bios out.elf -s -S -nographic
