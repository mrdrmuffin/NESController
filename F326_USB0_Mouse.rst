                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F326_USB0_Mouse
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Timer1_ISR
                             13 	.globl _P
                             14 	.globl _F1
                             15 	.globl _OV
                             16 	.globl _RS0
                             17 	.globl _RS1
                             18 	.globl _F0
                             19 	.globl _AC
                             20 	.globl _CY
                             21 	.globl _PX0
                             22 	.globl _PT0
                             23 	.globl _PX1
                             24 	.globl _PT1
                             25 	.globl _PS0
                             26 	.globl _EX0
                             27 	.globl _ET0
                             28 	.globl _EX1
                             29 	.globl _ET1
                             30 	.globl _ES0
                             31 	.globl _EA
                             32 	.globl _RI0
                             33 	.globl _TI0
                             34 	.globl _RBX0
                             35 	.globl _TBX0
                             36 	.globl _REN0
                             37 	.globl _PERR0
                             38 	.globl _OVR0
                             39 	.globl _IT0
                             40 	.globl _IE0
                             41 	.globl _IT1
                             42 	.globl _IE1
                             43 	.globl _TR0
                             44 	.globl _TF0
                             45 	.globl _TR1
                             46 	.globl _TF1
                             47 	.globl __XPAGE
                             48 	.globl _SBRL0
                             49 	.globl _DP
                             50 	.globl _VDM0CN
                             51 	.globl _EIP2
                             52 	.globl _EIP1
                             53 	.globl _B
                             54 	.globl _RSTSRC
                             55 	.globl _EIE2
                             56 	.globl _EIE1
                             57 	.globl _OSCLCN
                             58 	.globl _GPIOCN
                             59 	.globl _ACC
                             60 	.globl _USB0XCN
                             61 	.globl _PSW
                             62 	.globl _REG0CN
                             63 	.globl _CLKMUL
                             64 	.globl _IP
                             65 	.globl _FLKEY
                             66 	.globl _FLSCL
                             67 	.globl _OSCICL
                             68 	.globl _OSCICN
                             69 	.globl _P3
                             70 	.globl _EMI0CN
                             71 	.globl _CLKSEL
                             72 	.globl _IE
                             73 	.globl _P3MDOUT
                             74 	.globl _P2MDOUT
                             75 	.globl _P0MDOUT
                             76 	.globl _P2
                             77 	.globl _SMOD0
                             78 	.globl _SBUF0
                             79 	.globl _SCON0
                             80 	.globl _USB0DAT
                             81 	.globl _USB0ADR
                             82 	.globl _SBRLH0
                             83 	.globl _SBRLL0
                             84 	.globl _SBCON0
                             85 	.globl _PSCTL
                             86 	.globl _CKCON
                             87 	.globl _TH1
                             88 	.globl _TH0
                             89 	.globl _TL1
                             90 	.globl _TL0
                             91 	.globl _TMOD
                             92 	.globl _TCON
                             93 	.globl _PCON
                             94 	.globl _DPH
                             95 	.globl _DPL
                             96 	.globl _SP
                             97 	.globl _P0
                             98 	.globl _TOGGLE2
                             99 	.globl _TOGGLE1
                            100 	.globl _SWITCH_2_STATE
                            101 	.globl _SWITCH_1_STATE
                            102 	.globl _IN_PACKET
                            103 	.globl _MOUSE_BUTTON
                            104 	.globl _MOUSE_AXIS
                            105 	.globl _MOUSE_VECTOR
                            106 	.globl _System_Init
                            107 	.globl _USB0_Init
                            108 	.globl _Sysclk_Init
                            109 	.globl _Port_Init
                            110 	.globl _Timer_Init
                            111 	.globl _Delay
                            112 ;--------------------------------------------------------
                            113 ; special function registers
                            114 ;--------------------------------------------------------
                            115 	.area RSEG    (ABS,DATA)
   0000                     116 	.org 0x0000
                    0080    117 G$P0$0$0 == 0x0080
                    0080    118 _P0	=	0x0080
                    0081    119 G$SP$0$0 == 0x0081
                    0081    120 _SP	=	0x0081
                    0082    121 G$DPL$0$0 == 0x0082
                    0082    122 _DPL	=	0x0082
                    0083    123 G$DPH$0$0 == 0x0083
                    0083    124 _DPH	=	0x0083
                    0087    125 G$PCON$0$0 == 0x0087
                    0087    126 _PCON	=	0x0087
                    0088    127 G$TCON$0$0 == 0x0088
                    0088    128 _TCON	=	0x0088
                    0089    129 G$TMOD$0$0 == 0x0089
                    0089    130 _TMOD	=	0x0089
                    008A    131 G$TL0$0$0 == 0x008a
                    008A    132 _TL0	=	0x008a
                    008B    133 G$TL1$0$0 == 0x008b
                    008B    134 _TL1	=	0x008b
                    008C    135 G$TH0$0$0 == 0x008c
                    008C    136 _TH0	=	0x008c
                    008D    137 G$TH1$0$0 == 0x008d
                    008D    138 _TH1	=	0x008d
                    008E    139 G$CKCON$0$0 == 0x008e
                    008E    140 _CKCON	=	0x008e
                    008F    141 G$PSCTL$0$0 == 0x008f
                    008F    142 _PSCTL	=	0x008f
                    0091    143 G$SBCON0$0$0 == 0x0091
                    0091    144 _SBCON0	=	0x0091
                    0093    145 G$SBRLL0$0$0 == 0x0093
                    0093    146 _SBRLL0	=	0x0093
                    0094    147 G$SBRLH0$0$0 == 0x0094
                    0094    148 _SBRLH0	=	0x0094
                    0096    149 G$USB0ADR$0$0 == 0x0096
                    0096    150 _USB0ADR	=	0x0096
                    0097    151 G$USB0DAT$0$0 == 0x0097
                    0097    152 _USB0DAT	=	0x0097
                    0098    153 G$SCON0$0$0 == 0x0098
                    0098    154 _SCON0	=	0x0098
                    0099    155 G$SBUF0$0$0 == 0x0099
                    0099    156 _SBUF0	=	0x0099
                    009A    157 G$SMOD0$0$0 == 0x009a
                    009A    158 _SMOD0	=	0x009a
                    00A0    159 G$P2$0$0 == 0x00a0
                    00A0    160 _P2	=	0x00a0
                    00A4    161 G$P0MDOUT$0$0 == 0x00a4
                    00A4    162 _P0MDOUT	=	0x00a4
                    00A6    163 G$P2MDOUT$0$0 == 0x00a6
                    00A6    164 _P2MDOUT	=	0x00a6
                    00A7    165 G$P3MDOUT$0$0 == 0x00a7
                    00A7    166 _P3MDOUT	=	0x00a7
                    00A8    167 G$IE$0$0 == 0x00a8
                    00A8    168 _IE	=	0x00a8
                    00A9    169 G$CLKSEL$0$0 == 0x00a9
                    00A9    170 _CLKSEL	=	0x00a9
                    00AA    171 G$EMI0CN$0$0 == 0x00aa
                    00AA    172 _EMI0CN	=	0x00aa
                    00B0    173 G$P3$0$0 == 0x00b0
                    00B0    174 _P3	=	0x00b0
                    00B2    175 G$OSCICN$0$0 == 0x00b2
                    00B2    176 _OSCICN	=	0x00b2
                    00B3    177 G$OSCICL$0$0 == 0x00b3
                    00B3    178 _OSCICL	=	0x00b3
                    00B6    179 G$FLSCL$0$0 == 0x00b6
                    00B6    180 _FLSCL	=	0x00b6
                    00B7    181 G$FLKEY$0$0 == 0x00b7
                    00B7    182 _FLKEY	=	0x00b7
                    00B8    183 G$IP$0$0 == 0x00b8
                    00B8    184 _IP	=	0x00b8
                    00B9    185 G$CLKMUL$0$0 == 0x00b9
                    00B9    186 _CLKMUL	=	0x00b9
                    00C9    187 G$REG0CN$0$0 == 0x00c9
                    00C9    188 _REG0CN	=	0x00c9
                    00D0    189 G$PSW$0$0 == 0x00d0
                    00D0    190 _PSW	=	0x00d0
                    00D7    191 G$USB0XCN$0$0 == 0x00d7
                    00D7    192 _USB0XCN	=	0x00d7
                    00E0    193 G$ACC$0$0 == 0x00e0
                    00E0    194 _ACC	=	0x00e0
                    00E2    195 G$GPIOCN$0$0 == 0x00e2
                    00E2    196 _GPIOCN	=	0x00e2
                    00E3    197 G$OSCLCN$0$0 == 0x00e3
                    00E3    198 _OSCLCN	=	0x00e3
                    00E6    199 G$EIE1$0$0 == 0x00e6
                    00E6    200 _EIE1	=	0x00e6
                    00E7    201 G$EIE2$0$0 == 0x00e7
                    00E7    202 _EIE2	=	0x00e7
                    00EF    203 G$RSTSRC$0$0 == 0x00ef
                    00EF    204 _RSTSRC	=	0x00ef
                    00F0    205 G$B$0$0 == 0x00f0
                    00F0    206 _B	=	0x00f0
                    00F6    207 G$EIP1$0$0 == 0x00f6
                    00F6    208 _EIP1	=	0x00f6
                    00F7    209 G$EIP2$0$0 == 0x00f7
                    00F7    210 _EIP2	=	0x00f7
                    00FF    211 G$VDM0CN$0$0 == 0x00ff
                    00FF    212 _VDM0CN	=	0x00ff
                    8382    213 G$DP$0$0 == 0x8382
                    8382    214 _DP	=	0x8382
                    9493    215 G$SBRL0$0$0 == 0x9493
                    9493    216 _SBRL0	=	0x9493
                    00AA    217 G$_XPAGE$0$0 == 0x00aa
                    00AA    218 __XPAGE	=	0x00aa
                            219 ;--------------------------------------------------------
                            220 ; special function bits
                            221 ;--------------------------------------------------------
                            222 	.area RSEG    (ABS,DATA)
   0000                     223 	.org 0x0000
                    008F    224 G$TF1$0$0 == 0x008f
                    008F    225 _TF1	=	0x008f
                    008E    226 G$TR1$0$0 == 0x008e
                    008E    227 _TR1	=	0x008e
                    008D    228 G$TF0$0$0 == 0x008d
                    008D    229 _TF0	=	0x008d
                    008C    230 G$TR0$0$0 == 0x008c
                    008C    231 _TR0	=	0x008c
                    008B    232 G$IE1$0$0 == 0x008b
                    008B    233 _IE1	=	0x008b
                    008A    234 G$IT1$0$0 == 0x008a
                    008A    235 _IT1	=	0x008a
                    0089    236 G$IE0$0$0 == 0x0089
                    0089    237 _IE0	=	0x0089
                    0088    238 G$IT0$0$0 == 0x0088
                    0088    239 _IT0	=	0x0088
                    009F    240 G$OVR0$0$0 == 0x009f
                    009F    241 _OVR0	=	0x009f
                    009F    242 G$PERR0$0$0 == 0x009f
                    009F    243 _PERR0	=	0x009f
                    009C    244 G$REN0$0$0 == 0x009c
                    009C    245 _REN0	=	0x009c
                    009B    246 G$TBX0$0$0 == 0x009b
                    009B    247 _TBX0	=	0x009b
                    009A    248 G$RBX0$0$0 == 0x009a
                    009A    249 _RBX0	=	0x009a
                    0099    250 G$TI0$0$0 == 0x0099
                    0099    251 _TI0	=	0x0099
                    0098    252 G$RI0$0$0 == 0x0098
                    0098    253 _RI0	=	0x0098
                    00AF    254 G$EA$0$0 == 0x00af
                    00AF    255 _EA	=	0x00af
                    00AC    256 G$ES0$0$0 == 0x00ac
                    00AC    257 _ES0	=	0x00ac
                    00AB    258 G$ET1$0$0 == 0x00ab
                    00AB    259 _ET1	=	0x00ab
                    00AA    260 G$EX1$0$0 == 0x00aa
                    00AA    261 _EX1	=	0x00aa
                    00A9    262 G$ET0$0$0 == 0x00a9
                    00A9    263 _ET0	=	0x00a9
                    00A8    264 G$EX0$0$0 == 0x00a8
                    00A8    265 _EX0	=	0x00a8
                    00BC    266 G$PS0$0$0 == 0x00bc
                    00BC    267 _PS0	=	0x00bc
                    00BB    268 G$PT1$0$0 == 0x00bb
                    00BB    269 _PT1	=	0x00bb
                    00BA    270 G$PX1$0$0 == 0x00ba
                    00BA    271 _PX1	=	0x00ba
                    00B9    272 G$PT0$0$0 == 0x00b9
                    00B9    273 _PT0	=	0x00b9
                    00B8    274 G$PX0$0$0 == 0x00b8
                    00B8    275 _PX0	=	0x00b8
                    00D7    276 G$CY$0$0 == 0x00d7
                    00D7    277 _CY	=	0x00d7
                    00D6    278 G$AC$0$0 == 0x00d6
                    00D6    279 _AC	=	0x00d6
                    00D5    280 G$F0$0$0 == 0x00d5
                    00D5    281 _F0	=	0x00d5
                    00D4    282 G$RS1$0$0 == 0x00d4
                    00D4    283 _RS1	=	0x00d4
                    00D3    284 G$RS0$0$0 == 0x00d3
                    00D3    285 _RS0	=	0x00d3
                    00D2    286 G$OV$0$0 == 0x00d2
                    00D2    287 _OV	=	0x00d2
                    00D1    288 G$F1$0$0 == 0x00d1
                    00D1    289 _F1	=	0x00d1
                    00D0    290 G$P$0$0 == 0x00d0
                    00D0    291 _P	=	0x00d0
                            292 ;--------------------------------------------------------
                            293 ; overlayable register banks
                            294 ;--------------------------------------------------------
                            295 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     296 	.ds 8
                            297 ;--------------------------------------------------------
                            298 ; internal ram data
                            299 ;--------------------------------------------------------
                            300 	.area DSEG    (DATA)
                    0000    301 G$MOUSE_VECTOR$0$0==.
   002B                     302 _MOUSE_VECTOR::
   002B                     303 	.ds 1
                    0001    304 G$MOUSE_AXIS$0$0==.
   002C                     305 _MOUSE_AXIS::
   002C                     306 	.ds 1
                    0002    307 G$MOUSE_BUTTON$0$0==.
   002D                     308 _MOUSE_BUTTON::
   002D                     309 	.ds 1
                    0003    310 G$IN_PACKET$0$0==.
   002E                     311 _IN_PACKET::
   002E                     312 	.ds 2
                    0005    313 G$SWITCH_1_STATE$0$0==.
   0030                     314 _SWITCH_1_STATE::
   0030                     315 	.ds 1
                    0006    316 G$SWITCH_2_STATE$0$0==.
   0031                     317 _SWITCH_2_STATE::
   0031                     318 	.ds 1
                    0007    319 G$TOGGLE1$0$0==.
   0032                     320 _TOGGLE1::
   0032                     321 	.ds 1
                    0008    322 G$TOGGLE2$0$0==.
   0033                     323 _TOGGLE2::
   0033                     324 	.ds 1
                            325 ;--------------------------------------------------------
                            326 ; overlayable items in internal ram 
                            327 ;--------------------------------------------------------
                            328 	.area	OSEG    (OVR,DATA)
                            329 ;--------------------------------------------------------
                            330 ; indirectly addressable internal ram data
                            331 ;--------------------------------------------------------
                            332 	.area ISEG    (DATA)
                            333 ;--------------------------------------------------------
                            334 ; absolute internal ram data
                            335 ;--------------------------------------------------------
                            336 	.area IABS    (ABS,DATA)
                            337 	.area IABS    (ABS,DATA)
                            338 ;--------------------------------------------------------
                            339 ; bit data
                            340 ;--------------------------------------------------------
                            341 	.area BSEG    (BIT)
                            342 ;--------------------------------------------------------
                            343 ; paged external ram data
                            344 ;--------------------------------------------------------
                            345 	.area PSEG    (PAG,XDATA)
                            346 ;--------------------------------------------------------
                            347 ; external ram data
                            348 ;--------------------------------------------------------
                            349 	.area XSEG    (XDATA)
                            350 ;--------------------------------------------------------
                            351 ; absolute external ram data
                            352 ;--------------------------------------------------------
                            353 	.area XABS    (ABS,XDATA)
                            354 ;--------------------------------------------------------
                            355 ; external initialized ram data
                            356 ;--------------------------------------------------------
                            357 	.area XISEG   (XDATA)
                            358 	.area HOME    (CODE)
                            359 	.area GSINIT0 (CODE)
                            360 	.area GSINIT1 (CODE)
                            361 	.area GSINIT2 (CODE)
                            362 	.area GSINIT3 (CODE)
                            363 	.area GSINIT4 (CODE)
                            364 	.area GSINIT5 (CODE)
                            365 	.area GSINIT  (CODE)
                            366 	.area GSFINAL (CODE)
                            367 	.area CSEG    (CODE)
                            368 ;--------------------------------------------------------
                            369 ; global & static initialisations
                            370 ;--------------------------------------------------------
                            371 	.area HOME    (CODE)
                            372 	.area GSINIT  (CODE)
                            373 	.area GSFINAL (CODE)
                            374 	.area GSINIT  (CODE)
                    0000    375 	C$F326_USB0_Mouse.c$86$1$41 ==.
                            376 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:86: unsigned char SWITCH_1_STATE = 0;      // Indicate status of switch
   006D 75 30 00            377 	mov	_SWITCH_1_STATE,#0x00
                    0003    378 	C$F326_USB0_Mouse.c$87$1$41 ==.
                            379 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:87: unsigned char SWITCH_2_STATE = 0;      // starting at 0 == off
   0070 75 31 00            380 	mov	_SWITCH_2_STATE,#0x00
                    0006    381 	C$F326_USB0_Mouse.c$89$1$41 ==.
                            382 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:89: unsigned char TOGGLE1 = 0;             // Variable to make sure each button
   0073 75 32 00            383 	mov	_TOGGLE1,#0x00
                    0009    384 	C$F326_USB0_Mouse.c$90$1$41 ==.
                            385 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:90: unsigned char TOGGLE2 = 0;             // press and release toggles switch
   0076 75 33 00            386 	mov	_TOGGLE2,#0x00
                            387 ;--------------------------------------------------------
                            388 ; Home
                            389 ;--------------------------------------------------------
                            390 	.area HOME    (CODE)
                            391 	.area HOME    (CODE)
                            392 ;--------------------------------------------------------
                            393 ; code
                            394 ;--------------------------------------------------------
                            395 	.area CSEG    (CODE)
                            396 ;------------------------------------------------------------
                            397 ;Allocation info for local variables in function 'Timer1_ISR'
                            398 ;------------------------------------------------------------
                    0000    399 	G$Timer1_ISR$0$0 ==.
                    0000    400 	C$F326_USB0_Mouse.c$115$0$0 ==.
                            401 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:115: void Timer1_ISR(void) interrupt 3
                            402 ;	-----------------------------------------
                            403 ;	 function Timer1_ISR
                            404 ;	-----------------------------------------
   0BFF                     405 _Timer1_ISR:
                    0007    406 	ar7 = 0x07
                    0006    407 	ar6 = 0x06
                    0005    408 	ar5 = 0x05
                    0004    409 	ar4 = 0x04
                    0003    410 	ar3 = 0x03
                    0002    411 	ar2 = 0x02
                    0001    412 	ar1 = 0x01
                    0000    413 	ar0 = 0x00
   0BFF C0 E0               414 	push	acc
                    0002    415 	C$F326_USB0_Mouse.c$117$1$27 ==.
                            416 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:117: if (!(P2 & Sw1))                    // Check for switch #1 pressed
   0C01 E5 A0               417 	mov	a,_P2
   0C03 20 E0 0E            418 	jb	acc.0,00104$
                    0007    419 	C$F326_USB0_Mouse.c$119$2$28 ==.
                            420 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:119: if (TOGGLE1 == 0)                // Toggle is used to debounce switch
   0C06 E5 32               421 	mov	a,_TOGGLE1
   0C08 70 0D               422 	jnz	00105$
                    000B    423 	C$F326_USB0_Mouse.c$122$3$29 ==.
                            424 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:122: SWITCH_1_STATE = ~SWITCH_1_STATE;
   0C0A E5 30               425 	mov	a,_SWITCH_1_STATE
   0C0C F4                  426 	cpl	a
   0C0D F5 30               427 	mov	_SWITCH_1_STATE,a
                    0010    428 	C$F326_USB0_Mouse.c$123$3$29 ==.
                            429 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:123: TOGGLE1 = 1;                  // to the host
   0C0F 75 32 01            430 	mov	_TOGGLE1,#0x01
   0C12 80 03               431 	sjmp	00105$
   0C14                     432 00104$:
                    0015    433 	C$F326_USB0_Mouse.c$126$1$27 ==.
                            434 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:126: else TOGGLE1 = 0;                   // Reset toggle variable
   0C14 75 32 00            435 	mov	_TOGGLE1,#0x00
   0C17                     436 00105$:
                    0018    437 	C$F326_USB0_Mouse.c$128$1$27 ==.
                            438 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:128: SWITCH_2_STATE = (P2 & Sw2);
   0C17 74 02               439 	mov	a,#0x02
   0C19 55 A0               440 	anl	a,_P2
   0C1B F5 31               441 	mov	_SWITCH_2_STATE,a
                    001E    442 	C$F326_USB0_Mouse.c$130$1$27 ==.
                            443 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:130: TF1 = 0;                              // Clear Timer2 interrupt flag
   0C1D C2 8F               444 	clr	_TF1
   0C1F D0 E0               445 	pop	acc
                    0022    446 	C$F326_USB0_Mouse.c$131$1$27 ==.
                    0022    447 	XG$Timer1_ISR$0$0 ==.
   0C21 32                  448 	reti
                            449 ;	eliminated unneeded mov psw,# (no regs used in bank)
                            450 ;	eliminated unneeded push/pop psw
                            451 ;	eliminated unneeded push/pop dpl
                            452 ;	eliminated unneeded push/pop dph
                            453 ;	eliminated unneeded push/pop b
                            454 ;------------------------------------------------------------
                            455 ;Allocation info for local variables in function 'System_Init'
                            456 ;------------------------------------------------------------
                    0023    457 	G$System_Init$0$0 ==.
                    0023    458 	C$F326_USB0_Mouse.c$147$1$27 ==.
                            459 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:147: void System_Init(void)
                            460 ;	-----------------------------------------
                            461 ;	 function System_Init
                            462 ;	-----------------------------------------
   0C22                     463 _System_Init:
                    0023    464 	C$F326_USB0_Mouse.c$150$1$31 ==.
                            465 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:150: Sysclk_Init ();                     // initialize system clock
   0C22 12 0C 77            466 	lcall	_Sysclk_Init
                    0026    467 	C$F326_USB0_Mouse.c$151$1$31 ==.
                            468 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:151: Port_Init ();                       // configure cross bar
   0C25 12 0C 8F            469 	lcall	_Port_Init
                    0029    470 	C$F326_USB0_Mouse.c$152$1$31 ==.
                            471 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:152: Timer_Init ();                      // configure timer
   0C28 12 0C 95            472 	lcall	_Timer_Init
                    002C    473 	C$F326_USB0_Mouse.c$153$1$31 ==.
                    002C    474 	XG$System_Init$0$0 ==.
   0C2B 22                  475 	ret
                            476 ;------------------------------------------------------------
                            477 ;Allocation info for local variables in function 'USB0_Init'
                            478 ;------------------------------------------------------------
                    002D    479 	G$USB0_Init$0$0 ==.
                    002D    480 	C$F326_USB0_Mouse.c$166$1$31 ==.
                            481 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:166: void USB0_Init(void)
                            482 ;	-----------------------------------------
                            483 ;	 function USB0_Init
                            484 ;	-----------------------------------------
   0C2C                     485 _USB0_Init:
                    002D    486 	C$F326_USB0_Mouse.c$169$1$33 ==.
                            487 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:169: POLL_WRITE_BYTE(POWER,  0x08);      // Force Asynchronous USB Reset
   0C2C                     488 00101$:
   0C2C E5 96               489 	mov	a,_USB0ADR
   0C2E 20 E7 FB            490 	jb	acc.7,00101$
   0C31 75 96 01            491 	mov	_USB0ADR,#0x01
   0C34 75 97 08            492 	mov	_USB0DAT,#0x08
                    0038    493 	C$F326_USB0_Mouse.c$170$1$33 ==.
                            494 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:170: POLL_WRITE_BYTE(IN1IE,  0x03);      // Enable Endpoint 0-1 in interrupts
   0C37                     495 00104$:
   0C37 E5 96               496 	mov	a,_USB0ADR
   0C39 20 E7 FB            497 	jb	acc.7,00104$
   0C3C 75 96 07            498 	mov	_USB0ADR,#0x07
   0C3F 75 97 03            499 	mov	_USB0DAT,#0x03
                    0043    500 	C$F326_USB0_Mouse.c$171$1$33 ==.
                            501 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:171: POLL_WRITE_BYTE(OUT1IE, 0x02);      // Enable Endpoint 0-1 out interrupts
   0C42                     502 00107$:
   0C42 E5 96               503 	mov	a,_USB0ADR
   0C44 20 E7 FB            504 	jb	acc.7,00107$
   0C47 75 96 09            505 	mov	_USB0ADR,#0x09
   0C4A 75 97 02            506 	mov	_USB0DAT,#0x02
                    004E    507 	C$F326_USB0_Mouse.c$172$1$33 ==.
                            508 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:172: POLL_WRITE_BYTE(CMIE,   0x07);      // Enable Reset, Resume, and Suspend
   0C4D                     509 00110$:
   0C4D E5 96               510 	mov	a,_USB0ADR
   0C4F 20 E7 FB            511 	jb	acc.7,00110$
   0C52 75 96 0B            512 	mov	_USB0ADR,#0x0B
   0C55 75 97 07            513 	mov	_USB0DAT,#0x07
                    0059    514 	C$F326_USB0_Mouse.c$174$1$33 ==.
                            515 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:174: USB0XCN = 0xE0;                     // Enable transceiver; select full speed
   0C58 75 D7 E0            516 	mov	_USB0XCN,#0xE0
                    005C    517 	C$F326_USB0_Mouse.c$175$1$33 ==.
                            518 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:175: POLL_WRITE_BYTE(CLKREC, 0x89);      // Enable clock recovery, single-step
   0C5B                     519 00113$:
   0C5B E5 96               520 	mov	a,_USB0ADR
   0C5D 20 E7 FB            521 	jb	acc.7,00113$
   0C60 75 96 0F            522 	mov	_USB0ADR,#0x0F
   0C63 75 97 89            523 	mov	_USB0DAT,#0x89
                    0067    524 	C$F326_USB0_Mouse.c$178$1$33 ==.
                            525 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:178: EIE1 |= 0x02;                       // Enable USB0 Interrupts
   0C66 43 E6 02            526 	orl	_EIE1,#0x02
                    006A    527 	C$F326_USB0_Mouse.c$179$1$33 ==.
                            528 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:179: EA = 1;                             // Global Interrupt enable
   0C69 D2 AF               529 	setb	_EA
                    006C    530 	C$F326_USB0_Mouse.c$181$1$33 ==.
                            531 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:181: POLL_WRITE_BYTE(POWER,  0x01);      // Inhibit Bit and enable suspend
   0C6B                     532 00116$:
   0C6B E5 96               533 	mov	a,_USB0ADR
   0C6D 20 E7 FB            534 	jb	acc.7,00116$
   0C70 75 96 01            535 	mov	_USB0ADR,#0x01
   0C73 75 97 01            536 	mov	_USB0DAT,#0x01
                    0077    537 	C$F326_USB0_Mouse.c$184$1$33 ==.
                    0077    538 	XG$USB0_Init$0$0 ==.
   0C76 22                  539 	ret
                            540 ;------------------------------------------------------------
                            541 ;Allocation info for local variables in function 'Sysclk_Init'
                            542 ;------------------------------------------------------------
                    0078    543 	G$Sysclk_Init$0$0 ==.
                    0078    544 	C$F326_USB0_Mouse.c$198$1$33 ==.
                            545 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:198: void Sysclk_Init(void)
                            546 ;	-----------------------------------------
                            547 ;	 function Sysclk_Init
                            548 ;	-----------------------------------------
   0C77                     549 _Sysclk_Init:
                    0078    550 	C$F326_USB0_Mouse.c$201$1$35 ==.
                            551 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:201: OSCICN |= 0x82;
   0C77 43 B2 82            552 	orl	_OSCICN,#0x82
                    007B    553 	C$F326_USB0_Mouse.c$202$1$35 ==.
                            554 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:202: CLKMUL  = 0x00;
   0C7A 75 B9 00            555 	mov	_CLKMUL,#0x00
                    007E    556 	C$F326_USB0_Mouse.c$203$1$35 ==.
                            557 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:203: CLKMUL |= 0x80;                     // Enable clock multiplier
   0C7D 43 B9 80            558 	orl	_CLKMUL,#0x80
                    0081    559 	C$F326_USB0_Mouse.c$205$1$35 ==.
                            560 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:205: Delay();
   0C80 12 0C A5            561 	lcall	_Delay
                    0084    562 	C$F326_USB0_Mouse.c$207$1$35 ==.
                            563 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:207: CLKMUL |= 0xC0;                     // Initialize the clock multiplier
   0C83 43 B9 C0            564 	orl	_CLKMUL,#0xC0
                    0087    565 	C$F326_USB0_Mouse.c$209$1$35 ==.
                            566 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:209: while(!(CLKMUL & 0x20));            // Wait for multiplier to lock
   0C86                     567 00101$:
   0C86 E5 B9               568 	mov	a,_CLKMUL
   0C88 30 E5 FB            569 	jnb	acc.5,00101$
                    008C    570 	C$F326_USB0_Mouse.c$211$1$35 ==.
                            571 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:211: CLKSEL = 0x02;                      // Use Clock Multiplier/2 as system clock
   0C8B 75 A9 02            572 	mov	_CLKSEL,#0x02
                    008F    573 	C$F326_USB0_Mouse.c$213$1$35 ==.
                    008F    574 	XG$Sysclk_Init$0$0 ==.
   0C8E 22                  575 	ret
                            576 ;------------------------------------------------------------
                            577 ;Allocation info for local variables in function 'Port_Init'
                            578 ;------------------------------------------------------------
                    0090    579 	G$Port_Init$0$0 ==.
                    0090    580 	C$F326_USB0_Mouse.c$225$1$35 ==.
                            581 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:225: void Port_Init(void)
                            582 ;	-----------------------------------------
                            583 ;	 function Port_Init
                            584 ;	-----------------------------------------
   0C8F                     585 _Port_Init:
                    0090    586 	C$F326_USB0_Mouse.c$227$1$37 ==.
                            587 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:227: P0MDOUT |= 0xFF;                    // Port 0 pins 0-3 set high impedence
   0C8F E5 A4               588 	mov	a,_P0MDOUT
   0C91 75 A4 FF            589 	mov	_P0MDOUT,#0xFF
                    0095    590 	C$F326_USB0_Mouse.c$228$1$37 ==.
                    0095    591 	XG$Port_Init$0$0 ==.
   0C94 22                  592 	ret
                            593 ;------------------------------------------------------------
                            594 ;Allocation info for local variables in function 'Timer_Init'
                            595 ;------------------------------------------------------------
                    0096    596 	G$Timer_Init$0$0 ==.
                    0096    597 	C$F326_USB0_Mouse.c$243$1$37 ==.
                            598 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:243: void Timer_Init(void)
                            599 ;	-----------------------------------------
                            600 ;	 function Timer_Init
                            601 ;	-----------------------------------------
   0C95                     602 _Timer_Init:
                    0096    603 	C$F326_USB0_Mouse.c$246$1$39 ==.
                            604 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:246: TCON      = 0x40;
   0C95 75 88 40            605 	mov	_TCON,#0x40
                    0099    606 	C$F326_USB0_Mouse.c$247$1$39 ==.
                            607 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:247: TMOD      = 0x20;
   0C98 75 89 20            608 	mov	_TMOD,#0x20
                    009C    609 	C$F326_USB0_Mouse.c$248$1$39 ==.
                            610 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:248: CKCON     = 0x02;
   0C9B 75 8E 02            611 	mov	_CKCON,#0x02
                    009F    612 	C$F326_USB0_Mouse.c$250$1$39 ==.
                            613 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:250: TH1       = 0x00;                   // set reload value
   0C9E 75 8D 00            614 	mov	_TH1,#0x00
                    00A2    615 	C$F326_USB0_Mouse.c$251$1$39 ==.
                            616 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:251: IE        = 0x08;                   // enable timer interrupt
   0CA1 75 A8 08            617 	mov	_IE,#0x08
                    00A5    618 	C$F326_USB0_Mouse.c$253$1$39 ==.
                    00A5    619 	XG$Timer_Init$0$0 ==.
   0CA4 22                  620 	ret
                            621 ;------------------------------------------------------------
                            622 ;Allocation info for local variables in function 'Delay'
                            623 ;------------------------------------------------------------
                            624 ;x                         Allocated to registers r6 r7 
                            625 ;------------------------------------------------------------
                    00A6    626 	G$Delay$0$0 ==.
                    00A6    627 	C$F326_USB0_Mouse.c$268$1$39 ==.
                            628 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:268: void Delay(void)
                            629 ;	-----------------------------------------
                            630 ;	 function Delay
                            631 ;	-----------------------------------------
   0CA5                     632 _Delay:
                    00A6    633 	C$F326_USB0_Mouse.c$271$1$41 ==.
                            634 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:271: for(x = 0;x < 500;x)
   0CA5 7E 00               635 	mov	r6,#0x00
   0CA7 7F 00               636 	mov	r7,#0x00
   0CA9                     637 00101$:
   0CA9 C3                  638 	clr	c
   0CAA EE                  639 	mov	a,r6
   0CAB 94 F4               640 	subb	a,#0xF4
   0CAD EF                  641 	mov	a,r7
   0CAE 64 80               642 	xrl	a,#0x80
   0CB0 94 81               643 	subb	a,#0x81
   0CB2 50 07               644 	jnc	00105$
                    00B5    645 	C$F326_USB0_Mouse.c$272$1$41 ==.
                            646 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:272: x++;
   0CB4 0E                  647 	inc	r6
                    00B6    648 	C$F326_USB0_Mouse.c$271$1$41 ==.
                            649 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:271: for(x = 0;x < 500;x)
   0CB5 BE 00 F1            650 	cjne	r6,#0x00,00101$
   0CB8 0F                  651 	inc	r7
   0CB9 80 EE               652 	sjmp	00101$
   0CBB                     653 00105$:
                    00BC    654 	C$F326_USB0_Mouse.c$273$1$41 ==.
                    00BC    655 	XG$Delay$0$0 ==.
   0CBB 22                  656 	ret
                            657 	.area CSEG    (CODE)
                            658 	.area CONST   (CODE)
                            659 	.area XINIT   (CODE)
                            660 	.area CABS    (ABS,CODE)
