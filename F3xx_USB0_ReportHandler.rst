                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F3xx_USB0_ReportHandler
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _P
                             13 	.globl _F1
                             14 	.globl _OV
                             15 	.globl _RS0
                             16 	.globl _RS1
                             17 	.globl _F0
                             18 	.globl _AC
                             19 	.globl _CY
                             20 	.globl _PX0
                             21 	.globl _PT0
                             22 	.globl _PX1
                             23 	.globl _PT1
                             24 	.globl _PS0
                             25 	.globl _EX0
                             26 	.globl _ET0
                             27 	.globl _EX1
                             28 	.globl _ET1
                             29 	.globl _ES0
                             30 	.globl _EA
                             31 	.globl _RI0
                             32 	.globl _TI0
                             33 	.globl _RBX0
                             34 	.globl _TBX0
                             35 	.globl _REN0
                             36 	.globl _PERR0
                             37 	.globl _OVR0
                             38 	.globl _IT0
                             39 	.globl _IE0
                             40 	.globl _IT1
                             41 	.globl _IE1
                             42 	.globl _TR0
                             43 	.globl _TF0
                             44 	.globl _TR1
                             45 	.globl _TF1
                             46 	.globl __XPAGE
                             47 	.globl _SBRL0
                             48 	.globl _DP
                             49 	.globl _VDM0CN
                             50 	.globl _EIP2
                             51 	.globl _EIP1
                             52 	.globl _B
                             53 	.globl _RSTSRC
                             54 	.globl _EIE2
                             55 	.globl _EIE1
                             56 	.globl _OSCLCN
                             57 	.globl _GPIOCN
                             58 	.globl _ACC
                             59 	.globl _USB0XCN
                             60 	.globl _PSW
                             61 	.globl _REG0CN
                             62 	.globl _CLKMUL
                             63 	.globl _IP
                             64 	.globl _FLKEY
                             65 	.globl _FLSCL
                             66 	.globl _OSCICL
                             67 	.globl _OSCICN
                             68 	.globl _P3
                             69 	.globl _EMI0CN
                             70 	.globl _CLKSEL
                             71 	.globl _IE
                             72 	.globl _P3MDOUT
                             73 	.globl _P2MDOUT
                             74 	.globl _P0MDOUT
                             75 	.globl _P2
                             76 	.globl _SMOD0
                             77 	.globl _SBUF0
                             78 	.globl _SCON0
                             79 	.globl _USB0DAT
                             80 	.globl _USB0ADR
                             81 	.globl _SBRLH0
                             82 	.globl _SBRLL0
                             83 	.globl _SBCON0
                             84 	.globl _PSCTL
                             85 	.globl _CKCON
                             86 	.globl _TH1
                             87 	.globl _TH0
                             88 	.globl _TL1
                             89 	.globl _TL0
                             90 	.globl _TMOD
                             91 	.globl _TCON
                             92 	.globl _PCON
                             93 	.globl _DPH
                             94 	.globl _DPL
                             95 	.globl _SP
                             96 	.globl _P0
                             97 	.globl _OUT_BUFFER
                             98 	.globl _IN_BUFFER
                             99 	.globl _IN_Report
                            100 	.globl _OUT_Report
                            101 	.globl _Setup_OUT_BUFFER
                            102 	.globl _ReportHandler_IN_ISR
                            103 	.globl _ReportHandler_IN_Foreground
                            104 	.globl _ReportHandler_OUT
                            105 ;--------------------------------------------------------
                            106 ; special function registers
                            107 ;--------------------------------------------------------
                            108 	.area RSEG    (ABS,DATA)
   0000                     109 	.org 0x0000
                    0080    110 G$P0$0$0 == 0x0080
                    0080    111 _P0	=	0x0080
                    0081    112 G$SP$0$0 == 0x0081
                    0081    113 _SP	=	0x0081
                    0082    114 G$DPL$0$0 == 0x0082
                    0082    115 _DPL	=	0x0082
                    0083    116 G$DPH$0$0 == 0x0083
                    0083    117 _DPH	=	0x0083
                    0087    118 G$PCON$0$0 == 0x0087
                    0087    119 _PCON	=	0x0087
                    0088    120 G$TCON$0$0 == 0x0088
                    0088    121 _TCON	=	0x0088
                    0089    122 G$TMOD$0$0 == 0x0089
                    0089    123 _TMOD	=	0x0089
                    008A    124 G$TL0$0$0 == 0x008a
                    008A    125 _TL0	=	0x008a
                    008B    126 G$TL1$0$0 == 0x008b
                    008B    127 _TL1	=	0x008b
                    008C    128 G$TH0$0$0 == 0x008c
                    008C    129 _TH0	=	0x008c
                    008D    130 G$TH1$0$0 == 0x008d
                    008D    131 _TH1	=	0x008d
                    008E    132 G$CKCON$0$0 == 0x008e
                    008E    133 _CKCON	=	0x008e
                    008F    134 G$PSCTL$0$0 == 0x008f
                    008F    135 _PSCTL	=	0x008f
                    0091    136 G$SBCON0$0$0 == 0x0091
                    0091    137 _SBCON0	=	0x0091
                    0093    138 G$SBRLL0$0$0 == 0x0093
                    0093    139 _SBRLL0	=	0x0093
                    0094    140 G$SBRLH0$0$0 == 0x0094
                    0094    141 _SBRLH0	=	0x0094
                    0096    142 G$USB0ADR$0$0 == 0x0096
                    0096    143 _USB0ADR	=	0x0096
                    0097    144 G$USB0DAT$0$0 == 0x0097
                    0097    145 _USB0DAT	=	0x0097
                    0098    146 G$SCON0$0$0 == 0x0098
                    0098    147 _SCON0	=	0x0098
                    0099    148 G$SBUF0$0$0 == 0x0099
                    0099    149 _SBUF0	=	0x0099
                    009A    150 G$SMOD0$0$0 == 0x009a
                    009A    151 _SMOD0	=	0x009a
                    00A0    152 G$P2$0$0 == 0x00a0
                    00A0    153 _P2	=	0x00a0
                    00A4    154 G$P0MDOUT$0$0 == 0x00a4
                    00A4    155 _P0MDOUT	=	0x00a4
                    00A6    156 G$P2MDOUT$0$0 == 0x00a6
                    00A6    157 _P2MDOUT	=	0x00a6
                    00A7    158 G$P3MDOUT$0$0 == 0x00a7
                    00A7    159 _P3MDOUT	=	0x00a7
                    00A8    160 G$IE$0$0 == 0x00a8
                    00A8    161 _IE	=	0x00a8
                    00A9    162 G$CLKSEL$0$0 == 0x00a9
                    00A9    163 _CLKSEL	=	0x00a9
                    00AA    164 G$EMI0CN$0$0 == 0x00aa
                    00AA    165 _EMI0CN	=	0x00aa
                    00B0    166 G$P3$0$0 == 0x00b0
                    00B0    167 _P3	=	0x00b0
                    00B2    168 G$OSCICN$0$0 == 0x00b2
                    00B2    169 _OSCICN	=	0x00b2
                    00B3    170 G$OSCICL$0$0 == 0x00b3
                    00B3    171 _OSCICL	=	0x00b3
                    00B6    172 G$FLSCL$0$0 == 0x00b6
                    00B6    173 _FLSCL	=	0x00b6
                    00B7    174 G$FLKEY$0$0 == 0x00b7
                    00B7    175 _FLKEY	=	0x00b7
                    00B8    176 G$IP$0$0 == 0x00b8
                    00B8    177 _IP	=	0x00b8
                    00B9    178 G$CLKMUL$0$0 == 0x00b9
                    00B9    179 _CLKMUL	=	0x00b9
                    00C9    180 G$REG0CN$0$0 == 0x00c9
                    00C9    181 _REG0CN	=	0x00c9
                    00D0    182 G$PSW$0$0 == 0x00d0
                    00D0    183 _PSW	=	0x00d0
                    00D7    184 G$USB0XCN$0$0 == 0x00d7
                    00D7    185 _USB0XCN	=	0x00d7
                    00E0    186 G$ACC$0$0 == 0x00e0
                    00E0    187 _ACC	=	0x00e0
                    00E2    188 G$GPIOCN$0$0 == 0x00e2
                    00E2    189 _GPIOCN	=	0x00e2
                    00E3    190 G$OSCLCN$0$0 == 0x00e3
                    00E3    191 _OSCLCN	=	0x00e3
                    00E6    192 G$EIE1$0$0 == 0x00e6
                    00E6    193 _EIE1	=	0x00e6
                    00E7    194 G$EIE2$0$0 == 0x00e7
                    00E7    195 _EIE2	=	0x00e7
                    00EF    196 G$RSTSRC$0$0 == 0x00ef
                    00EF    197 _RSTSRC	=	0x00ef
                    00F0    198 G$B$0$0 == 0x00f0
                    00F0    199 _B	=	0x00f0
                    00F6    200 G$EIP1$0$0 == 0x00f6
                    00F6    201 _EIP1	=	0x00f6
                    00F7    202 G$EIP2$0$0 == 0x00f7
                    00F7    203 _EIP2	=	0x00f7
                    00FF    204 G$VDM0CN$0$0 == 0x00ff
                    00FF    205 _VDM0CN	=	0x00ff
                    8382    206 G$DP$0$0 == 0x8382
                    8382    207 _DP	=	0x8382
                    9493    208 G$SBRL0$0$0 == 0x9493
                    9493    209 _SBRL0	=	0x9493
                    00AA    210 G$_XPAGE$0$0 == 0x00aa
                    00AA    211 __XPAGE	=	0x00aa
                            212 ;--------------------------------------------------------
                            213 ; special function bits
                            214 ;--------------------------------------------------------
                            215 	.area RSEG    (ABS,DATA)
   0000                     216 	.org 0x0000
                    008F    217 G$TF1$0$0 == 0x008f
                    008F    218 _TF1	=	0x008f
                    008E    219 G$TR1$0$0 == 0x008e
                    008E    220 _TR1	=	0x008e
                    008D    221 G$TF0$0$0 == 0x008d
                    008D    222 _TF0	=	0x008d
                    008C    223 G$TR0$0$0 == 0x008c
                    008C    224 _TR0	=	0x008c
                    008B    225 G$IE1$0$0 == 0x008b
                    008B    226 _IE1	=	0x008b
                    008A    227 G$IT1$0$0 == 0x008a
                    008A    228 _IT1	=	0x008a
                    0089    229 G$IE0$0$0 == 0x0089
                    0089    230 _IE0	=	0x0089
                    0088    231 G$IT0$0$0 == 0x0088
                    0088    232 _IT0	=	0x0088
                    009F    233 G$OVR0$0$0 == 0x009f
                    009F    234 _OVR0	=	0x009f
                    009F    235 G$PERR0$0$0 == 0x009f
                    009F    236 _PERR0	=	0x009f
                    009C    237 G$REN0$0$0 == 0x009c
                    009C    238 _REN0	=	0x009c
                    009B    239 G$TBX0$0$0 == 0x009b
                    009B    240 _TBX0	=	0x009b
                    009A    241 G$RBX0$0$0 == 0x009a
                    009A    242 _RBX0	=	0x009a
                    0099    243 G$TI0$0$0 == 0x0099
                    0099    244 _TI0	=	0x0099
                    0098    245 G$RI0$0$0 == 0x0098
                    0098    246 _RI0	=	0x0098
                    00AF    247 G$EA$0$0 == 0x00af
                    00AF    248 _EA	=	0x00af
                    00AC    249 G$ES0$0$0 == 0x00ac
                    00AC    250 _ES0	=	0x00ac
                    00AB    251 G$ET1$0$0 == 0x00ab
                    00AB    252 _ET1	=	0x00ab
                    00AA    253 G$EX1$0$0 == 0x00aa
                    00AA    254 _EX1	=	0x00aa
                    00A9    255 G$ET0$0$0 == 0x00a9
                    00A9    256 _ET0	=	0x00a9
                    00A8    257 G$EX0$0$0 == 0x00a8
                    00A8    258 _EX0	=	0x00a8
                    00BC    259 G$PS0$0$0 == 0x00bc
                    00BC    260 _PS0	=	0x00bc
                    00BB    261 G$PT1$0$0 == 0x00bb
                    00BB    262 _PT1	=	0x00bb
                    00BA    263 G$PX1$0$0 == 0x00ba
                    00BA    264 _PX1	=	0x00ba
                    00B9    265 G$PT0$0$0 == 0x00b9
                    00B9    266 _PT0	=	0x00b9
                    00B8    267 G$PX0$0$0 == 0x00b8
                    00B8    268 _PX0	=	0x00b8
                    00D7    269 G$CY$0$0 == 0x00d7
                    00D7    270 _CY	=	0x00d7
                    00D6    271 G$AC$0$0 == 0x00d6
                    00D6    272 _AC	=	0x00d6
                    00D5    273 G$F0$0$0 == 0x00d5
                    00D5    274 _F0	=	0x00d5
                    00D4    275 G$RS1$0$0 == 0x00d4
                    00D4    276 _RS1	=	0x00d4
                    00D3    277 G$RS0$0$0 == 0x00d3
                    00D3    278 _RS0	=	0x00d3
                    00D2    279 G$OV$0$0 == 0x00d2
                    00D2    280 _OV	=	0x00d2
                    00D1    281 G$F1$0$0 == 0x00d1
                    00D1    282 _F1	=	0x00d1
                    00D0    283 G$P$0$0 == 0x00d0
                    00D0    284 _P	=	0x00d0
                            285 ;--------------------------------------------------------
                            286 ; overlayable register banks
                            287 ;--------------------------------------------------------
                            288 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     289 	.ds 8
                            290 ;--------------------------------------------------------
                            291 ; internal ram data
                            292 ;--------------------------------------------------------
                            293 	.area DSEG    (DATA)
                    0000    294 G$IN_BUFFER$0$0==.
   0022                     295 _IN_BUFFER::
   0022                     296 	.ds 4
                    0004    297 G$OUT_BUFFER$0$0==.
   0026                     298 _OUT_BUFFER::
   0026                     299 	.ds 4
                    0008    300 LF3xx_USB0_ReportHandler.IN_Report$pack$1$28==.
   002A                     301 _IN_Report_pack_1_28:
   002A                     302 	.ds 1
                            303 ;--------------------------------------------------------
                            304 ; overlayable items in internal ram 
                            305 ;--------------------------------------------------------
                            306 ;--------------------------------------------------------
                            307 ; indirectly addressable internal ram data
                            308 ;--------------------------------------------------------
                            309 	.area ISEG    (DATA)
                            310 ;--------------------------------------------------------
                            311 ; absolute internal ram data
                            312 ;--------------------------------------------------------
                            313 	.area IABS    (ABS,DATA)
                            314 	.area IABS    (ABS,DATA)
                            315 ;--------------------------------------------------------
                            316 ; bit data
                            317 ;--------------------------------------------------------
                            318 	.area BSEG    (BIT)
                            319 ;--------------------------------------------------------
                            320 ; paged external ram data
                            321 ;--------------------------------------------------------
                            322 	.area PSEG    (PAG,XDATA)
                            323 ;--------------------------------------------------------
                            324 ; external ram data
                            325 ;--------------------------------------------------------
                            326 	.area XSEG    (XDATA)
                            327 ;--------------------------------------------------------
                            328 ; absolute external ram data
                            329 ;--------------------------------------------------------
                            330 	.area XABS    (ABS,XDATA)
                            331 ;--------------------------------------------------------
                            332 ; external initialized ram data
                            333 ;--------------------------------------------------------
                            334 	.area XISEG   (XDATA)
                            335 	.area HOME    (CODE)
                            336 	.area GSINIT0 (CODE)
                            337 	.area GSINIT1 (CODE)
                            338 	.area GSINIT2 (CODE)
                            339 	.area GSINIT3 (CODE)
                            340 	.area GSINIT4 (CODE)
                            341 	.area GSINIT5 (CODE)
                            342 	.area GSINIT  (CODE)
                            343 	.area GSFINAL (CODE)
                            344 	.area CSEG    (CODE)
                            345 ;--------------------------------------------------------
                            346 ; global & static initialisations
                            347 ;--------------------------------------------------------
                            348 	.area HOME    (CODE)
                            349 	.area GSINIT  (CODE)
                            350 	.area GSFINAL (CODE)
                            351 	.area GSINIT  (CODE)
                            352 ;------------------------------------------------------------
                            353 ;Allocation info for local variables in function 'IN_Report'
                            354 ;------------------------------------------------------------
                            355 ;pack                      Allocated with name '_IN_Report_pack_1_28'
                            356 ;------------------------------------------------------------
                    0000    357 	G$IN_Report$0$0 ==.
                    0000    358 	C$F3xx_USB0_ReportHandler.c$107$1$28 ==.
                            359 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:107: static unsigned char pack = 0x01;
   006A 75 2A 01            360 	mov	_IN_Report_pack_1_28,#0x01
                            361 ;--------------------------------------------------------
                            362 ; Home
                            363 ;--------------------------------------------------------
                            364 	.area HOME    (CODE)
                            365 	.area HOME    (CODE)
                            366 ;--------------------------------------------------------
                            367 ; code
                            368 ;--------------------------------------------------------
                            369 	.area CSEG    (CODE)
                            370 ;------------------------------------------------------------
                            371 ;Allocation info for local variables in function 'IN_Report'
                            372 ;------------------------------------------------------------
                            373 ;pack                      Allocated with name '_IN_Report_pack_1_28'
                            374 ;------------------------------------------------------------
                    0000    375 	G$IN_Report$0$0 ==.
                    0000    376 	C$F3xx_USB0_ReportHandler.c$105$0$0 ==.
                            377 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:105: void IN_Report(void){
                            378 ;	-----------------------------------------
                            379 ;	 function IN_Report
                            380 ;	-----------------------------------------
   0BC4                     381 _IN_Report:
                    0007    382 	ar7 = 0x07
                    0006    383 	ar6 = 0x06
                    0005    384 	ar5 = 0x05
                    0004    385 	ar4 = 0x04
                    0003    386 	ar3 = 0x03
                    0002    387 	ar2 = 0x02
                    0001    388 	ar1 = 0x01
                    0000    389 	ar0 = 0x00
                    0000    390 	C$F3xx_USB0_ReportHandler.c$108$1$28 ==.
                            391 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:108: pack = pack << 1;
   0BC4 E5 2A               392 	mov	a,_IN_Report_pack_1_28
   0BC6 25 2A               393 	add	a,_IN_Report_pack_1_28
                    0004    394 	C$F3xx_USB0_ReportHandler.c$109$1$28 ==.
                            395 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:109: if(pack == 0) { pack = 0x01; }
   0BC8 F5 2A               396 	mov	_IN_Report_pack_1_28,a
   0BCA 70 03               397 	jnz	00102$
   0BCC 75 2A 01            398 	mov	_IN_Report_pack_1_28,#0x01
   0BCF                     399 00102$:
                    000B    400 	C$F3xx_USB0_ReportHandler.c$111$1$28 ==.
                            401 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:111: IN_PACKET[0] = ~P0;
   0BCF E5 80               402 	mov	a,_P0
   0BD1 F4                  403 	cpl	a
   0BD2 FF                  404 	mov	r7,a
   0BD3 8F 2E               405 	mov	_IN_PACKET,r7
                    0011    406 	C$F3xx_USB0_ReportHandler.c$115$1$28 ==.
                            407 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:115: IN_BUFFER.Ptr = IN_PACKET;
   0BD5 75 23 2E            408 	mov	((_IN_BUFFER + 0x0001) + 0),#_IN_PACKET
   0BD8 75 24 00            409 	mov	((_IN_BUFFER + 0x0001) + 1),#(_IN_PACKET >> 8)
   0BDB 75 25 40            410 	mov	((_IN_BUFFER + 0x0001) + 2),#0x40
                    001A    411 	C$F3xx_USB0_ReportHandler.c$116$1$28 ==.
                            412 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:116: IN_BUFFER.Length = 1;
   0BDE 75 22 01            413 	mov	_IN_BUFFER,#0x01
                    001D    414 	C$F3xx_USB0_ReportHandler.c$118$1$28 ==.
                    001D    415 	XG$IN_Report$0$0 ==.
   0BE1 22                  416 	ret
                            417 ;------------------------------------------------------------
                            418 ;Allocation info for local variables in function 'OUT_Report'
                            419 ;------------------------------------------------------------
                    001E    420 	G$OUT_Report$0$0 ==.
                    001E    421 	C$F3xx_USB0_ReportHandler.c$130$1$28 ==.
                            422 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:130: void OUT_Report(void)
                            423 ;	-----------------------------------------
                            424 ;	 function OUT_Report
                            425 ;	-----------------------------------------
   0BE2                     426 _OUT_Report:
                    001E    427 	C$F3xx_USB0_ReportHandler.c$132$1$28 ==.
                            428 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:132: }
                    001E    429 	C$F3xx_USB0_ReportHandler.c$132$1$28 ==.
                    001E    430 	XG$OUT_Report$0$0 ==.
   0BE2 22                  431 	ret
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'Setup_OUT_BUFFER'
                            434 ;------------------------------------------------------------
                    001F    435 	G$Setup_OUT_BUFFER$0$0 ==.
                    001F    436 	C$F3xx_USB0_ReportHandler.c$150$1$28 ==.
                            437 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:150: void Setup_OUT_BUFFER(void)
                            438 ;	-----------------------------------------
                            439 ;	 function Setup_OUT_BUFFER
                            440 ;	-----------------------------------------
   0BE3                     441 _Setup_OUT_BUFFER:
                    001F    442 	C$F3xx_USB0_ReportHandler.c$152$1$28 ==.
                            443 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:152: }
                    001F    444 	C$F3xx_USB0_ReportHandler.c$152$1$28 ==.
                    001F    445 	XG$Setup_OUT_BUFFER$0$0 ==.
   0BE3 22                  446 	ret
                            447 ;------------------------------------------------------------
                            448 ;Allocation info for local variables in function 'ReportHandler_IN_ISR'
                            449 ;------------------------------------------------------------
                            450 ;R_ID                      Allocated to registers r7 
                            451 ;index                     Allocated to registers 
                            452 ;------------------------------------------------------------
                    0020    453 	G$ReportHandler_IN_ISR$0$0 ==.
                    0020    454 	C$F3xx_USB0_ReportHandler.c$174$1$28 ==.
                            455 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:174: void ReportHandler_IN_ISR(unsigned char R_ID)
                            456 ;	-----------------------------------------
                            457 ;	 function ReportHandler_IN_ISR
                            458 ;	-----------------------------------------
   0BE4                     459 _ReportHandler_IN_ISR:
                    0020    460 	C$F3xx_USB0_ReportHandler.c$180$1$35 ==.
                            461 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:180: if(R_ID == 0)
   0BE4 E5 82               462 	mov	a,dpl
   0BE6 FF                  463 	mov	r7,a
   0BE7 70 03               464 	jnz	00103$
                    0025    465 	C$F3xx_USB0_ReportHandler.c$182$2$36 ==.
                            466 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:182: IN_Report();
   0BE9 12 0B C4            467 	lcall	_IN_Report
   0BEC                     468 00103$:
                    0028    469 	C$F3xx_USB0_ReportHandler.c$185$1$35 ==.
                    0028    470 	XG$ReportHandler_IN_ISR$0$0 ==.
   0BEC 22                  471 	ret
                            472 ;------------------------------------------------------------
                            473 ;Allocation info for local variables in function 'ReportHandler_IN_Foreground'
                            474 ;------------------------------------------------------------
                            475 ;R_ID                      Allocated to registers r7 
                            476 ;index                     Allocated to registers 
                            477 ;------------------------------------------------------------
                    0029    478 	G$ReportHandler_IN_Foreground$0$0 ==.
                    0029    479 	C$F3xx_USB0_ReportHandler.c$186$1$35 ==.
                            480 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:186: void ReportHandler_IN_Foreground(unsigned char R_ID)
                            481 ;	-----------------------------------------
                            482 ;	 function ReportHandler_IN_Foreground
                            483 ;	-----------------------------------------
   0BED                     484 _ReportHandler_IN_Foreground:
                    0029    485 	C$F3xx_USB0_ReportHandler.c$192$1$38 ==.
                            486 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:192: if(R_ID == 0)
   0BED E5 82               487 	mov	a,dpl
   0BEF FF                  488 	mov	r7,a
   0BF0 70 03               489 	jnz	00103$
                    002E    490 	C$F3xx_USB0_ReportHandler.c$194$2$39 ==.
                            491 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:194: IN_Report();
   0BF2 12 0B C4            492 	lcall	_IN_Report
   0BF5                     493 00103$:
                    0031    494 	C$F3xx_USB0_ReportHandler.c$197$1$38 ==.
                    0031    495 	XG$ReportHandler_IN_Foreground$0$0 ==.
   0BF5 22                  496 	ret
                            497 ;------------------------------------------------------------
                            498 ;Allocation info for local variables in function 'ReportHandler_OUT'
                            499 ;------------------------------------------------------------
                            500 ;R_ID                      Allocated to registers r7 
                            501 ;index                     Allocated to registers 
                            502 ;------------------------------------------------------------
                    0032    503 	G$ReportHandler_OUT$0$0 ==.
                    0032    504 	C$F3xx_USB0_ReportHandler.c$210$1$38 ==.
                            505 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:210: void ReportHandler_OUT(unsigned char R_ID){
                            506 ;	-----------------------------------------
                            507 ;	 function ReportHandler_OUT
                            508 ;	-----------------------------------------
   0BF6                     509 _ReportHandler_OUT:
                    0032    510 	C$F3xx_USB0_ReportHandler.c$216$1$41 ==.
                            511 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:216: if(R_ID == 0)
   0BF6 E5 82               512 	mov	a,dpl
   0BF8 FF                  513 	mov	r7,a
   0BF9 70 03               514 	jnz	00103$
                    0037    515 	C$F3xx_USB0_ReportHandler.c$218$2$42 ==.
                            516 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:218: OUT_Report();
   0BFB 12 0B E2            517 	lcall	_OUT_Report
   0BFE                     518 00103$:
                    003A    519 	C$F3xx_USB0_ReportHandler.c$220$1$41 ==.
                    003A    520 	XG$ReportHandler_OUT$0$0 ==.
   0BFE 22                  521 	ret
                            522 	.area CSEG    (CODE)
                            523 	.area CONST   (CODE)
                            524 	.area XINIT   (CODE)
                            525 	.area CABS    (ABS,CODE)
