#include <avr/interrupt.h>
#include <avr/io.h>
#include <stdbool.h>
#include <stdio.h>

bool interrupt = false;

// avr-objdump -d out.elf
// (gdb) dump binary memory result.bin 0x0 0x32

void foo(void) {
}

// __vector_11
ISR(TIMER1_COMPA_vect) {
    printf("interrupt!");
    int timer2 = TCNT1;
    foo();
    interrupt = true;
}

int main(void) {

    int timer = TCNT1;

    OCR1A = 0x5;
    TIMSK1 |= (1 << OCIE1A);
    TCCR1B |= (1 << CS12) | (1 << CS10);

    sei();

    while (1) {
        printf("loop!");
    }

}
