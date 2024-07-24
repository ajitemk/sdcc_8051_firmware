                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 ;--------------------------------------------------------
                                     13 ; special function registers
                                     14 ;--------------------------------------------------------
                                     15 	.area RSEG    (ABS,DATA)
      000000                         16 	.org 0x0000
                                     17 ;--------------------------------------------------------
                                     18 ; special function bits
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; overlayable register banks
                                     24 ;--------------------------------------------------------
                                     25 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         26 	.ds 8
                                     27 ;--------------------------------------------------------
                                     28 ; internal ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DSEG    (DATA)
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable items in internal ram
                                     33 ;--------------------------------------------------------
                                     34 	.area	OSEG    (OVR,DATA)
      000008                         35 _main_GpioLedP0_10000_2:
      000008                         36 	.ds 5
      00000D                         37 _main_i_10001_3:
      00000D                         38 	.ds 4
                                     39 ;--------------------------------------------------------
                                     40 ; Stack segment in internal ram
                                     41 ;--------------------------------------------------------
                                     42 	.area SSEG
      000011                         43 __start__stack:
      000011                         44 	.ds	1
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; indirectly addressable internal ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area ISEG    (DATA)
                                     50 ;--------------------------------------------------------
                                     51 ; absolute internal ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area IABS    (ABS,DATA)
                                     54 	.area IABS    (ABS,DATA)
                                     55 ;--------------------------------------------------------
                                     56 ; bit data
                                     57 ;--------------------------------------------------------
                                     58 	.area BSEG    (BIT)
                                     59 ;--------------------------------------------------------
                                     60 ; paged external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area PSEG    (PAG,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; uninitialized external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XSEG    (XDATA)
                                     67 ;--------------------------------------------------------
                                     68 ; absolute external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area XABS    (ABS,XDATA)
                                     71 ;--------------------------------------------------------
                                     72 ; initialized external ram data
                                     73 ;--------------------------------------------------------
                                     74 	.area XISEG   (XDATA)
                                     75 	.area HOME    (CODE)
                                     76 	.area GSINIT0 (CODE)
                                     77 	.area GSINIT1 (CODE)
                                     78 	.area GSINIT2 (CODE)
                                     79 	.area GSINIT3 (CODE)
                                     80 	.area GSINIT4 (CODE)
                                     81 	.area GSINIT5 (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area CSEG    (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; interrupt vector
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
      000000                         89 __interrupt_vect:
      000000 02 00 06         [24]   90 	ljmp	__sdcc_gsinit_startup
                                     91 ;--------------------------------------------------------
                                     92 ; global & static initialisations
                                     93 ;--------------------------------------------------------
                                     94 	.area HOME    (CODE)
                                     95 	.area GSINIT  (CODE)
                                     96 	.area GSFINAL (CODE)
                                     97 	.area GSINIT  (CODE)
                                     98 	.globl __sdcc_gsinit_startup
                                     99 	.globl __sdcc_program_startup
                                    100 	.globl __start__stack
                                    101 	.globl __mcs51_genXINIT
                                    102 	.globl __mcs51_genXRAMCLEAR
                                    103 	.globl __mcs51_genRAMCLEAR
                                    104 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  105 	ljmp	__sdcc_program_startup
                                    106 ;--------------------------------------------------------
                                    107 ; Home
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME    (CODE)
                                    110 	.area HOME    (CODE)
      000003                        111 __sdcc_program_startup:
      000003 02 00 62         [24]  112 	ljmp	_main
                                    113 ;	return from main will return to caller
                                    114 ;--------------------------------------------------------
                                    115 ; code
                                    116 ;--------------------------------------------------------
                                    117 	.area CSEG    (CODE)
                                    118 ;------------------------------------------------------------
                                    119 ;Allocation info for local variables in function 'main'
                                    120 ;------------------------------------------------------------
                                    121 ;GpioLedP0                 Allocated with name '_main_GpioLedP0_10000_2'
                                    122 ;i                         Allocated with name '_main_i_10001_3'
                                    123 ;------------------------------------------------------------
                                    124 ;	main.c:2: void main(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function main
                                    127 ;	-----------------------------------------
      000062                        128 _main:
                           000007   129 	ar7 = 0x07
                           000006   130 	ar6 = 0x06
                           000005   131 	ar5 = 0x05
                           000004   132 	ar4 = 0x04
                           000003   133 	ar3 = 0x03
                           000002   134 	ar2 = 0x02
                           000001   135 	ar1 = 0x01
                           000000   136 	ar0 = 0x00
                                    137 ;	main.c:5: GpioLedP0.pGPIOx=P0;
      000062 75 08 80         [24]  138 	mov	(_main_GpioLedP0_10000_2 + 0),#0x80
      000065 E4               [12]  139 	clr	a
      000066 F5 09            [12]  140 	mov	(_main_GpioLedP0_10000_2 + 1),a
      000068 F5 0A            [12]  141 	mov	(_main_GpioLedP0_10000_2 + 2),a
                                    142 ;	main.c:6: GpioLedP0.pGPIOx=HIGH;
      00006A 75 08 01         [24]  143 	mov	(_main_GpioLedP0_10000_2 + 0),#0x01
      00006D F5 09            [12]  144 	mov	(_main_GpioLedP0_10000_2 + 1),a
      00006F F5 0A            [12]  145 	mov	(_main_GpioLedP0_10000_2 + 2),a
                                    146 ;	main.c:8: while(i--);
      000071 75 0D E8         [24]  147 	mov	_main_i_10001_3,#0xe8
      000074 75 0E 03         [24]  148 	mov	(_main_i_10001_3 + 1),#0x03
      000077 F5 0F            [12]  149 	mov	(_main_i_10001_3 + 2),a
      000079 F5 10            [12]  150 	mov	(_main_i_10001_3 + 3),a
      00007B                        151 00101$:
      00007B AA 0D            [24]  152 	mov	r2,_main_i_10001_3
      00007D AB 0E            [24]  153 	mov	r3,(_main_i_10001_3 + 1)
      00007F AE 0F            [24]  154 	mov	r6,(_main_i_10001_3 + 2)
      000081 AF 10            [24]  155 	mov	r7,(_main_i_10001_3 + 3)
      000083 15 0D            [12]  156 	dec	_main_i_10001_3
      000085 74 FF            [12]  157 	mov	a,#0xff
      000087 B5 0D 0C         [24]  158 	cjne	a,_main_i_10001_3,00129$
      00008A 15 0E            [12]  159 	dec	(_main_i_10001_3 + 1)
      00008C B5 0E 07         [24]  160 	cjne	a,(_main_i_10001_3 + 1),00129$
      00008F 15 0F            [12]  161 	dec	(_main_i_10001_3 + 2)
      000091 B5 0F 02         [24]  162 	cjne	a,(_main_i_10001_3 + 2),00129$
      000094 15 10            [12]  163 	dec	(_main_i_10001_3 + 3)
      000096                        164 00129$:
      000096 EA               [12]  165 	mov	a,r2
      000097 4B               [12]  166 	orl	a,r3
      000098 4E               [12]  167 	orl	a,r6
      000099 4F               [12]  168 	orl	a,r7
                                    169 ;	main.c:9: GpioLedP0.pGPIOx=LOW;
      00009A 70 DF            [24]  170 	jnz	00101$
      00009C F5 08            [12]  171 	mov	(_main_GpioLedP0_10000_2 + 0),a
      00009E F5 09            [12]  172 	mov	(_main_GpioLedP0_10000_2 + 1),a
      0000A0 F5 0A            [12]  173 	mov	(_main_GpioLedP0_10000_2 + 2),a
                                    174 ;	main.c:11: while(i--);
      0000A2 75 0D E8         [24]  175 	mov	_main_i_10001_3,#0xe8
      0000A5 75 0E 03         [24]  176 	mov	(_main_i_10001_3 + 1),#0x03
      0000A8 F5 0F            [12]  177 	mov	(_main_i_10001_3 + 2),a
      0000AA F5 10            [12]  178 	mov	(_main_i_10001_3 + 3),a
      0000AC                        179 00104$:
      0000AC AA 0D            [24]  180 	mov	r2,_main_i_10001_3
      0000AE AB 0E            [24]  181 	mov	r3,(_main_i_10001_3 + 1)
      0000B0 AE 0F            [24]  182 	mov	r6,(_main_i_10001_3 + 2)
      0000B2 AF 10            [24]  183 	mov	r7,(_main_i_10001_3 + 3)
      0000B4 15 0D            [12]  184 	dec	_main_i_10001_3
      0000B6 74 FF            [12]  185 	mov	a,#0xff
      0000B8 B5 0D 0C         [24]  186 	cjne	a,_main_i_10001_3,00131$
      0000BB 15 0E            [12]  187 	dec	(_main_i_10001_3 + 1)
      0000BD B5 0E 07         [24]  188 	cjne	a,(_main_i_10001_3 + 1),00131$
      0000C0 15 0F            [12]  189 	dec	(_main_i_10001_3 + 2)
      0000C2 B5 0F 02         [24]  190 	cjne	a,(_main_i_10001_3 + 2),00131$
      0000C5 15 10            [12]  191 	dec	(_main_i_10001_3 + 3)
      0000C7                        192 00131$:
      0000C7 EA               [12]  193 	mov	a,r2
      0000C8 4B               [12]  194 	orl	a,r3
      0000C9 4E               [12]  195 	orl	a,r6
      0000CA 4F               [12]  196 	orl	a,r7
      0000CB 70 DF            [24]  197 	jnz	00104$
                                    198 ;	main.c:12: }
      0000CD 22               [24]  199 	ret
                                    200 	.area CSEG    (CODE)
                                    201 	.area CONST   (CODE)
                                    202 	.area XINIT   (CODE)
                                    203 	.area CABS    (ABS,CODE)
