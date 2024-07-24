;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module ledChaser
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _blink_PARM_2
	.globl _delay
	.globl _blink
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_ledPins_10000_4:
	.ds 8
_blink_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_delay_i_10000_8:
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
;i                         Allocated to registers r7 
;ledPins                   Allocated with name '_main_ledPins_10000_4'
;------------------------------------------------------------
;	ledChaser.c:60: void main(void)
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
;	ledChaser.c:63: uint8_t ledPins[8]={PIN_1,PIN_2,PIN_3,PIN_4,PIN_5,PIN_6,PIN_7,PIN_8};
	mov	_main_ledPins_10000_4,#0x01
	mov	(_main_ledPins_10000_4 + 0x0001),#0x02
	mov	(_main_ledPins_10000_4 + 0x0002),#0x04
	mov	(_main_ledPins_10000_4 + 0x0003),#0x08
	mov	(_main_ledPins_10000_4 + 0x0004),#0x10
	mov	(_main_ledPins_10000_4 + 0x0005),#0x20
	mov	(_main_ledPins_10000_4 + 0x0006),#0x40
	mov	(_main_ledPins_10000_4 + 0x0007),#0x80
;	ledChaser.c:64: P1=0x00;	
	mov	_P1,#0x00
;	ledChaser.c:65: P2=0x00;
	mov	_P2,#0x00
;	ledChaser.c:66: P0=0xff;
	mov	_P0,#0xff
;	ledChaser.c:67: P3=0x00;
	mov	_P3,#0x00
;	ledChaser.c:68: P2_0=1;                           //this way we can access port bit.
;	assignBit
	setb	_P2_0
;	ledChaser.c:69: delay(20000);
	mov	dptr,#0x4e20
	clr	a
	mov	b,a
	lcall	_delay
;	ledChaser.c:73: for(i=0;i<8;i++)
00109$:
	mov	r7,#0x00
00105$:
;	ledChaser.c:76: P2 |= 1<<i;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00129$
00128$:
	add	a,acc
00129$:
	djnz	b,00128$
	mov	r6,a
	orl	_P2,a
