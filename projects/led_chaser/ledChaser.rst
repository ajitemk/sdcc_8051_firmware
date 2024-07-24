                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module ledChaser
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _blink_PARM_2
                                    109 	.globl _delay
                                    110 	.globl _blink
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _main_ledPins_10000_4:
      000008                        227 	.ds 8
      000010                        228 _blink_PARM_2:
      000010                        229 	.ds 1
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram
                                    232 ;--------------------------------------------------------
                                    233 	.area	OSEG    (OVR,DATA)
      000011                        234 _delay_i_10000_8:
      000011                        235 	.ds 4
                                    236 ;--------------------------------------------------------
                                    237 ; Stack segment in internal ram
                                    238 ;--------------------------------------------------------
                                    239 	.area SSEG
      000015                        240 __start__stack:
      000015                        241 	.ds	1
                                    242 
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; interrupt vector
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
      000000                        286 __interrupt_vect:
      000000 02 00 06         [24]  287 	ljmp	__sdcc_gsinit_startup
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      000003                        308 __sdcc_program_startup:
      000003 02 00 62         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'main'
                                    317 ;------------------------------------------------------------
                                    318 ;i                         Allocated to registers r7 
                                    319 ;ledPins                   Allocated with name '_main_ledPins_10000_4'
                                    320 ;------------------------------------------------------------
                                    321 ;	ledChaser.c:60: void main(void)
                                    322 ;	-----------------------------------------
                                    323 ;	 function main
                                    324 ;	-----------------------------------------
      000062                        325 _main:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
                                    334 ;	ledChaser.c:63: uint8_t ledPins[8]={PIN_1,PIN_2,PIN_3,PIN_4,PIN_5,PIN_6,PIN_7,PIN_8};
      000062 75 08 01         [24]  335 	mov	_main_ledPins_10000_4,#0x01
      000065 75 09 02         [24]  336 	mov	(_main_ledPins_10000_4 + 0x0001),#0x02
      000068 75 0A 04         [24]  337 	mov	(_main_ledPins_10000_4 + 0x0002),#0x04
      00006B 75 0B 08         [24]  338 	mov	(_main_ledPins_10000_4 + 0x0003),#0x08
      00006E 75 0C 10         [24]  339 	mov	(_main_ledPins_10000_4 + 0x0004),#0x10
      000071 75 0D 20         [24]  340 	mov	(_main_ledPins_10000_4 + 0x0005),#0x20
      000074 75 0E 40         [24]  341 	mov	(_main_ledPins_10000_4 + 0x0006),#0x40
      000077 75 0F 80         [24]  342 	mov	(_main_ledPins_10000_4 + 0x0007),#0x80
                                    343 ;	ledChaser.c:64: P1=0x00;	
      00007A 75 90 00         [24]  344 	mov	_P1,#0x00
                                    345 ;	ledChaser.c:65: P2=0x00;
      00007D 75 A0 00         [24]  346 	mov	_P2,#0x00
                                    347 ;	ledChaser.c:66: P0=0xff;
      000080 75 80 FF         [24]  348 	mov	_P0,#0xff
                                    349 ;	ledChaser.c:67: P3=0x00;
      000083 75 B0 00         [24]  350 	mov	_P3,#0x00
                                    351 ;	ledChaser.c:68: P2_0=1;                           //this way we can access port bit.
                                    352 ;	assignBit
      000086 D2 A0            [12]  353 	setb	_P2_0
                                    354 ;	ledChaser.c:69: delay(20000);
      000088 90 4E 20         [24]  355 	mov	dptr,#0x4e20
      00008B E4               [12]  356 	clr	a
      00008C F5 F0            [12]  357 	mov	b,a
      00008E 12 01 19         [24]  358 	lcall	_delay
                                    359 ;	ledChaser.c:73: for(i=0;i<8;i++)
      000091                        360 00109$:
      000091 7F 00            [12]  361 	mov	r7,#0x00
      000093                        362 00105$:
                                    363 ;	ledChaser.c:76: P2 |= 1<<i;
      000093 8F F0            [24]  364 	mov	b,r7
      000095 05 F0            [12]  365 	inc	b
      000097 74 01            [12]  366 	mov	a,#0x01
      000099 80 02            [24]  367 	sjmp	00129$
      00009B                        368 00128$:
      00009B 25 E0            [12]  369 	add	a,acc
      00009D                        370 00129$:
      00009D D5 F0 FB         [24]  371 	djnz	b,00128$
      0000A0 FE               [12]  372 	mov	r6,a
      0000A1 42 A0            [12]  373 	orl	_P2,a
                                    374 ;	ledChaser.c:77: delay(1000);
      0000A3 90 03 E8         [24]  375 	mov	dptr,#0x03e8
      0000A6 E4               [12]  376 	clr	a
      0000A7 F5 F0            [12]  377 	mov	b,a
      0000A9 C0 07            [24]  378 	push	ar7
      0000AB C0 06            [24]  379 	push	ar6
      0000AD 12 01 19         [24]  380 	lcall	_delay
      0000B0 D0 06            [24]  381 	pop	ar6
                                    382 ;	ledChaser.c:78: P2 &= ~(1<<i);
      0000B2 EE               [12]  383 	mov	a,r6
      0000B3 F4               [12]  384 	cpl	a
      0000B4 52 A0            [12]  385 	anl	_P2,a
                                    386 ;	ledChaser.c:79: delay(1000);
      0000B6 90 03 E8         [24]  387 	mov	dptr,#0x03e8
      0000B9 E4               [12]  388 	clr	a
      0000BA F5 F0            [12]  389 	mov	b,a
      0000BC 12 01 19         [24]  390 	lcall	_delay
      0000BF D0 07            [24]  391 	pop	ar7
                                    392 ;	ledChaser.c:81: blink(PORT_0,ledPins[i]);
      0000C1 EF               [12]  393 	mov	a,r7
      0000C2 24 08            [12]  394 	add	a, #_main_ledPins_10000_4
      0000C4 F9               [12]  395 	mov	r1,a
      0000C5 87 10            [24]  396 	mov	_blink_PARM_2,@r1
      0000C7 75 82 00         [24]  397 	mov	dpl, #0x00
      0000CA C0 07            [24]  398 	push	ar7
      0000CC 12 01 56         [24]  399 	lcall	_blink
      0000CF D0 07            [24]  400 	pop	ar7
                                    401 ;	ledChaser.c:73: for(i=0;i<8;i++)
      0000D1 0F               [12]  402 	inc	r7
      0000D2 BF 08 00         [24]  403 	cjne	r7,#0x08,00130$
      0000D5                        404 00130$:
      0000D5 40 BC            [24]  405 	jc	00105$
                                    406 ;	ledChaser.c:85: blink(1,P1_PIN_2);
      0000D7 75 10 02         [24]  407 	mov	_blink_PARM_2,#0x02
      0000DA 75 82 01         [24]  408 	mov	dpl, #0x01
      0000DD 12 01 56         [24]  409 	lcall	_blink
                                    410 ;	ledChaser.c:87: blink(1,P1_PIN_3);
      0000E0 75 10 04         [24]  411 	mov	_blink_PARM_2,#0x04
      0000E3 75 82 01         [24]  412 	mov	dpl, #0x01
      0000E6 12 01 56         [24]  413 	lcall	_blink
                                    414 ;	ledChaser.c:89: blink(1,P1_PIN_4);
      0000E9 75 10 08         [24]  415 	mov	_blink_PARM_2,#0x08
      0000EC 75 82 01         [24]  416 	mov	dpl, #0x01
      0000EF 12 01 56         [24]  417 	lcall	_blink
                                    418 ;	ledChaser.c:91: blink(1,P1_PIN_5);
      0000F2 75 10 10         [24]  419 	mov	_blink_PARM_2,#0x10
      0000F5 75 82 01         [24]  420 	mov	dpl, #0x01
      0000F8 12 01 56         [24]  421 	lcall	_blink
                                    422 ;	ledChaser.c:93: blink(1,P1_PIN_6);
      0000FB 75 10 20         [24]  423 	mov	_blink_PARM_2,#0x20
      0000FE 75 82 01         [24]  424 	mov	dpl, #0x01
      000101 12 01 56         [24]  425 	lcall	_blink
                                    426 ;	ledChaser.c:95: blink(1,P1_PIN_7);
      000104 75 10 40         [24]  427 	mov	_blink_PARM_2,#0x40
      000107 75 82 01         [24]  428 	mov	dpl, #0x01
      00010A 12 01 56         [24]  429 	lcall	_blink
                                    430 ;	ledChaser.c:97: blink(1,P1_PIN_8);
      00010D 75 10 80         [24]  431 	mov	_blink_PARM_2,#0x80
      000110 75 82 01         [24]  432 	mov	dpl, #0x01
      000113 12 01 56         [24]  433 	lcall	_blink
                                    434 ;	ledChaser.c:100: }
      000116 02 00 91         [24]  435 	ljmp	00109$
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'delay'
                                    438 ;------------------------------------------------------------
                                    439 ;i                         Allocated with name '_delay_i_10000_8'
                                    440 ;j                         Allocated to registers r3 
                                    441 ;k                         Allocated to registers r0 r1 r2 r7 
                                    442 ;------------------------------------------------------------
                                    443 ;	ledChaser.c:101: void delay(uint32_t i)
                                    444 ;	-----------------------------------------
                                    445 ;	 function delay
                                    446 ;	-----------------------------------------
      000119                        447 _delay:
      000119 85 82 11         [24]  448 	mov	_delay_i_10000_8,dpl
      00011C 85 83 12         [24]  449 	mov	(_delay_i_10000_8 + 1),dph
      00011F 85 F0 13         [24]  450 	mov	(_delay_i_10000_8 + 2),b
      000122 F5 14            [12]  451 	mov	(_delay_i_10000_8 + 3),a
                                    452 ;	ledChaser.c:103: for(uint32_t j=0;j<10;j++)
      000124 7B 00            [12]  453 	mov	r3,#0x00
      000126                        454 00107$:
      000126 BB 0A 00         [24]  455 	cjne	r3,#0x0a,00137$
      000129                        456 00137$:
      000129 50 2A            [24]  457 	jnc	00109$
                                    458 ;	ledChaser.c:105: for(uint32_t k=0;k<i;k++)
      00012B 78 00            [12]  459 	mov	r0,#0x00
      00012D 79 00            [12]  460 	mov	r1,#0x00
      00012F 7A 00            [12]  461 	mov	r2,#0x00
      000131 7F 00            [12]  462 	mov	r7,#0x00
      000133                        463 00104$:
      000133 C3               [12]  464 	clr	c
      000134 E8               [12]  465 	mov	a,r0
      000135 95 11            [12]  466 	subb	a,_delay_i_10000_8
      000137 E9               [12]  467 	mov	a,r1
      000138 95 12            [12]  468 	subb	a,(_delay_i_10000_8 + 1)
      00013A EA               [12]  469 	mov	a,r2
      00013B 95 13            [12]  470 	subb	a,(_delay_i_10000_8 + 2)
      00013D EF               [12]  471 	mov	a,r7
      00013E 95 14            [12]  472 	subb	a,(_delay_i_10000_8 + 3)
      000140 50 10            [24]  473 	jnc	00108$
                                    474 ;	ledChaser.c:107: __asm__("nop");
      000142 00               [12]  475 	nop
                                    476 ;	ledChaser.c:105: for(uint32_t k=0;k<i;k++)
      000143 08               [12]  477 	inc	r0
      000144 B8 00 09         [24]  478 	cjne	r0,#0x00,00140$
      000147 09               [12]  479 	inc	r1
      000148 B9 00 05         [24]  480 	cjne	r1,#0x00,00140$
      00014B 0A               [12]  481 	inc	r2
      00014C BA 00 E4         [24]  482 	cjne	r2,#0x00,00104$
      00014F 0F               [12]  483 	inc	r7
      000150                        484 00140$:
      000150 80 E1            [24]  485 	sjmp	00104$
      000152                        486 00108$:
                                    487 ;	ledChaser.c:103: for(uint32_t j=0;j<10;j++)
      000152 0B               [12]  488 	inc	r3
      000153 80 D1            [24]  489 	sjmp	00107$
      000155                        490 00109$:
                                    491 ;	ledChaser.c:110: }
      000155 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'blink'
                                    495 ;------------------------------------------------------------
                                    496 ;pin                       Allocated with name '_blink_PARM_2'
                                    497 ;port                      Allocated to registers r7 
                                    498 ;------------------------------------------------------------
                                    499 ;	ledChaser.c:112: void blink(unsigned char port, unsigned char pin)
                                    500 ;	-----------------------------------------
                                    501 ;	 function blink
                                    502 ;	-----------------------------------------
      000156                        503 _blink:
      000156 AF 82            [24]  504 	mov	r7, dpl
                                    505 ;	ledChaser.c:114: switch (port)
      000158 C3               [12]  506 	clr	c
      000159 74 03            [12]  507 	mov	a,#0x03
      00015B 9F               [12]  508 	subb	a,r7
      00015C E4               [12]  509 	clr	a
      00015D 33               [12]  510 	rlc	a
      00015E FE               [12]  511 	mov	r6,a
      00015F 70 24            [24]  512 	jnz	00106$
      000161 EF               [12]  513 	mov	a,r7
      000162 2F               [12]  514 	add	a,r7
                                    515 ;	ledChaser.c:116: case 0:
      000163 90 01 67         [24]  516 	mov	dptr,#00128$
      000166 73               [24]  517 	jmp	@a+dptr
      000167                        518 00128$:
      000167 80 06            [24]  519 	sjmp	00101$
      000169 80 0A            [24]  520 	sjmp	00102$
      00016B 80 0E            [24]  521 	sjmp	00103$
      00016D 80 12            [24]  522 	sjmp	00104$
      00016F                        523 00101$:
                                    524 ;	ledChaser.c:117: P0 ^= (pin); // Toggle pin on Port 0
      00016F E5 10            [12]  525 	mov	a,_blink_PARM_2
      000171 62 80            [12]  526 	xrl	_P0,a
                                    527 ;	ledChaser.c:118: break;
                                    528 ;	ledChaser.c:119: case 1:
      000173 80 10            [24]  529 	sjmp	00106$
      000175                        530 00102$:
                                    531 ;	ledChaser.c:120: P1 ^= (pin); // Toggle pin on Port 1
      000175 E5 10            [12]  532 	mov	a,_blink_PARM_2
      000177 62 90            [12]  533 	xrl	_P1,a
                                    534 ;	ledChaser.c:121: break;
                                    535 ;	ledChaser.c:122: case 2:
      000179 80 0A            [24]  536 	sjmp	00106$
      00017B                        537 00103$:
                                    538 ;	ledChaser.c:123: P2 ^= (pin); // Toggle pin on Port 2
      00017B E5 10            [12]  539 	mov	a,_blink_PARM_2
      00017D 62 A0            [12]  540 	xrl	_P2,a
                                    541 ;	ledChaser.c:124: break;
                                    542 ;	ledChaser.c:125: case 3:
      00017F 80 04            [24]  543 	sjmp	00106$
      000181                        544 00104$:
                                    545 ;	ledChaser.c:126: P3 ^= (pin); // Toggle pin on Port 3
      000181 E5 10            [12]  546 	mov	a,_blink_PARM_2
      000183 62 B0            [12]  547 	xrl	_P3,a
                                    548 ;	ledChaser.c:131: }
      000185                        549 00106$:
                                    550 ;	ledChaser.c:132: delay(1000); // 1 second delay
      000185 90 03 E8         [24]  551 	mov	dptr,#0x03e8
      000188 E4               [12]  552 	clr	a
      000189 F5 F0            [12]  553 	mov	b,a
      00018B C0 07            [24]  554 	push	ar7
      00018D C0 06            [24]  555 	push	ar6
      00018F 12 01 19         [24]  556 	lcall	_delay
      000192 D0 06            [24]  557 	pop	ar6
      000194 D0 07            [24]  558 	pop	ar7
                                    559 ;	ledChaser.c:133: switch (port)
      000196 EE               [12]  560 	mov	a,r6
      000197 70 24            [24]  561 	jnz	00112$
      000199 EF               [12]  562 	mov	a,r7
      00019A 2F               [12]  563 	add	a,r7
                                    564 ;	ledChaser.c:135: case 0:
      00019B 90 01 9F         [24]  565 	mov	dptr,#00130$
      00019E 73               [24]  566 	jmp	@a+dptr
      00019F                        567 00130$:
      00019F 80 06            [24]  568 	sjmp	00107$
      0001A1 80 0A            [24]  569 	sjmp	00108$
      0001A3 80 0E            [24]  570 	sjmp	00109$
      0001A5 80 12            [24]  571 	sjmp	00110$
      0001A7                        572 00107$:
                                    573 ;	ledChaser.c:136: P0 ^= (pin); // Toggle pin on Port 0
      0001A7 E5 10            [12]  574 	mov	a,_blink_PARM_2
      0001A9 62 80            [12]  575 	xrl	_P0,a
                                    576 ;	ledChaser.c:137: break;
                                    577 ;	ledChaser.c:138: case 1:
      0001AB 80 10            [24]  578 	sjmp	00112$
      0001AD                        579 00108$:
                                    580 ;	ledChaser.c:139: P1 ^= (pin); // Toggle pin on Port 1
      0001AD E5 10            [12]  581 	mov	a,_blink_PARM_2
      0001AF 62 90            [12]  582 	xrl	_P1,a
                                    583 ;	ledChaser.c:140: break;
                                    584 ;	ledChaser.c:141: case 2:
      0001B1 80 0A            [24]  585 	sjmp	00112$
      0001B3                        586 00109$:
                                    587 ;	ledChaser.c:142: P2 ^= (pin); // Toggle pin on Port 2
      0001B3 E5 10            [12]  588 	mov	a,_blink_PARM_2
      0001B5 62 A0            [12]  589 	xrl	_P2,a
                                    590 ;	ledChaser.c:143: break;
                                    591 ;	ledChaser.c:144: case 3:
      0001B7 80 04            [24]  592 	sjmp	00112$
      0001B9                        593 00110$:
                                    594 ;	ledChaser.c:145: P3 ^= (pin); // Toggle pin on Port 3
      0001B9 E5 10            [12]  595 	mov	a,_blink_PARM_2
      0001BB 62 B0            [12]  596 	xrl	_P3,a
                                    597 ;	ledChaser.c:150: }
      0001BD                        598 00112$:
                                    599 ;	ledChaser.c:151: delay(1000);
      0001BD 90 03 E8         [24]  600 	mov	dptr,#0x03e8
      0001C0 E4               [12]  601 	clr	a
      0001C1 F5 F0            [12]  602 	mov	b,a
                                    603 ;	ledChaser.c:152: }
      0001C3 02 01 19         [24]  604 	ljmp	_delay
                                    605 	.area CSEG    (CODE)
                                    606 	.area CONST   (CODE)
                                    607 	.area XINIT   (CODE)
                                    608 	.area CABS    (ABS,CODE)
