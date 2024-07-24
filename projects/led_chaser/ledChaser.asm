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
_blink_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_delay_i_10000_6:
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
;	ledChaser.c:17: void main(void)
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
;	ledChaser.c:19: P1=0x00;	
	mov	_P1,#0x00
;	ledChaser.c:20: P2=0x00;
	mov	_P2,#0x00
;	ledChaser.c:21: P0=0xff;
	mov	_P0,#0xff
;	ledChaser.c:22: P3=0x00;
	mov	_P3,#0x00
;	ledChaser.c:23: P2_0=1;
;	assignBit
	setb	_P2_0
;	ledChaser.c:24: delay(20000);
	mov	dptr,#0x4e20
	clr	a
	mov	b,a
	lcall	_delay
;	ledChaser.c:25: while(1)
00102$:
;	ledChaser.c:27: blink(1,P1_PIN_8);
	mov	_blink_PARM_2,#0x80
	mov	dpl, #0x01
	lcall	_blink
;	ledChaser.c:30: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_10000_6'
;j                         Allocated to registers r3 
;k                         Allocated to registers r0 r1 r2 r7 
;------------------------------------------------------------
;	ledChaser.c:31: void delay(uint32_t i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	_delay_i_10000_6,dpl
	mov	(_delay_i_10000_6 + 1),dph
	mov	(_delay_i_10000_6 + 2),b
	mov	(_delay_i_10000_6 + 3),a
;	ledChaser.c:33: for(uint32_t j=0;j<10;j++)
	mov	r3,#0x00
00107$:
	cjne	r3,#0x0a,00137$
00137$:
	jnc	00109$
;	ledChaser.c:35: for(uint32_t k=0;k<i;k++)
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r7,#0x00
00104$:
	clr	c
	mov	a,r0
	subb	a,_delay_i_10000_6
	mov	a,r1
	subb	a,(_delay_i_10000_6 + 1)
	mov	a,r2
	subb	a,(_delay_i_10000_6 + 2)
	mov	a,r7
	subb	a,(_delay_i_10000_6 + 3)
	jnc	00108$
;	ledChaser.c:37: __asm__("nop");
	nop
;	ledChaser.c:35: for(uint32_t k=0;k<i;k++)
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
;	ledChaser.c:33: for(uint32_t j=0;j<10;j++)
	inc	r3
	sjmp	00107$
00109$:
;	ledChaser.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink'
;------------------------------------------------------------
;pin                       Allocated with name '_blink_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	ledChaser.c:42: void blink(unsigned char port, unsigned char pin)
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
;	ledChaser.c:44: switch (port)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00106$
	mov	a,r7
	add	a,r7
;	ledChaser.c:46: case 0:
	mov	dptr,#00116$
	jmp	@a+dptr
00116$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	ledChaser.c:47: P0 ^= (pin); // Toggle pin on Port 0
	mov	a,_blink_PARM_2
	xrl	_P0,a
;	ledChaser.c:48: break;
;	ledChaser.c:49: case 1:
	sjmp	00106$
00102$:
;	ledChaser.c:50: P1 ^= (pin); // Toggle pin on Port 1
	mov	a,_blink_PARM_2
	xrl	_P1,a
;	ledChaser.c:51: break;
;	ledChaser.c:52: case 2:
	sjmp	00106$
00103$:
;	ledChaser.c:53: P2 ^= (1<<pin); // Toggle pin on Port 2
	mov	b,_blink_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00118$
00117$:
	add	a,acc
00118$:
	djnz	b,00117$
	xrl	_P2,a
;	ledChaser.c:54: break;
;	ledChaser.c:55: case 3:
	sjmp	00106$
00104$:
;	ledChaser.c:56: P3 ^= (1<<pin); // Toggle pin on Port 3
	mov	b,_blink_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	00120$
00119$:
	add	a,acc
00120$:
	djnz	b,00119$
	xrl	_P3,a
;	ledChaser.c:61: }
00106$:
;	ledChaser.c:62: delay(1000); // 1 second delay
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
;	ledChaser.c:63: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
