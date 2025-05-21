; https://ww1.microchip.com/downloads/en/devicedoc/AVR-Instruction-Set-Manual-DS40002198A.pdf

; 2c:	0c 94 50 00 	jmp	0xa0	; 0xa0 <__vector_11>

0c 94 50 00 jmp 0xa0


1001 010k kkkk 110k
kkkk kkkk kkkk kkkk

0c = 0000 1100
94 = 1001 0100
50 = 1010 0000
0  = 0000 0000

; rev (le)
94 = 1001 0100
0c = 0000 1100
0  = 0000 0000
50 = 1010 0000

1001 0100 0000 1100
0000 0000 1010 0000

target = 10100000
hex(target) = 0xa0 == <__vector_11>
