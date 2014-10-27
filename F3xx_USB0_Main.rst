                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F3xx_USB0_Main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _USB0_Init
                             14 	.globl _System_Init
                             15 	.globl _SendPacket
                             16 	.globl _P
                             17 	.globl _F1
                             18 	.globl _OV
                             19 	.globl _RS0
                             20 	.globl _RS1
                             21 	.globl _F0
                             22 	.globl _AC
                             23 	.globl _CY
                             24 	.globl _PX0
                             25 	.globl _PT0
                             26 	.globl _PX1
                             27 	.globl _PT1
                             28 	.globl _PS0
                             29 	.globl _EX0
                             30 	.globl _ET0
                             31 	.globl _EX1
                             32 	.globl _ET1
                             33 	.globl _ES0
                             34 	.globl _EA
                             35 	.globl _RI0
                             36 	.globl _TI0
                             37 	.globl _RBX0
                             38 	.globl _TBX0
                             39 	.globl _REN0
                             40 	.globl _PERR0
                             41 	.globl _OVR0
                             42 	.globl _IT0
                             43 	.globl _IE0
                             44 	.globl _IT1
                             45 	.globl _IE1
                             46 	.globl _TR0
                             47 	.globl _TF0
                             48 	.globl _TR1
                             49 	.globl _TF1
                             50 	.globl __XPAGE
                             51 	.globl _SBRL0
                             52 	.globl _DP
                             53 	.globl _VDM0CN
                             54 	.globl _EIP2
                             55 	.globl _EIP1
                             56 	.globl _B
                             57 	.globl _RSTSRC
                             58 	.globl _EIE2
                             59 	.globl _EIE1
                             60 	.globl _OSCLCN
                             61 	.globl _GPIOCN
                             62 	.globl _ACC
                             63 	.globl _USB0XCN
                             64 	.globl _PSW
                             65 	.globl _REG0CN
                             66 	.globl _CLKMUL
                             67 	.globl _IP
                             68 	.globl _FLKEY
                             69 	.globl _FLSCL
                             70 	.globl _OSCICL
                             71 	.globl _OSCICN
                             72 	.globl _P3
                             73 	.globl _EMI0CN
                             74 	.globl _CLKSEL
                             75 	.globl _IE
                             76 	.globl _P3MDOUT
                             77 	.globl _P2MDOUT
                             78 	.globl _P0MDOUT
                             79 	.globl _P2
                             80 	.globl _SMOD0
                             81 	.globl _SBUF0
                             82 	.globl _SCON0
                             83 	.globl _USB0DAT
                             84 	.globl _USB0ADR
                             85 	.globl _SBRLH0
                             86 	.globl _SBRLL0
                             87 	.globl _SBCON0
                             88 	.globl _PSCTL
                             89 	.globl _CKCON
                             90 	.globl _TH1
                             91 	.globl _TH0
                             92 	.globl _TL1
                             93 	.globl _TL0
                             94 	.globl _TMOD
                             95 	.globl _TCON
                             96 	.globl _PCON
                             97 	.globl _DPH
                             98 	.globl _DPL
                             99 	.globl _SP
                            100 	.globl _P0
                            101 ;--------------------------------------------------------
                            102 ; special function registers
                            103 ;--------------------------------------------------------
                            104 	.area RSEG    (ABS,DATA)
   0000                     105 	.org 0x0000
                    0080    106 G$P0$0$0 == 0x0080
                    0080    107 _P0	=	0x0080
                    0081    108 G$SP$0$0 == 0x0081
                    0081    109 _SP	=	0x0081
                    0082    110 G$DPL$0$0 == 0x0082
                    0082    111 _DPL	=	0x0082
                    0083    112 G$DPH$0$0 == 0x0083
                    0083    113 _DPH	=	0x0083
                    0087    114 G$PCON$0$0 == 0x0087
                    0087    115 _PCON	=	0x0087
                    0088    116 G$TCON$0$0 == 0x0088
                    0088    117 _TCON	=	0x0088
                    0089    118 G$TMOD$0$0 == 0x0089
                    0089    119 _TMOD	=	0x0089
                    008A    120 G$TL0$0$0 == 0x008a
                    008A    121 _TL0	=	0x008a
                    008B    122 G$TL1$0$0 == 0x008b
                    008B    123 _TL1	=	0x008b
                    008C    124 G$TH0$0$0 == 0x008c
                    008C    125 _TH0	=	0x008c
                    008D    126 G$TH1$0$0 == 0x008d
                    008D    127 _TH1	=	0x008d
                    008E    128 G$CKCON$0$0 == 0x008e
                    008E    129 _CKCON	=	0x008e
                    008F    130 G$PSCTL$0$0 == 0x008f
                    008F    131 _PSCTL	=	0x008f
                    0091    132 G$SBCON0$0$0 == 0x0091
                    0091    133 _SBCON0	=	0x0091
                    0093    134 G$SBRLL0$0$0 == 0x0093
                    0093    135 _SBRLL0	=	0x0093
                    0094    136 G$SBRLH0$0$0 == 0x0094
                    0094    137 _SBRLH0	=	0x0094
                    0096    138 G$USB0ADR$0$0 == 0x0096
                    0096    139 _USB0ADR	=	0x0096
                    0097    140 G$USB0DAT$0$0 == 0x0097
                    0097    141 _USB0DAT	=	0x0097
                    0098    142 G$SCON0$0$0 == 0x0098
                    0098    143 _SCON0	=	0x0098
                    0099    144 G$SBUF0$0$0 == 0x0099
                    0099    145 _SBUF0	=	0x0099
                    009A    146 G$SMOD0$0$0 == 0x009a
                    009A    147 _SMOD0	=	0x009a
                    00A0    148 G$P2$0$0 == 0x00a0
                    00A0    149 _P2	=	0x00a0
                    00A4    150 G$P0MDOUT$0$0 == 0x00a4
                    00A4    151 _P0MDOUT	=	0x00a4
                    00A6    152 G$P2MDOUT$0$0 == 0x00a6
                    00A6    153 _P2MDOUT	=	0x00a6
                    00A7    154 G$P3MDOUT$0$0 == 0x00a7
                    00A7    155 _P3MDOUT	=	0x00a7
                    00A8    156 G$IE$0$0 == 0x00a8
                    00A8    157 _IE	=	0x00a8
                    00A9    158 G$CLKSEL$0$0 == 0x00a9
                    00A9    159 _CLKSEL	=	0x00a9
                    00AA    160 G$EMI0CN$0$0 == 0x00aa
                    00AA    161 _EMI0CN	=	0x00aa
                    00B0    162 G$P3$0$0 == 0x00b0
                    00B0    163 _P3	=	0x00b0
                    00B2    164 G$OSCICN$0$0 == 0x00b2
                    00B2    165 _OSCICN	=	0x00b2
                    00B3    166 G$OSCICL$0$0 == 0x00b3
                    00B3    167 _OSCICL	=	0x00b3
                    00B6    168 G$FLSCL$0$0 == 0x00b6
                    00B6    169 _FLSCL	=	0x00b6
                    00B7    170 G$FLKEY$0$0 == 0x00b7
                    00B7    171 _FLKEY	=	0x00b7
                    00B8    172 G$IP$0$0 == 0x00b8
                    00B8    173 _IP	=	0x00b8
                    00B9    174 G$CLKMUL$0$0 == 0x00b9
                    00B9    175 _CLKMUL	=	0x00b9
                    00C9    176 G$REG0CN$0$0 == 0x00c9
                    00C9    177 _REG0CN	=	0x00c9
                    00D0    178 G$PSW$0$0 == 0x00d0
                    00D0    179 _PSW	=	0x00d0
                    00D7    180 G$USB0XCN$0$0 == 0x00d7
                    00D7    181 _USB0XCN	=	0x00d7
                    00E0    182 G$ACC$0$0 == 0x00e0
                    00E0    183 _ACC	=	0x00e0
                    00E2    184 G$GPIOCN$0$0 == 0x00e2
                    00E2    185 _GPIOCN	=	0x00e2
                    00E3    186 G$OSCLCN$0$0 == 0x00e3
                    00E3    187 _OSCLCN	=	0x00e3
                    00E6    188 G$EIE1$0$0 == 0x00e6
                    00E6    189 _EIE1	=	0x00e6
                    00E7    190 G$EIE2$0$0 == 0x00e7
                    00E7    191 _EIE2	=	0x00e7
                    00EF    192 G$RSTSRC$0$0 == 0x00ef
                    00EF    193 _RSTSRC	=	0x00ef
                    00F0    194 G$B$0$0 == 0x00f0
                    00F0    195 _B	=	0x00f0
                    00F6    196 G$EIP1$0$0 == 0x00f6
                    00F6    197 _EIP1	=	0x00f6
                    00F7    198 G$EIP2$0$0 == 0x00f7
                    00F7    199 _EIP2	=	0x00f7
                    00FF    200 G$VDM0CN$0$0 == 0x00ff
                    00FF    201 _VDM0CN	=	0x00ff
                    8382    202 G$DP$0$0 == 0x8382
                    8382    203 _DP	=	0x8382
                    9493    204 G$SBRL0$0$0 == 0x9493
                    9493    205 _SBRL0	=	0x9493
                    00AA    206 G$_XPAGE$0$0 == 0x00aa
                    00AA    207 __XPAGE	=	0x00aa
                            208 ;--------------------------------------------------------
                            209 ; special function bits
                            210 ;--------------------------------------------------------
                            211 	.area RSEG    (ABS,DATA)
   0000                     212 	.org 0x0000
                    008F    213 G$TF1$0$0 == 0x008f
                    008F    214 _TF1	=	0x008f
                    008E    215 G$TR1$0$0 == 0x008e
                    008E    216 _TR1	=	0x008e
                    008D    217 G$TF0$0$0 == 0x008d
                    008D    218 _TF0	=	0x008d
                    008C    219 G$TR0$0$0 == 0x008c
                    008C    220 _TR0	=	0x008c
                    008B    221 G$IE1$0$0 == 0x008b
                    008B    222 _IE1	=	0x008b
                    008A    223 G$IT1$0$0 == 0x008a
                    008A    224 _IT1	=	0x008a
                    0089    225 G$IE0$0$0 == 0x0089
                    0089    226 _IE0	=	0x0089
                    0088    227 G$IT0$0$0 == 0x0088
                    0088    228 _IT0	=	0x0088
                    009F    229 G$OVR0$0$0 == 0x009f
                    009F    230 _OVR0	=	0x009f
                    009F    231 G$PERR0$0$0 == 0x009f
                    009F    232 _PERR0	=	0x009f
                    009C    233 G$REN0$0$0 == 0x009c
                    009C    234 _REN0	=	0x009c
                    009B    235 G$TBX0$0$0 == 0x009b
                    009B    236 _TBX0	=	0x009b
                    009A    237 G$RBX0$0$0 == 0x009a
                    009A    238 _RBX0	=	0x009a
                    0099    239 G$TI0$0$0 == 0x0099
                    0099    240 _TI0	=	0x0099
                    0098    241 G$RI0$0$0 == 0x0098
                    0098    242 _RI0	=	0x0098
                    00AF    243 G$EA$0$0 == 0x00af
                    00AF    244 _EA	=	0x00af
                    00AC    245 G$ES0$0$0 == 0x00ac
                    00AC    246 _ES0	=	0x00ac
                    00AB    247 G$ET1$0$0 == 0x00ab
                    00AB    248 _ET1	=	0x00ab
                    00AA    249 G$EX1$0$0 == 0x00aa
                    00AA    250 _EX1	=	0x00aa
                    00A9    251 G$ET0$0$0 == 0x00a9
                    00A9    252 _ET0	=	0x00a9
                    00A8    253 G$EX0$0$0 == 0x00a8
                    00A8    254 _EX0	=	0x00a8
                    00BC    255 G$PS0$0$0 == 0x00bc
                    00BC    256 _PS0	=	0x00bc
                    00BB    257 G$PT1$0$0 == 0x00bb
                    00BB    258 _PT1	=	0x00bb
                    00BA    259 G$PX1$0$0 == 0x00ba
                    00BA    260 _PX1	=	0x00ba
                    00B9    261 G$PT0$0$0 == 0x00b9
                    00B9    262 _PT0	=	0x00b9
                    00B8    263 G$PX0$0$0 == 0x00b8
                    00B8    264 _PX0	=	0x00b8
                    00D7    265 G$CY$0$0 == 0x00d7
                    00D7    266 _CY	=	0x00d7
                    00D6    267 G$AC$0$0 == 0x00d6
                    00D6    268 _AC	=	0x00d6
                    00D5    269 G$F0$0$0 == 0x00d5
                    00D5    270 _F0	=	0x00d5
                    00D4    271 G$RS1$0$0 == 0x00d4
                    00D4    272 _RS1	=	0x00d4
                    00D3    273 G$RS0$0$0 == 0x00d3
                    00D3    274 _RS0	=	0x00d3
                    00D2    275 G$OV$0$0 == 0x00d2
                    00D2    276 _OV	=	0x00d2
                    00D1    277 G$F1$0$0 == 0x00d1
                    00D1    278 _F1	=	0x00d1
                    00D0    279 G$P$0$0 == 0x00d0
                    00D0    280 _P	=	0x00d0
                            281 ;--------------------------------------------------------
                            282 ; overlayable register banks
                            283 ;--------------------------------------------------------
                            284 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     285 	.ds 8
                            286 ;--------------------------------------------------------
                            287 ; internal ram data
                            288 ;--------------------------------------------------------
                            289 	.area DSEG    (DATA)
                            290 ;--------------------------------------------------------
                            291 ; overlayable items in internal ram 
                            292 ;--------------------------------------------------------
                            293 ;--------------------------------------------------------
                            294 ; Stack segment in internal ram 
                            295 ;--------------------------------------------------------
                            296 	.area	SSEG	(DATA)
   0034                     297 __start__stack:
   0034                     298 	.ds	1
                            299 
                            300 ;--------------------------------------------------------
                            301 ; indirectly addressable internal ram data
                            302 ;--------------------------------------------------------
                            303 	.area ISEG    (DATA)
                            304 ;--------------------------------------------------------
                            305 ; absolute internal ram data
                            306 ;--------------------------------------------------------
                            307 	.area IABS    (ABS,DATA)
                            308 	.area IABS    (ABS,DATA)
                            309 ;--------------------------------------------------------
                            310 ; bit data
                            311 ;--------------------------------------------------------
                            312 	.area BSEG    (BIT)
                            313 ;--------------------------------------------------------
                            314 ; paged external ram data
                            315 ;--------------------------------------------------------
                            316 	.area PSEG    (PAG,XDATA)
                            317 ;--------------------------------------------------------
                            318 ; external ram data
                            319 ;--------------------------------------------------------
                            320 	.area XSEG    (XDATA)
                            321 ;--------------------------------------------------------
                            322 ; absolute external ram data
                            323 ;--------------------------------------------------------
                            324 	.area XABS    (ABS,XDATA)
                            325 ;--------------------------------------------------------
                            326 ; external initialized ram data
                            327 ;--------------------------------------------------------
                            328 	.area XISEG   (XDATA)
                            329 	.area HOME    (CODE)
                            330 	.area GSINIT0 (CODE)
                            331 	.area GSINIT1 (CODE)
                            332 	.area GSINIT2 (CODE)
                            333 	.area GSINIT3 (CODE)
                            334 	.area GSINIT4 (CODE)
                            335 	.area GSINIT5 (CODE)
                            336 	.area GSINIT  (CODE)
                            337 	.area GSFINAL (CODE)
                            338 	.area CSEG    (CODE)
                            339 ;--------------------------------------------------------
                            340 ; interrupt vector 
                            341 ;--------------------------------------------------------
                            342 	.area HOME    (CODE)
   0000                     343 __interrupt_vect:
   0000 02 00 08            344 	ljmp	__sdcc_gsinit_startup
                            345 ;--------------------------------------------------------
                            346 ; global & static initialisations
                            347 ;--------------------------------------------------------
                            348 	.area HOME    (CODE)
                            349 	.area GSINIT  (CODE)
                            350 	.area GSFINAL (CODE)
                            351 	.area GSINIT  (CODE)
                            352 	.globl __sdcc_gsinit_startup
                            353 	.globl __sdcc_program_startup
                            354 	.globl __start__stack
                            355 	.globl __mcs51_genXINIT
                            356 	.globl __mcs51_genXRAMCLEAR
                            357 	.globl __mcs51_genRAMCLEAR
                            358 	.area GSFINAL (CODE)
   0079 02 00 03            359 	ljmp	__sdcc_program_startup
                            360 ;--------------------------------------------------------
                            361 ; Home
                            362 ;--------------------------------------------------------
                            363 	.area HOME    (CODE)
                            364 	.area HOME    (CODE)
   0003                     365 __sdcc_program_startup:
   0003 12 00 7C            366 	lcall	_main
                            367 ;	return from main will lock up
   0006 80 FE               368 	sjmp .
                            369 ;--------------------------------------------------------
                            370 ; code
                            371 ;--------------------------------------------------------
                            372 	.area CSEG    (CODE)
                            373 ;------------------------------------------------------------
                            374 ;Allocation info for local variables in function 'main'
                            375 ;------------------------------------------------------------
                    0000    376 	G$main$0$0 ==.
                    0000    377 	C$F3xx_USB0_Main.c$46$0$0 ==.
                            378 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:46: void main(void)
                            379 ;	-----------------------------------------
                            380 ;	 function main
                            381 ;	-----------------------------------------
   007C                     382 _main:
                    0007    383 	ar7 = 0x07
                    0006    384 	ar6 = 0x06
                    0005    385 	ar5 = 0x05
                    0004    386 	ar4 = 0x04
                    0003    387 	ar3 = 0x03
                    0002    388 	ar2 = 0x02
                    0001    389 	ar1 = 0x01
                    0000    390 	ar0 = 0x00
                    0000    391 	C$F3xx_USB0_Main.c$48$1$22 ==.
                            392 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:48: System_Init ();
   007C 12 0C 22            393 	lcall	_System_Init
                    0003    394 	C$F3xx_USB0_Main.c$49$1$22 ==.
                            395 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:49: USB0_Init ();
   007F 12 0C 2C            396 	lcall	_USB0_Init
                    0006    397 	C$F3xx_USB0_Main.c$51$1$22 ==.
                            398 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:51: EA = 1;
   0082 D2 AF               399 	setb	_EA
                    0008    400 	C$F3xx_USB0_Main.c$52$1$22 ==.
                            401 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:52: while (1)
   0084                     402 00102$:
                    0008    403 	C$F3xx_USB0_Main.c$54$2$23 ==.
                            404 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Main.c:54: SendPacket (0);
   0084 75 82 00            405 	mov	dpl,#0x00
   0087 12 06 03            406 	lcall	_SendPacket
   008A 80 F8               407 	sjmp	00102$
                    0010    408 	C$F3xx_USB0_Main.c$56$1$22 ==.
                    0010    409 	XG$main$0$0 ==.
   008C 22                  410 	ret
                            411 	.area CSEG    (CODE)
                            412 	.area CONST   (CODE)
                            413 	.area XINIT   (CODE)
                            414 	.area CABS    (ABS,CODE)