;	ledChaser.c:77: delay(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
;	ledChaser.c:78: P2 &= ~(1<<i);
	mov	a,r6
	cpl	a
	anl	_P2,a
;	ledChaser.c:79: delay(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	ledChaser.c:81: blink(PORT_0,ledPins[i]);
	mov	a,r7
	add	a, #_main_ledPins_10000_4
	mov	r1,a
	mov	_blink_PARM_2,@r1
	mov	dpl, #0x00
	push	ar7
	lcall	_blink
	pop	ar7
;	ledChaser.c:73: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00130$
00130$:
	jc	00105$
;	ledChaser.c:85: blink(1,P1_PIN_2);
	mov	_blink_PARM_2,#0x02
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:87: blink(1,P1_PIN_3);
	mov	_blink_PARM_2,#0x04
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:89: blink(1,P1_PIN_4);
	mov	_blink_PARM_2,#0x08
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:91: blink(1,P1_PIN_5);
	mov	_blink_PARM_2,#0x10
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:93: blink(1,P1_PIN_6);
	mov	_blink_PARM_2,#0x20
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:95: blink(1,P1_PIN_7);
	mov	_blink_PARM_2,#0x40
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:97: blink(1,P1_PIN_8);
	mov	_blink_PARM_2,#0x80
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:100: }
	ljmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_10000_8'
;j                         Allocated to registers r3 
;k                         Allocated to registers r0 r1 r2 r7 
;------------------------------------------------------------
;	ledChaser.c:101: void delay(uint32_t i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	_delay_i_10000_8,dpl
	mov	(_delay_i_10000_8 + 1),dph
	mov	(_delay_i_10000_8 + 2),b
	mov	(_delay_i_10000_8 + 3),a
;	ledChaser.c:103: for(uint32_t j=0;j<10;j++)
	mov	r3,#0x00
00107$:
	cjne	r3,#0x0a,00137$
00137$:
	jnc	00109$
;	ledChaser.c:105: for(uint32_t k=0;k<i;k++)
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r7,#0x00
00104$:
	clr	c
	mov	a,r0
	subb	a,_delay_i_10000_8
	mov	a,r1
	subb	a,(_delay_i_10000_8 + 1)
	mov	a,r2
	subb	a,(_delay_i_10000_8 + 2)
	mov	a,r7
	subb	a,(_delay_i_10000_8 + 3)
	jnc	00108$
;	ledChaser.c:107: __asm__("nop");
	nop
;	ledChaser.c:105: for(uint32_t k=0;k<i;k++)
	inc	r0
	cjne	r0,#0x00,00140$
	inc	r1
	cjne	r1,#0x00,00140$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r7
00140$:
	sjmp	00104$
00108$:
;	ledChaser.c:103: for(uint32_t j=0;j<10;j++)
	inc	r3
	sjmp	00107$
00109$:
;	ledChaser.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink'
;------------------------------------------------------------
;pin                       Allocated with name '_blink_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	ledChaser.c:112: void blink(unsigned char port, unsigned char pin)
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
	mov	r7, dpl
;	ledChaser.c:114: switch (port)
	clr	c
	mov	a,#0x03
	subb	a,r7
	clr	a
	rlc	a
	mov	r6,a
	jnz	00106$
	mov	a,r7
	add	a,r7
;	ledChaser.c:116: case 0:
	mov	dptr,#00128$
	jmp	@a+dptr
00128$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	ledChaser.c:117: P0 ^= (pin); // Toggle pin on Port 0
	mov	a,_blink_PARM_2
	xrl	_P0,a
;	ledChaser.c:118: break;
;	ledChaser.c:119: case 1:
	sjmp	00106$
00102$:
;	ledChaser.c:120: P1 ^= (pin); // Toggle pin on Port 1
	mov	a,_blink_PARM_2
	xrl	_P1,a
;	ledChaser.c:121: break;
;	ledChaser.c:122: case 2:
	sjmp	00106$
00103$:
;	ledChaser.c:123: P2 ^= (pin); // Toggle pin on Port 2
	mov	a,_blink_PARM_2
	xrl	_P2,a
;	ledChaser.c:124: break;
;	ledChaser.c:125: case 3:
	sjmp	00106$
00104$:
;	ledChaser.c:126: P3 ^= (pin); // Toggle pin on Port 3
	mov	a,_blink_PARM_2
	xrl	_P3,a
;	ledChaser.c:131: }
00106$:
;	ledChaser.c:132: delay(1000); // 1 second delay
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	ledChaser.c:133: switch (port)
	mov	a,r6
	jnz	00112$
	mov	a,r7
	add	a,r7
;	ledChaser.c:135: case 0:
	mov	dptr,#00130$
	jmp	@a+dptr
00130$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	ledChaser.c:136: P0 ^= (pin); // Toggle pin on Port 0
	mov	a,_blink_PARM_2
	xrl	_P0,a
;	ledChaser.c:137: break;
;	ledChaser.c:138: case 1:
	sjmp	00112$
00108$:
;	ledChaser.c:139: P1 ^= (pin); // Toggle pin on Port 1
	mov	a,_blink_PARM_2
	xrl	_P1,a
;	ledChaser.c:140: break;
;	ledChaser.c:141: case 2:
	sjmp	00112$
00109$:
;	ledChaser.c:142: P2 ^= (pin); // Toggle pin on Port 2
	mov	a,_blink_PARM_2
	xrl	_P2,a
;	ledChaser.c:143: break;
;	ledChaser.c:144: case 3:
	sjmp	00112$
00110$:
;	ledChaser.c:145: P3 ^= (pin); // Toggle pin on Port 3
	mov	a,_blink_PARM_2
	xrl	_P3,a
;	ledChaser.c:150: }
00112$:
;	ledChaser.c:151: delay(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
;	ledChaser.c:152: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
