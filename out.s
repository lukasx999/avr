
out.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
   8:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
   c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  10:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  14:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  18:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  1c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  20:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  24:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  28:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  2c:	0c 94 50 00 	jmp	0xa0	; 0xa0 <__vector_11>
  30:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  34:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  38:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  3c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  40:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  44:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  48:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  4c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  50:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  54:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  58:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  5c:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  60:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>
  64:	0c 94 46 00 	jmp	0x8c	; 0x8c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_clear_bss>:
  74:	21 e0       	ldi	r18, 0x01	; 1

00000076 <.Loc.1>:
  76:	a0 e0       	ldi	r26, 0x00	; 0

00000078 <.Loc.2>:
  78:	b1 e0       	ldi	r27, 0x01	; 1

0000007a <.Loc.3>:
  7a:	01 c0       	rjmp	.+2      	; 0x7e <.Loc.5>

0000007c <.Loc.4>:
  7c:	1d 92       	st	X+, r1

0000007e <.Loc.5>:
  7e:	a1 30       	cpi	r26, 0x01	; 1

00000080 <.Loc.6>:
  80:	b2 07       	cpc	r27, r18

00000082 <.Loc.7>:
  82:	e1 f7       	brne	.-8      	; 0x7c <.Loc.4>

00000084 <L0^A>:
  84:	0e 94 88 00 	call	0x110	; 0x110 <main>
  88:	0c 94 af 00 	jmp	0x15e	; 0x15e <_exit>

0000008c <__bad_interrupt>:
  8c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000090 <foo>:
  90:	cf 93       	push	r28
  92:	df 93       	push	r29
  94:	cd b7       	in	r28, 0x3d	; 61
  96:	de b7       	in	r29, 0x3e	; 62

00000098 <.Loc.1>:
  98:	00 00       	nop
  9a:	df 91       	pop	r29
  9c:	cf 91       	pop	r28
  9e:	08 95       	ret

000000a0 <__vector_11>:
  a0:	1f 92       	push	r1
  a2:	0f 92       	push	r0
  a4:	0f b6       	in	r0, 0x3f	; 63
  a6:	0f 92       	push	r0
  a8:	11 24       	eor	r1, r1
  aa:	2f 93       	push	r18
  ac:	3f 93       	push	r19
  ae:	4f 93       	push	r20
  b0:	5f 93       	push	r21
  b2:	6f 93       	push	r22
  b4:	7f 93       	push	r23
  b6:	8f 93       	push	r24
  b8:	9f 93       	push	r25
  ba:	af 93       	push	r26
  bc:	bf 93       	push	r27
  be:	ef 93       	push	r30
  c0:	ff 93       	push	r31
  c2:	cf 93       	push	r28
  c4:	df 93       	push	r29
  c6:	00 d0       	rcall	.+0      	; 0xc8 <L0^A>

000000c8 <L0^A>:
  c8:	cd b7       	in	r28, 0x3d	; 61
  ca:	de b7       	in	r29, 0x3e	; 62

000000cc <.Loc.3>:
  cc:	84 e8       	ldi	r24, 0x84	; 132
  ce:	90 e0       	ldi	r25, 0x00	; 0
  d0:	fc 01       	movw	r30, r24
  d2:	80 81       	ld	r24, Z
  d4:	91 81       	ldd	r25, Z+1	; 0x01

000000d6 <.Loc.4>:
  d6:	9a 83       	std	Y+2, r25	; 0x02
  d8:	89 83       	std	Y+1, r24	; 0x01

000000da <.Loc.5>:
  da:	0e 94 48 00 	call	0x90	; 0x90 <foo>

000000de <.Loc.6>:
  de:	81 e0       	ldi	r24, 0x01	; 1
  e0:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <interrupt>

000000e4 <.Loc.7>:
  e4:	00 00       	nop
  e6:	0f 90       	pop	r0
  e8:	0f 90       	pop	r0
  ea:	df 91       	pop	r29
  ec:	cf 91       	pop	r28
  ee:	ff 91       	pop	r31
  f0:	ef 91       	pop	r30
  f2:	bf 91       	pop	r27
  f4:	af 91       	pop	r26
  f6:	9f 91       	pop	r25
  f8:	8f 91       	pop	r24
  fa:	7f 91       	pop	r23
  fc:	6f 91       	pop	r22
  fe:	5f 91       	pop	r21
 100:	4f 91       	pop	r20
 102:	3f 91       	pop	r19
 104:	2f 91       	pop	r18
 106:	0f 90       	pop	r0
 108:	0f be       	out	0x3f, r0	; 63
 10a:	0f 90       	pop	r0
 10c:	1f 90       	pop	r1
 10e:	18 95       	reti

00000110 <main>:
 110:	cf 93       	push	r28
 112:	df 93       	push	r29
 114:	00 d0       	rcall	.+0      	; 0x116 <L0^A>

00000116 <L0^A>:
 116:	cd b7       	in	r28, 0x3d	; 61
 118:	de b7       	in	r29, 0x3e	; 62

0000011a <.Loc.9>:
 11a:	84 e8       	ldi	r24, 0x84	; 132
 11c:	90 e0       	ldi	r25, 0x00	; 0
 11e:	fc 01       	movw	r30, r24
 120:	80 81       	ld	r24, Z
 122:	91 81       	ldd	r25, Z+1	; 0x01

00000124 <.Loc.10>:
 124:	9a 83       	std	Y+2, r25	; 0x02
 126:	89 83       	std	Y+1, r24	; 0x01

00000128 <.Loc.11>:
 128:	88 e8       	ldi	r24, 0x88	; 136
 12a:	90 e0       	ldi	r25, 0x00	; 0

0000012c <.Loc.12>:
 12c:	25 e0       	ldi	r18, 0x05	; 5
 12e:	30 e0       	ldi	r19, 0x00	; 0
 130:	fc 01       	movw	r30, r24
 132:	31 83       	std	Z+1, r19	; 0x01
 134:	20 83       	st	Z, r18

00000136 <.Loc.13>:
 136:	8f e6       	ldi	r24, 0x6F	; 111
 138:	90 e0       	ldi	r25, 0x00	; 0
 13a:	fc 01       	movw	r30, r24
 13c:	20 81       	ld	r18, Z
 13e:	8f e6       	ldi	r24, 0x6F	; 111
 140:	90 e0       	ldi	r25, 0x00	; 0

00000142 <.Loc.14>:
 142:	22 60       	ori	r18, 0x02	; 2
 144:	fc 01       	movw	r30, r24
 146:	20 83       	st	Z, r18

00000148 <.Loc.15>:
 148:	81 e8       	ldi	r24, 0x81	; 129
 14a:	90 e0       	ldi	r25, 0x00	; 0
 14c:	fc 01       	movw	r30, r24
 14e:	20 81       	ld	r18, Z
 150:	81 e8       	ldi	r24, 0x81	; 129
 152:	90 e0       	ldi	r25, 0x00	; 0

00000154 <.Loc.16>:
 154:	25 60       	ori	r18, 0x05	; 5
 156:	fc 01       	movw	r30, r24
 158:	20 83       	st	Z, r18

0000015a <.Loc.17>:
 15a:	78 94       	sei

0000015c <.L4>:
 15c:	ff cf       	rjmp	.-2      	; 0x15c <.L4>

0000015e <_exit>:
 15e:	f8 94       	cli

00000160 <__stop_program>:
 160:	ff cf       	rjmp	.-2      	; 0x160 <__stop_program>
