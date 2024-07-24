;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_GpioLedP0_10000_2:
	.ds 5
_main_i_10001_3:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;GpioLedP0                 Allocated with name '_main_GpioLedP0_10000_2'
;i                         Allocated with name '_main_i_10001_3'
;------------------------------------------------------------
;	main.c:2: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:5: GpioLedP0.pGPIOx=P0;
	mov	(_main_GpioLedP0_10000_2 + 0),#0x80
	clr	a
	mov	(_main_GpioLedP0_10000_2 + 1),a
	mov	(_main_GpioLedP0_10000_2 + 2),a
;	main.c:6: GpioLedP0.pGPIOx=HIGH;
	mov	(_main_GpioLedP0_10000_2 + 0),#0x01
	mov	(_main_GpioLedP0_10000_2 + 1),a
	mov	(_main_GpioLedP0_10000_2 + 2),a
;	main.c:8: while(i--);
	mov	_main_i_10001_3,#0xe8
	mov	(_main_i_10001_3 + 1),#0x03
	mov	(_main_i_10001_3 + 2),a
	mov	(_main_i_10001_3 + 3),a
00101$:
	mov	r2,_main_i_10001_3
	mov	r3,(_main_i_10001_3 + 1)
	mov	r6,(_main_i_10001_3 + 2)
	mov	r7,(_main_i_10001_3 + 3)
	dec	_main_i_10001_3
	mov	a,#0xff
	cjne	a,_main_i_10001_3,00129$
	dec	(_main_i_10001_3 + 1)
	cjne	a,(_main_i_10001_3 + 1),00129$
	dec	(_main_i_10001_3 + 2)
	cjne	a,(_main_i_10001_3 + 2),00129$
	dec	(_main_i_10001_3 + 3)
00129$:
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
;	main.c:9: GpioLedP0.pGPIOx=LOW;
	jnz	00101$
	mov	(_main_GpioLedP0_10000_2 + 0),a
	mov	(_main_GpioLedP0_10000_2 + 1),a
	mov	(_main_GpioLedP0_10000_2 + 2),a
;	main.c:11: while(i--);
	mov	_main_i_10001_3,#0xe8
	mov	(_main_i_10001_3 + 1),#0x03
	mov	(_main_i_10001_3 + 2),a
	mov	(_main_i_10001_3 + 3),a
00104$:
	mov	r2,_main_i_10001_3
	mov	r3,(_main_i_10001_3 + 1)
	mov	r6,(_main_i_10001_3 + 2)
	mov	r7,(_main_i_10001_3 + 3)
	dec	_main_i_10001_3
	mov	a,#0xff
	cjne	a,_main_i_10001_3,00131$
	dec	(_main_i_10001_3 + 1)
	cjne	a,(_main_i_10001_3 + 1),00131$
	dec	(_main_i_10001_3 + 2)
	cjne	a,(_main_i_10001_3 + 2),00131$
	dec	(_main_i_10001_3 + 3)
00131$:
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
	jnz	00104$
;	main.c:12: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
