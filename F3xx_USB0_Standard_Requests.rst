                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F3xx_USB0_Standard_Requests
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ZERO_PACKET
                             13 	.globl _ONES_PACKET
                             14 	.globl _Setup_OUT_BUFFER
                             15 	.globl _ReportHandler_IN_ISR
                             16 	.globl _Handle_In1
                             17 	.globl _Force_Stall
                             18 	.globl _P
                             19 	.globl _F1
                             20 	.globl _OV
                             21 	.globl _RS0
                             22 	.globl _RS1
                             23 	.globl _F0
                             24 	.globl _AC
                             25 	.globl _CY
                             26 	.globl _PX0
                             27 	.globl _PT0
                             28 	.globl _PX1
                             29 	.globl _PT1
                             30 	.globl _PS0
                             31 	.globl _EX0
                             32 	.globl _ET0
                             33 	.globl _EX1
                             34 	.globl _ET1
                             35 	.globl _ES0
                             36 	.globl _EA
                             37 	.globl _RI0
                             38 	.globl _TI0
                             39 	.globl _RBX0
                             40 	.globl _TBX0
                             41 	.globl _REN0
                             42 	.globl _PERR0
                             43 	.globl _OVR0
                             44 	.globl _IT0
                             45 	.globl _IE0
                             46 	.globl _IT1
                             47 	.globl _IE1
                             48 	.globl _TR0
                             49 	.globl _TF0
                             50 	.globl _TR1
                             51 	.globl _TF1
                             52 	.globl __XPAGE
                             53 	.globl _SBRL0
                             54 	.globl _DP
                             55 	.globl _VDM0CN
                             56 	.globl _EIP2
                             57 	.globl _EIP1
                             58 	.globl _B
                             59 	.globl _RSTSRC
                             60 	.globl _EIE2
                             61 	.globl _EIE1
                             62 	.globl _OSCLCN
                             63 	.globl _GPIOCN
                             64 	.globl _ACC
                             65 	.globl _USB0XCN
                             66 	.globl _PSW
                             67 	.globl _REG0CN
                             68 	.globl _CLKMUL
                             69 	.globl _IP
                             70 	.globl _FLKEY
                             71 	.globl _FLSCL
                             72 	.globl _OSCICL
                             73 	.globl _OSCICN
                             74 	.globl _P3
                             75 	.globl _EMI0CN
                             76 	.globl _CLKSEL
                             77 	.globl _IE
                             78 	.globl _P3MDOUT
                             79 	.globl _P2MDOUT
                             80 	.globl _P0MDOUT
                             81 	.globl _P2
                             82 	.globl _SMOD0
                             83 	.globl _SBUF0
                             84 	.globl _SCON0
                             85 	.globl _USB0DAT
                             86 	.globl _USB0ADR
                             87 	.globl _SBRLH0
                             88 	.globl _SBRLL0
                             89 	.globl _SBCON0
                             90 	.globl _PSCTL
                             91 	.globl _CKCON
                             92 	.globl _TH1
                             93 	.globl _TH0
                             94 	.globl _TL1
                             95 	.globl _TL0
                             96 	.globl _TMOD
                             97 	.globl _TCON
                             98 	.globl _PCON
                             99 	.globl _DPH
                            100 	.globl _DPL
                            101 	.globl _SP
                            102 	.globl _P0
                            103 	.globl _Get_Status
                            104 	.globl _Clear_Feature
                            105 	.globl _Set_Feature
                            106 	.globl _Set_Address
                            107 	.globl _Get_Descriptor
                            108 	.globl _Get_Configuration
                            109 	.globl _Set_Configuration
                            110 	.globl _Get_Interface
                            111 	.globl _Set_Interface
                            112 	.globl _Get_Idle
                            113 	.globl _Get_Protocol
                            114 	.globl _Set_Protocol
                            115 	.globl _Set_Idle
                            116 	.globl _Get_Report
                            117 	.globl _Set_Report
                            118 ;--------------------------------------------------------
                            119 ; special function registers
                            120 ;--------------------------------------------------------
                            121 	.area RSEG    (ABS,DATA)
   0000                     122 	.org 0x0000
                    0080    123 G$P0$0$0 == 0x0080
                    0080    124 _P0	=	0x0080
                    0081    125 G$SP$0$0 == 0x0081
                    0081    126 _SP	=	0x0081
                    0082    127 G$DPL$0$0 == 0x0082
                    0082    128 _DPL	=	0x0082
                    0083    129 G$DPH$0$0 == 0x0083
                    0083    130 _DPH	=	0x0083
                    0087    131 G$PCON$0$0 == 0x0087
                    0087    132 _PCON	=	0x0087
                    0088    133 G$TCON$0$0 == 0x0088
                    0088    134 _TCON	=	0x0088
                    0089    135 G$TMOD$0$0 == 0x0089
                    0089    136 _TMOD	=	0x0089
                    008A    137 G$TL0$0$0 == 0x008a
                    008A    138 _TL0	=	0x008a
                    008B    139 G$TL1$0$0 == 0x008b
                    008B    140 _TL1	=	0x008b
                    008C    141 G$TH0$0$0 == 0x008c
                    008C    142 _TH0	=	0x008c
                    008D    143 G$TH1$0$0 == 0x008d
                    008D    144 _TH1	=	0x008d
                    008E    145 G$CKCON$0$0 == 0x008e
                    008E    146 _CKCON	=	0x008e
                    008F    147 G$PSCTL$0$0 == 0x008f
                    008F    148 _PSCTL	=	0x008f
                    0091    149 G$SBCON0$0$0 == 0x0091
                    0091    150 _SBCON0	=	0x0091
                    0093    151 G$SBRLL0$0$0 == 0x0093
                    0093    152 _SBRLL0	=	0x0093
                    0094    153 G$SBRLH0$0$0 == 0x0094
                    0094    154 _SBRLH0	=	0x0094
                    0096    155 G$USB0ADR$0$0 == 0x0096
                    0096    156 _USB0ADR	=	0x0096
                    0097    157 G$USB0DAT$0$0 == 0x0097
                    0097    158 _USB0DAT	=	0x0097
                    0098    159 G$SCON0$0$0 == 0x0098
                    0098    160 _SCON0	=	0x0098
                    0099    161 G$SBUF0$0$0 == 0x0099
                    0099    162 _SBUF0	=	0x0099
                    009A    163 G$SMOD0$0$0 == 0x009a
                    009A    164 _SMOD0	=	0x009a
                    00A0    165 G$P2$0$0 == 0x00a0
                    00A0    166 _P2	=	0x00a0
                    00A4    167 G$P0MDOUT$0$0 == 0x00a4
                    00A4    168 _P0MDOUT	=	0x00a4
                    00A6    169 G$P2MDOUT$0$0 == 0x00a6
                    00A6    170 _P2MDOUT	=	0x00a6
                    00A7    171 G$P3MDOUT$0$0 == 0x00a7
                    00A7    172 _P3MDOUT	=	0x00a7
                    00A8    173 G$IE$0$0 == 0x00a8
                    00A8    174 _IE	=	0x00a8
                    00A9    175 G$CLKSEL$0$0 == 0x00a9
                    00A9    176 _CLKSEL	=	0x00a9
                    00AA    177 G$EMI0CN$0$0 == 0x00aa
                    00AA    178 _EMI0CN	=	0x00aa
                    00B0    179 G$P3$0$0 == 0x00b0
                    00B0    180 _P3	=	0x00b0
                    00B2    181 G$OSCICN$0$0 == 0x00b2
                    00B2    182 _OSCICN	=	0x00b2
                    00B3    183 G$OSCICL$0$0 == 0x00b3
                    00B3    184 _OSCICL	=	0x00b3
                    00B6    185 G$FLSCL$0$0 == 0x00b6
                    00B6    186 _FLSCL	=	0x00b6
                    00B7    187 G$FLKEY$0$0 == 0x00b7
                    00B7    188 _FLKEY	=	0x00b7
                    00B8    189 G$IP$0$0 == 0x00b8
                    00B8    190 _IP	=	0x00b8
                    00B9    191 G$CLKMUL$0$0 == 0x00b9
                    00B9    192 _CLKMUL	=	0x00b9
                    00C9    193 G$REG0CN$0$0 == 0x00c9
                    00C9    194 _REG0CN	=	0x00c9
                    00D0    195 G$PSW$0$0 == 0x00d0
                    00D0    196 _PSW	=	0x00d0
                    00D7    197 G$USB0XCN$0$0 == 0x00d7
                    00D7    198 _USB0XCN	=	0x00d7
                    00E0    199 G$ACC$0$0 == 0x00e0
                    00E0    200 _ACC	=	0x00e0
                    00E2    201 G$GPIOCN$0$0 == 0x00e2
                    00E2    202 _GPIOCN	=	0x00e2
                    00E3    203 G$OSCLCN$0$0 == 0x00e3
                    00E3    204 _OSCLCN	=	0x00e3
                    00E6    205 G$EIE1$0$0 == 0x00e6
                    00E6    206 _EIE1	=	0x00e6
                    00E7    207 G$EIE2$0$0 == 0x00e7
                    00E7    208 _EIE2	=	0x00e7
                    00EF    209 G$RSTSRC$0$0 == 0x00ef
                    00EF    210 _RSTSRC	=	0x00ef
                    00F0    211 G$B$0$0 == 0x00f0
                    00F0    212 _B	=	0x00f0
                    00F6    213 G$EIP1$0$0 == 0x00f6
                    00F6    214 _EIP1	=	0x00f6
                    00F7    215 G$EIP2$0$0 == 0x00f7
                    00F7    216 _EIP2	=	0x00f7
                    00FF    217 G$VDM0CN$0$0 == 0x00ff
                    00FF    218 _VDM0CN	=	0x00ff
                    8382    219 G$DP$0$0 == 0x8382
                    8382    220 _DP	=	0x8382
                    9493    221 G$SBRL0$0$0 == 0x9493
                    9493    222 _SBRL0	=	0x9493
                    00AA    223 G$_XPAGE$0$0 == 0x00aa
                    00AA    224 __XPAGE	=	0x00aa
                            225 ;--------------------------------------------------------
                            226 ; special function bits
                            227 ;--------------------------------------------------------
                            228 	.area RSEG    (ABS,DATA)
   0000                     229 	.org 0x0000
                    008F    230 G$TF1$0$0 == 0x008f
                    008F    231 _TF1	=	0x008f
                    008E    232 G$TR1$0$0 == 0x008e
                    008E    233 _TR1	=	0x008e
                    008D    234 G$TF0$0$0 == 0x008d
                    008D    235 _TF0	=	0x008d
                    008C    236 G$TR0$0$0 == 0x008c
                    008C    237 _TR0	=	0x008c
                    008B    238 G$IE1$0$0 == 0x008b
                    008B    239 _IE1	=	0x008b
                    008A    240 G$IT1$0$0 == 0x008a
                    008A    241 _IT1	=	0x008a
                    0089    242 G$IE0$0$0 == 0x0089
                    0089    243 _IE0	=	0x0089
                    0088    244 G$IT0$0$0 == 0x0088
                    0088    245 _IT0	=	0x0088
                    009F    246 G$OVR0$0$0 == 0x009f
                    009F    247 _OVR0	=	0x009f
                    009F    248 G$PERR0$0$0 == 0x009f
                    009F    249 _PERR0	=	0x009f
                    009C    250 G$REN0$0$0 == 0x009c
                    009C    251 _REN0	=	0x009c
                    009B    252 G$TBX0$0$0 == 0x009b
                    009B    253 _TBX0	=	0x009b
                    009A    254 G$RBX0$0$0 == 0x009a
                    009A    255 _RBX0	=	0x009a
                    0099    256 G$TI0$0$0 == 0x0099
                    0099    257 _TI0	=	0x0099
                    0098    258 G$RI0$0$0 == 0x0098
                    0098    259 _RI0	=	0x0098
                    00AF    260 G$EA$0$0 == 0x00af
                    00AF    261 _EA	=	0x00af
                    00AC    262 G$ES0$0$0 == 0x00ac
                    00AC    263 _ES0	=	0x00ac
                    00AB    264 G$ET1$0$0 == 0x00ab
                    00AB    265 _ET1	=	0x00ab
                    00AA    266 G$EX1$0$0 == 0x00aa
                    00AA    267 _EX1	=	0x00aa
                    00A9    268 G$ET0$0$0 == 0x00a9
                    00A9    269 _ET0	=	0x00a9
                    00A8    270 G$EX0$0$0 == 0x00a8
                    00A8    271 _EX0	=	0x00a8
                    00BC    272 G$PS0$0$0 == 0x00bc
                    00BC    273 _PS0	=	0x00bc
                    00BB    274 G$PT1$0$0 == 0x00bb
                    00BB    275 _PT1	=	0x00bb
                    00BA    276 G$PX1$0$0 == 0x00ba
                    00BA    277 _PX1	=	0x00ba
                    00B9    278 G$PT0$0$0 == 0x00b9
                    00B9    279 _PT0	=	0x00b9
                    00B8    280 G$PX0$0$0 == 0x00b8
                    00B8    281 _PX0	=	0x00b8
                    00D7    282 G$CY$0$0 == 0x00d7
                    00D7    283 _CY	=	0x00d7
                    00D6    284 G$AC$0$0 == 0x00d6
                    00D6    285 _AC	=	0x00d6
                    00D5    286 G$F0$0$0 == 0x00d5
                    00D5    287 _F0	=	0x00d5
                    00D4    288 G$RS1$0$0 == 0x00d4
                    00D4    289 _RS1	=	0x00d4
                    00D3    290 G$RS0$0$0 == 0x00d3
                    00D3    291 _RS0	=	0x00d3
                    00D2    292 G$OV$0$0 == 0x00d2
                    00D2    293 _OV	=	0x00d2
                    00D1    294 G$F1$0$0 == 0x00d1
                    00D1    295 _F1	=	0x00d1
                    00D0    296 G$P$0$0 == 0x00d0
                    00D0    297 _P	=	0x00d0
                            298 ;--------------------------------------------------------
                            299 ; overlayable register banks
                            300 ;--------------------------------------------------------
                            301 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     302 	.ds 8
                            303 ;--------------------------------------------------------
                            304 ; internal ram data
                            305 ;--------------------------------------------------------
                            306 	.area DSEG    (DATA)
                            307 ;--------------------------------------------------------
                            308 ; overlayable items in internal ram 
                            309 ;--------------------------------------------------------
                            310 ;--------------------------------------------------------
                            311 ; indirectly addressable internal ram data
                            312 ;--------------------------------------------------------
                            313 	.area ISEG    (DATA)
                            314 ;--------------------------------------------------------
                            315 ; absolute internal ram data
                            316 ;--------------------------------------------------------
                            317 	.area IABS    (ABS,DATA)
                            318 	.area IABS    (ABS,DATA)
                            319 ;--------------------------------------------------------
                            320 ; bit data
                            321 ;--------------------------------------------------------
                            322 	.area BSEG    (BIT)
                            323 ;--------------------------------------------------------
                            324 ; paged external ram data
                            325 ;--------------------------------------------------------
                            326 	.area PSEG    (PAG,XDATA)
                            327 ;--------------------------------------------------------
                            328 ; external ram data
                            329 ;--------------------------------------------------------
                            330 	.area XSEG    (XDATA)
                            331 ;--------------------------------------------------------
                            332 ; absolute external ram data
                            333 ;--------------------------------------------------------
                            334 	.area XABS    (ABS,XDATA)
                            335 ;--------------------------------------------------------
                            336 ; external initialized ram data
                            337 ;--------------------------------------------------------
                            338 	.area XISEG   (XDATA)
                            339 	.area HOME    (CODE)
                            340 	.area GSINIT0 (CODE)
                            341 	.area GSINIT1 (CODE)
                            342 	.area GSINIT2 (CODE)
                            343 	.area GSINIT3 (CODE)
                            344 	.area GSINIT4 (CODE)
                            345 	.area GSINIT5 (CODE)
                            346 	.area GSINIT  (CODE)
                            347 	.area GSFINAL (CODE)
                            348 	.area CSEG    (CODE)
                            349 ;--------------------------------------------------------
                            350 ; global & static initialisations
                            351 ;--------------------------------------------------------
                            352 	.area HOME    (CODE)
                            353 	.area GSINIT  (CODE)
                            354 	.area GSFINAL (CODE)
                            355 	.area GSINIT  (CODE)
                            356 ;--------------------------------------------------------
                            357 ; Home
                            358 ;--------------------------------------------------------
                            359 	.area HOME    (CODE)
                            360 	.area HOME    (CODE)
                            361 ;--------------------------------------------------------
                            362 ; code
                            363 ;--------------------------------------------------------
                            364 	.area CSEG    (CODE)
                            365 ;------------------------------------------------------------
                            366 ;Allocation info for local variables in function 'Get_Status'
                            367 ;------------------------------------------------------------
                    0000    368 	G$Get_Status$0$0 ==.
                    0000    369 	C$F3xx_USB0_Standard_Requests.c$101$0$0 ==.
                            370 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:101: void Get_Status (void)                 // This routine returns a two byte
                            371 ;	-----------------------------------------
                            372 ;	 function Get_Status
                            373 ;	-----------------------------------------
   0685                     374 _Get_Status:
                    0007    375 	ar7 = 0x07
                    0006    376 	ar6 = 0x06
                    0005    377 	ar5 = 0x05
                    0004    378 	ar4 = 0x04
                    0003    379 	ar3 = 0x03
                    0002    380 	ar2 = 0x02
                    0001    381 	ar1 = 0x01
                    0000    382 	ar0 = 0x00
                    0000    383 	C$F3xx_USB0_Standard_Requests.c$104$1$24 ==.
                            384 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:104: if (SETUP.wValue.U8[MSB] || SETUP.wValue.U8[LSB] ||
   0685 E5 0C               385 	mov	a,(_SETUP + 0x0003)
   0687 70 0F               386 	jnz	00101$
   0689 E5 0B               387 	mov	a,(_SETUP + 0x0002)
   068B 70 0B               388 	jnz	00101$
                    0008    389 	C$F3xx_USB0_Standard_Requests.c$107$1$24 ==.
                            390 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:107: SETUP.wLength.U8[MSB]    || (SETUP.wLength.U8[LSB] != 2))
   068D E5 10               391 	mov	a,(_SETUP + 0x0007)
   068F 70 07               392 	jnz	00101$
   0691 74 02               393 	mov	a,#0x02
   0693 B5 0F 02            394 	cjne	a,(_SETUP + 0x0006),00168$
   0696 80 03               395 	sjmp	00102$
   0698                     396 00168$:
   0698                     397 00101$:
                    0013    398 	C$F3xx_USB0_Standard_Requests.c$110$2$25 ==.
                            399 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:110: Force_Stall ();
   0698 12 05 E9            400 	lcall	_Force_Stall
   069B                     401 00102$:
                    0016    402 	C$F3xx_USB0_Standard_Requests.c$113$1$24 ==.
                            403 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:113: switch(SETUP.bmRequestType)         // Determine if recipient was device,
   069B AF 09               404 	mov	r7,_SETUP
   069D BF 80 02            405 	cjne	r7,#0x80,00169$
   06A0 80 0D               406 	sjmp	00106$
   06A2                     407 00169$:
   06A2 BF 81 02            408 	cjne	r7,#0x81,00170$
   06A5 80 28               409 	sjmp	00111$
   06A7                     410 00170$:
   06A7 BF 82 02            411 	cjne	r7,#0x82,00171$
   06AA 80 46               412 	sjmp	00117$
   06AC                     413 00171$:
   06AC 02 07 31            414 	ljmp	00128$
                    002A    415 	C$F3xx_USB0_Standard_Requests.c$115$2$26 ==.
                            416 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:115: case OUT_DEVICE:                 // If recipient was device
   06AF                     417 00106$:
                    002A    418 	C$F3xx_USB0_Standard_Requests.c$116$2$26 ==.
                            419 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:116: if (SETUP.wIndex.U8[MSB] || SETUP.wIndex.U8[LSB])
   06AF E5 0E               420 	mov	a,(_SETUP + 0x0005)
   06B1 70 04               421 	jnz	00107$
   06B3 E5 0D               422 	mov	a,(_SETUP + 0x0004)
   06B5 60 06               423 	jz	00108$
   06B7                     424 00107$:
                    0032    425 	C$F3xx_USB0_Standard_Requests.c$118$3$27 ==.
                            426 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:118: Force_Stall ();            // Send stall if request is invalid
   06B7 12 05 E9            427 	lcall	_Force_Stall
   06BA 02 07 34            428 	ljmp	00129$
   06BD                     429 00108$:
                    0038    430 	C$F3xx_USB0_Standard_Requests.c$124$3$28 ==.
                            431 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:124: DATAPTR = (unsigned char*)&ZERO_PACKET;
   06BD 75 15 F7            432 	mov	_DATAPTR,#_ZERO_PACKET
   06C0 75 16 0C            433 	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
   06C3 75 17 80            434 	mov	(_DATAPTR + 2),#0x80
                    0041    435 	C$F3xx_USB0_Standard_Requests.c$125$3$28 ==.
                            436 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:125: DATASIZE = 2;
   06C6 75 11 02            437 	mov	_DATASIZE,#0x02
   06C9 75 12 00            438 	mov	(_DATASIZE + 1),#0x00
                    0047    439 	C$F3xx_USB0_Standard_Requests.c$127$2$26 ==.
                            440 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:127: break;
   06CC 02 07 34            441 	ljmp	00129$
                    004A    442 	C$F3xx_USB0_Standard_Requests.c$129$2$26 ==.
                            443 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:129: case OUT_INTERFACE:              // See if recipient was interface
   06CF                     444 00111$:
                    004A    445 	C$F3xx_USB0_Standard_Requests.c$130$2$26 ==.
                            446 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:130: if ((USB0_STATE != DEV_CONFIGURED) ||
   06CF 74 04               447 	mov	a,#0x04
   06D1 B5 08 08            448 	cjne	a,_USB0_STATE,00112$
                    004F    449 	C$F3xx_USB0_Standard_Requests.c$131$2$26 ==.
                            450 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:131: SETUP.wIndex.U8[MSB] || SETUP.wIndex.U8[LSB])
   06D4 E5 0E               451 	mov	a,(_SETUP + 0x0005)
   06D6 70 04               452 	jnz	00112$
   06D8 E5 0D               453 	mov	a,(_SETUP + 0x0004)
   06DA 60 05               454 	jz	00113$
   06DC                     455 00112$:
                    0057    456 	C$F3xx_USB0_Standard_Requests.c$135$3$29 ==.
                            457 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:135: Force_Stall ();            // Otherwise send stall to host
   06DC 12 05 E9            458 	lcall	_Force_Stall
   06DF 80 53               459 	sjmp	00129$
   06E1                     460 00113$:
                    005C    461 	C$F3xx_USB0_Standard_Requests.c$140$3$30 ==.
                            462 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:140: DATAPTR = (unsigned char*)&ZERO_PACKET;
   06E1 75 15 F7            463 	mov	_DATAPTR,#_ZERO_PACKET
   06E4 75 16 0C            464 	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
   06E7 75 17 80            465 	mov	(_DATAPTR + 2),#0x80
                    0065    466 	C$F3xx_USB0_Standard_Requests.c$141$3$30 ==.
                            467 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:141: DATASIZE = 2;
   06EA 75 11 02            468 	mov	_DATASIZE,#0x02
   06ED 75 12 00            469 	mov	(_DATASIZE + 1),#0x00
                    006B    470 	C$F3xx_USB0_Standard_Requests.c$143$2$26 ==.
                            471 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:143: break;
                    006B    472 	C$F3xx_USB0_Standard_Requests.c$145$2$26 ==.
                            473 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:145: case OUT_ENDPOINT:               // See if recipient was an endpoint
   06F0 80 42               474 	sjmp	00129$
   06F2                     475 00117$:
                    006D    476 	C$F3xx_USB0_Standard_Requests.c$146$2$26 ==.
                            477 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:146: if ((USB0_STATE != DEV_CONFIGURED) ||
   06F2 74 04               478 	mov	a,#0x04
   06F4 B5 08 04            479 	cjne	a,_USB0_STATE,00124$
                    0072    480 	C$F3xx_USB0_Standard_Requests.c$147$2$26 ==.
                            481 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:147: SETUP.wIndex.U8[MSB])          // Make sure device is configured
   06F7 E5 0E               482 	mov	a,(_SETUP + 0x0005)
   06F9 60 05               483 	jz	00125$
   06FB                     484 00124$:
                    0076    485 	C$F3xx_USB0_Standard_Requests.c$150$3$31 ==.
                            486 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:150: Force_Stall();
   06FB 12 05 E9            487 	lcall	_Force_Stall
   06FE 80 34               488 	sjmp	00129$
   0700                     489 00125$:
                    007B    490 	C$F3xx_USB0_Standard_Requests.c$155$3$32 ==.
                            491 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:155: if (SETUP.wIndex.U8[LSB] == IN_EP1)
   0700 74 81               492 	mov	a,#0x81
   0702 B5 0D 27            493 	cjne	a,(_SETUP + 0x0004),00122$
                    0080    494 	C$F3xx_USB0_Standard_Requests.c$157$4$33 ==.
                            495 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:157: if (EP_STATUS[1] == EP_HALT)
   0705 74 03               496 	mov	a,#0x03
   0707 B5 19 11            497 	cjne	a,(_EP_STATUS + 0x0001),00119$
                    0085    498 	C$F3xx_USB0_Standard_Requests.c$160$5$34 ==.
                            499 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:160: DATAPTR = (unsigned char*)&ONES_PACKET;
   070A 75 15 F5            500 	mov	_DATAPTR,#_ONES_PACKET
   070D 75 16 0C            501 	mov	(_DATAPTR + 1),#(_ONES_PACKET >> 8)
   0710 75 17 80            502 	mov	(_DATAPTR + 2),#0x80
                    008E    503 	C$F3xx_USB0_Standard_Requests.c$161$5$34 ==.
                            504 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:161: DATASIZE = 2;
   0713 75 11 02            505 	mov	_DATASIZE,#0x02
   0716 75 12 00            506 	mov	(_DATASIZE + 1),#0x00
   0719 80 19               507 	sjmp	00129$
   071B                     508 00119$:
                    0096    509 	C$F3xx_USB0_Standard_Requests.c$166$5$35 ==.
                            510 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:166: DATAPTR = (unsigned char*)&ZERO_PACKET;
   071B 75 15 F7            511 	mov	_DATAPTR,#_ZERO_PACKET
   071E 75 16 0C            512 	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
   0721 75 17 80            513 	mov	(_DATAPTR + 2),#0x80
                    009F    514 	C$F3xx_USB0_Standard_Requests.c$167$5$35 ==.
                            515 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:167: DATASIZE = 2;
   0724 75 11 02            516 	mov	_DATASIZE,#0x02
   0727 75 12 00            517 	mov	(_DATASIZE + 1),#0x00
   072A 80 08               518 	sjmp	00129$
   072C                     519 00122$:
                    00A7    520 	C$F3xx_USB0_Standard_Requests.c$172$4$36 ==.
                            521 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:172: Force_Stall ();         // Send stall if unexpected data
   072C 12 05 E9            522 	lcall	_Force_Stall
                    00AA    523 	C$F3xx_USB0_Standard_Requests.c$176$2$26 ==.
                            524 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:176: break;
                    00AA    525 	C$F3xx_USB0_Standard_Requests.c$178$2$26 ==.
                            526 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:178: default:
   072F 80 03               527 	sjmp	00129$
   0731                     528 00128$:
                    00AC    529 	C$F3xx_USB0_Standard_Requests.c$179$2$26 ==.
                            530 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:179: Force_Stall ();
   0731 12 05 E9            531 	lcall	_Force_Stall
                    00AF    532 	C$F3xx_USB0_Standard_Requests.c$181$1$24 ==.
                            533 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:181: }
   0734                     534 00129$:
                    00AF    535 	C$F3xx_USB0_Standard_Requests.c$182$1$24 ==.
                            536 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:182: if (EP_STATUS[0] != EP_STALL)
   0734 74 04               537 	mov	a,#0x04
   0736 B5 18 02            538 	cjne	a,_EP_STATUS,00185$
   0739 80 13               539 	sjmp	00135$
   073B                     540 00185$:
                    00B6    541 	C$F3xx_USB0_Standard_Requests.c$186$2$37 ==.
                            542 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:186: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
   073B                     543 00130$:
   073B E5 96               544 	mov	a,_USB0ADR
   073D 20 E7 FB            545 	jb	acc.7,00130$
   0740 75 96 11            546 	mov	_USB0ADR,#0x11
   0743 75 97 40            547 	mov	_USB0DAT,#0x40
                    00C1    548 	C$F3xx_USB0_Standard_Requests.c$187$2$37 ==.
                            549 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:187: EP_STATUS[0] = EP_TX;
   0746 75 18 01            550 	mov	_EP_STATUS,#0x01
                    00C4    551 	C$F3xx_USB0_Standard_Requests.c$188$2$37 ==.
                            552 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:188: DATASENT = 0;
   0749 E4                  553 	clr	a
   074A F5 13               554 	mov	_DATASENT,a
   074C F5 14               555 	mov	(_DATASENT + 1),a
   074E                     556 00135$:
                    00C9    557 	C$F3xx_USB0_Standard_Requests.c$190$1$24 ==.
                    00C9    558 	XG$Get_Status$0$0 ==.
   074E 22                  559 	ret
                            560 ;------------------------------------------------------------
                            561 ;Allocation info for local variables in function 'Clear_Feature'
                            562 ;------------------------------------------------------------
                    00CA    563 	G$Clear_Feature$0$0 ==.
                    00CA    564 	C$F3xx_USB0_Standard_Requests.c$202$1$24 ==.
                            565 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:202: void Clear_Feature ()                  // This routine can clear Halt Endpoint
                            566 ;	-----------------------------------------
                            567 ;	 function Clear_Feature
                            568 ;	-----------------------------------------
   074F                     569 _Clear_Feature:
                    00CA    570 	C$F3xx_USB0_Standard_Requests.c$206$1$38 ==.
                            571 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:206: if ( (USB0_STATE != DEV_CONFIGURED) ||
   074F 74 04               572 	mov	a,#0x04
   0751 B5 08 1A            573 	cjne	a,_USB0_STATE,00114$
                    00CF    574 	C$F3xx_USB0_Standard_Requests.c$208$1$38 ==.
                            575 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:208: (SETUP.bmRequestType == IN_DEVICE) ||
   0754 E5 09               576 	mov	a,_SETUP
   0756 FF                  577 	mov	r7,a
   0757 60 15               578 	jz	00114$
                    00D4    579 	C$F3xx_USB0_Standard_Requests.c$210$1$38 ==.
                            580 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:210: (SETUP.bmRequestType == IN_INTERFACE) ||
   0759 BF 01 02            581 	cjne	r7,#0x01,00170$
   075C 80 10               582 	sjmp	00114$
   075E                     583 00170$:
                    00D9    584 	C$F3xx_USB0_Standard_Requests.c$212$1$38 ==.
                            585 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:212: SETUP.wValue.U8[MSB]  || SETUP.wIndex.U8[MSB] ||
   075E E5 0C               586 	mov	a,(_SETUP + 0x0003)
   0760 70 0C               587 	jnz	00114$
   0762 E5 0E               588 	mov	a,(_SETUP + 0x0005)
   0764 70 08               589 	jnz	00114$
                    00E1    590 	C$F3xx_USB0_Standard_Requests.c$214$1$38 ==.
                            591 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:214: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB])
   0766 E5 10               592 	mov	a,(_SETUP + 0x0007)
   0768 70 04               593 	jnz	00114$
   076A E5 0F               594 	mov	a,(_SETUP + 0x0006)
   076C 60 05               595 	jz	00115$
   076E                     596 00114$:
                    00E9    597 	C$F3xx_USB0_Standard_Requests.c$216$2$39 ==.
                            598 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:216: Force_Stall ();
   076E 12 05 E9            599 	lcall	_Force_Stall
   0771 80 37               600 	sjmp	00123$
   0773                     601 00115$:
                    00EE    602 	C$F3xx_USB0_Standard_Requests.c$222$2$40 ==.
                            603 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:222: if ( (SETUP.bmRequestType == IN_ENDPOINT)&&
   0773 74 02               604 	mov	a,#0x02
   0775 B5 09 2F            605 	cjne	a,_SETUP,00110$
                    00F3    606 	C$F3xx_USB0_Standard_Requests.c$224$2$40 ==.
                            607 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:224: (SETUP.wValue.U8[LSB] == ENDPOINT_HALT)  &&
   0778 E5 0B               608 	mov	a,(_SETUP + 0x0002)
   077A 70 2B               609 	jnz	00110$
                    00F7    610 	C$F3xx_USB0_Standard_Requests.c$226$2$40 ==.
                            611 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:226: ((SETUP.wIndex.U8[LSB] == IN_EP1) ) )
   077C 74 81               612 	mov	a,#0x81
   077E B5 0D 04            613 	cjne	a,(_SETUP + 0x0004),00178$
   0781 74 01               614 	mov	a,#0x01
   0783 80 01               615 	sjmp	00179$
   0785                     616 00178$:
   0785 E4                  617 	clr	a
   0786                     618 00179$:
   0786 FF                  619 	mov	r7,a
   0787 60 1E               620 	jz	00110$
                    0104    621 	C$F3xx_USB0_Standard_Requests.c$228$3$41 ==.
                            622 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:228: if (SETUP.wIndex.U8[LSB] == IN_EP1)
   0789 EF                  623 	mov	a,r7
   078A 60 1E               624 	jz	00123$
                    0107    625 	C$F3xx_USB0_Standard_Requests.c$230$4$42 ==.
                            626 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:230: POLL_WRITE_BYTE (INDEX, 1);// Clear feature endpoint 1 halt
   078C                     627 00101$:
   078C E5 96               628 	mov	a,_USB0ADR
   078E 20 E7 FB            629 	jb	acc.7,00101$
   0791 75 96 0E            630 	mov	_USB0ADR,#0x0E
   0794 75 97 01            631 	mov	_USB0DAT,#0x01
                    0112    632 	C$F3xx_USB0_Standard_Requests.c$231$4$42 ==.
                            633 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:231: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
   0797                     634 00104$:
   0797 E5 96               635 	mov	a,_USB0ADR
   0799 20 E7 FB            636 	jb	acc.7,00104$
   079C 75 96 11            637 	mov	_USB0ADR,#0x11
   079F 75 97 40            638 	mov	_USB0DAT,#0x40
                    011D    639 	C$F3xx_USB0_Standard_Requests.c$232$4$42 ==.
                            640 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:232: EP_STATUS[1] = EP_IDLE;    // Set endpoint 1 status back to idle
   07A2 75 19 00            641 	mov	(_EP_STATUS + 0x0001),#0x00
   07A5 80 03               642 	sjmp	00123$
   07A7                     643 00110$:
                    0122    644 	C$F3xx_USB0_Standard_Requests.c$237$3$43 ==.
                            645 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:237: Force_Stall ();               // Send procedural stall
   07A7 12 05 E9            646 	lcall	_Force_Stall
                    0125    647 	C$F3xx_USB0_Standard_Requests.c$240$1$38 ==.
                            648 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:240: POLL_WRITE_BYTE (INDEX, 0);         // Reset Index to 0
   07AA                     649 00123$:
   07AA E5 96               650 	mov	a,_USB0ADR
   07AC 20 E7 FB            651 	jb	acc.7,00123$
   07AF 75 96 0E            652 	mov	_USB0ADR,#0x0E
   07B2 75 97 00            653 	mov	_USB0DAT,#0x00
                    0130    654 	C$F3xx_USB0_Standard_Requests.c$241$1$38 ==.
                            655 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:241: if (EP_STATUS[0] != EP_STALL)
   07B5 74 04               656 	mov	a,#0x04
   07B7 B5 18 02            657 	cjne	a,_EP_STATUS,00185$
   07BA 80 0B               658 	sjmp	00131$
   07BC                     659 00185$:
                    0137    660 	C$F3xx_USB0_Standard_Requests.c$243$2$44 ==.
                            661 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:243: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   07BC                     662 00126$:
   07BC E5 96               663 	mov	a,_USB0ADR
   07BE 20 E7 FB            664 	jb	acc.7,00126$
   07C1 75 96 11            665 	mov	_USB0ADR,#0x11
   07C4 75 97 48            666 	mov	_USB0DAT,#0x48
   07C7                     667 00131$:
                    0142    668 	C$F3xx_USB0_Standard_Requests.c$248$1$38 ==.
                    0142    669 	XG$Clear_Feature$0$0 ==.
   07C7 22                  670 	ret
                            671 ;------------------------------------------------------------
                            672 ;Allocation info for local variables in function 'Set_Feature'
                            673 ;------------------------------------------------------------
                    0143    674 	G$Set_Feature$0$0 ==.
                    0143    675 	C$F3xx_USB0_Standard_Requests.c$260$1$38 ==.
                            676 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:260: void Set_Feature (void)                // This routine will set the EP Halt
                            677 ;	-----------------------------------------
                            678 ;	 function Set_Feature
                            679 ;	-----------------------------------------
   07C8                     680 _Set_Feature:
                    0143    681 	C$F3xx_USB0_Standard_Requests.c$264$1$46 ==.
                            682 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:264: if ((USB0_STATE != DEV_CONFIGURED) ||
   07C8 74 04               683 	mov	a,#0x04
   07CA B5 08 1A            684 	cjne	a,_USB0_STATE,00115$
                    0148    685 	C$F3xx_USB0_Standard_Requests.c$266$1$46 ==.
                            686 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:266: (SETUP.bmRequestType == IN_DEVICE) ||
   07CD E5 09               687 	mov	a,_SETUP
   07CF FF                  688 	mov	r7,a
   07D0 60 15               689 	jz	00115$
                    014D    690 	C$F3xx_USB0_Standard_Requests.c$267$1$46 ==.
                            691 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:267: (SETUP.bmRequestType == IN_INTERFACE) ||
   07D2 BF 01 02            692 	cjne	r7,#0x01,00171$
   07D5 80 10               693 	sjmp	00115$
   07D7                     694 00171$:
                    0152    695 	C$F3xx_USB0_Standard_Requests.c$268$1$46 ==.
                            696 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:268: SETUP.wValue.U8[MSB]  || SETUP.wIndex.U8[MSB] ||
   07D7 E5 0C               697 	mov	a,(_SETUP + 0x0003)
   07D9 70 0C               698 	jnz	00115$
   07DB E5 0E               699 	mov	a,(_SETUP + 0x0005)
   07DD 70 08               700 	jnz	00115$
                    015A    701 	C$F3xx_USB0_Standard_Requests.c$269$1$46 ==.
                            702 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:269: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB])
   07DF E5 10               703 	mov	a,(_SETUP + 0x0007)
   07E1 70 04               704 	jnz	00115$
   07E3 E5 0F               705 	mov	a,(_SETUP + 0x0006)
   07E5 60 05               706 	jz	00116$
   07E7                     707 00115$:
                    0162    708 	C$F3xx_USB0_Standard_Requests.c$271$2$47 ==.
                            709 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:271: Force_Stall ();                  // Otherwise send stall to host
   07E7 12 05 E9            710 	lcall	_Force_Stall
   07EA 80 37               711 	sjmp	00124$
   07EC                     712 00116$:
                    0167    713 	C$F3xx_USB0_Standard_Requests.c$277$2$48 ==.
                            714 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:277: if ( (SETUP.bmRequestType == IN_ENDPOINT)&&
   07EC 74 02               715 	mov	a,#0x02
   07EE B5 09 2F            716 	cjne	a,_SETUP,00110$
                    016C    717 	C$F3xx_USB0_Standard_Requests.c$279$2$48 ==.
                            718 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:279: (SETUP.wValue.U8[LSB] == ENDPOINT_HALT) &&
   07F1 E5 0B               719 	mov	a,(_SETUP + 0x0002)
   07F3 70 2B               720 	jnz	00110$
                    0170    721 	C$F3xx_USB0_Standard_Requests.c$280$2$48 ==.
                            722 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:280: ((SETUP.wIndex.U8[LSB] == IN_EP1)        ||
   07F5 AF 0D               723 	mov	r7,(_SETUP + 0x0004)
   07F7 E4                  724 	clr	a
   07F8 BF 81 01            725 	cjne	r7,#0x81,00179$
   07FB 04                  726 	inc	a
   07FC                     727 00179$:
   07FC FE                  728 	mov	r6,a
   07FD 70 03               729 	jnz	00109$
                    017A    730 	C$F3xx_USB0_Standard_Requests.c$281$2$48 ==.
                            731 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:281: (SETUP.wIndex.U8[LSB] == OUT_EP2) ) )
   07FF BF 02 1E            732 	cjne	r7,#0x02,00110$
   0802                     733 00109$:
                    017D    734 	C$F3xx_USB0_Standard_Requests.c$283$3$49 ==.
                            735 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:283: if (SETUP.wIndex.U8[LSB] == IN_EP1)
   0802 EE                  736 	mov	a,r6
   0803 60 1E               737 	jz	00124$
                    0180    738 	C$F3xx_USB0_Standard_Requests.c$285$4$50 ==.
                            739 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:285: POLL_WRITE_BYTE (INDEX, 1);// Set feature endpoint 1 halt
   0805                     740 00101$:
   0805 E5 96               741 	mov	a,_USB0ADR
   0807 20 E7 FB            742 	jb	acc.7,00101$
   080A 75 96 0E            743 	mov	_USB0ADR,#0x0E
   080D 75 97 01            744 	mov	_USB0DAT,#0x01
                    018B    745 	C$F3xx_USB0_Standard_Requests.c$286$4$50 ==.
                            746 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:286: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
   0810                     747 00104$:
   0810 E5 96               748 	mov	a,_USB0ADR
   0812 20 E7 FB            749 	jb	acc.7,00104$
   0815 75 96 11            750 	mov	_USB0ADR,#0x11
   0818 75 97 10            751 	mov	_USB0DAT,#0x10
                    0196    752 	C$F3xx_USB0_Standard_Requests.c$287$4$50 ==.
                            753 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:287: EP_STATUS[1] = EP_HALT;
   081B 75 19 03            754 	mov	(_EP_STATUS + 0x0001),#0x03
   081E 80 03               755 	sjmp	00124$
   0820                     756 00110$:
                    019B    757 	C$F3xx_USB0_Standard_Requests.c$292$3$51 ==.
                            758 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:292: Force_Stall ();               // Send procedural stall
   0820 12 05 E9            759 	lcall	_Force_Stall
                    019E    760 	C$F3xx_USB0_Standard_Requests.c$295$1$46 ==.
                            761 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:295: POLL_WRITE_BYTE (INDEX, 0);
   0823                     762 00124$:
   0823 E5 96               763 	mov	a,_USB0ADR
   0825 20 E7 FB            764 	jb	acc.7,00124$
   0828 75 96 0E            765 	mov	_USB0ADR,#0x0E
   082B 75 97 00            766 	mov	_USB0DAT,#0x00
                    01A9    767 	C$F3xx_USB0_Standard_Requests.c$296$1$46 ==.
                            768 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:296: if (EP_STATUS[0] != EP_STALL)
   082E 74 04               769 	mov	a,#0x04
   0830 B5 18 02            770 	cjne	a,_EP_STATUS,00188$
   0833 80 0B               771 	sjmp	00132$
   0835                     772 00188$:
                    01B0    773 	C$F3xx_USB0_Standard_Requests.c$298$2$52 ==.
                            774 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:298: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   0835                     775 00127$:
   0835 E5 96               776 	mov	a,_USB0ADR
   0837 20 E7 FB            777 	jb	acc.7,00127$
   083A 75 96 11            778 	mov	_USB0ADR,#0x11
   083D 75 97 48            779 	mov	_USB0DAT,#0x48
   0840                     780 00132$:
                    01BB    781 	C$F3xx_USB0_Standard_Requests.c$302$1$46 ==.
                    01BB    782 	XG$Set_Feature$0$0 ==.
   0840 22                  783 	ret
                            784 ;------------------------------------------------------------
                            785 ;Allocation info for local variables in function 'Set_Address'
                            786 ;------------------------------------------------------------
                    01BC    787 	G$Set_Address$0$0 ==.
                    01BC    788 	C$F3xx_USB0_Standard_Requests.c$314$1$46 ==.
                            789 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:314: void Set_Address (void)                // Set new function address
                            790 ;	-----------------------------------------
                            791 ;	 function Set_Address
                            792 ;	-----------------------------------------
   0841                     793 _Set_Address:
                    01BC    794 	C$F3xx_USB0_Standard_Requests.c$317$1$54 ==.
                            795 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:317: if ((SETUP.bmRequestType != IN_DEVICE) ||
   0841 E5 09               796 	mov	a,_SETUP
   0843 70 19               797 	jnz	00101$
                    01C0    798 	C$F3xx_USB0_Standard_Requests.c$319$1$54 ==.
                            799 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:319: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
   0845 E5 0E               800 	mov	a,(_SETUP + 0x0005)
   0847 70 15               801 	jnz	00101$
   0849 E5 0D               802 	mov	a,(_SETUP + 0x0004)
   084B 70 11               803 	jnz	00101$
                    01C8    804 	C$F3xx_USB0_Standard_Requests.c$320$1$54 ==.
                            805 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:320: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB]||
   084D E5 10               806 	mov	a,(_SETUP + 0x0007)
   084F 70 0D               807 	jnz	00101$
   0851 E5 0F               808 	mov	a,(_SETUP + 0x0006)
   0853 70 09               809 	jnz	00101$
                    01D0    810 	C$F3xx_USB0_Standard_Requests.c$321$1$54 ==.
                            811 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:321: SETUP.wValue.U8[MSB]  || (SETUP.wValue.U8[LSB] & 0x80))
   0855 E5 0C               812 	mov	a,(_SETUP + 0x0003)
   0857 70 05               813 	jnz	00101$
   0859 E5 0B               814 	mov	a,(_SETUP + 0x0002)
   085B 30 E7 03            815 	jnb	acc.7,00102$
   085E                     816 00101$:
                    01D9    817 	C$F3xx_USB0_Standard_Requests.c$323$2$55 ==.
                            818 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:323: Force_Stall ();                   // Send stall if SETUP data invalid
   085E 12 05 E9            819 	lcall	_Force_Stall
   0861                     820 00102$:
                    01DC    821 	C$F3xx_USB0_Standard_Requests.c$326$1$54 ==.
                            822 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:326: EP_STATUS[0] = EP_ADDRESS;          // Set endpoint zero to update
   0861 75 18 05            823 	mov	_EP_STATUS,#0x05
                    01DF    824 	C$F3xx_USB0_Standard_Requests.c$328$1$54 ==.
                            825 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:328: if (SETUP.wValue.U8[LSB] != 0)
   0864 E5 0B               826 	mov	a,(_SETUP + 0x0002)
   0866 60 05               827 	jz	00110$
                    01E3    828 	C$F3xx_USB0_Standard_Requests.c$330$2$56 ==.
                            829 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:330: USB0_STATE = DEV_ADDRESS;        // Indicate that device state is now
   0868 75 08 03            830 	mov	_USB0_STATE,#0x03
   086B 80 03               831 	sjmp	00111$
   086D                     832 00110$:
                    01E8    833 	C$F3xx_USB0_Standard_Requests.c$335$2$57 ==.
                            834 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:335: USB0_STATE = DEV_DEFAULT;        // If new address was 0x00, return
   086D 75 08 02            835 	mov	_USB0_STATE,#0x02
   0870                     836 00111$:
                    01EB    837 	C$F3xx_USB0_Standard_Requests.c$337$1$54 ==.
                            838 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:337: if (EP_STATUS[0] != EP_STALL)
   0870 74 04               839 	mov	a,#0x04
   0872 B5 18 02            840 	cjne	a,_EP_STATUS,00145$
   0875 80 0B               841 	sjmp	00117$
   0877                     842 00145$:
                    01F2    843 	C$F3xx_USB0_Standard_Requests.c$339$2$58 ==.
                            844 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:339: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   0877                     845 00112$:
   0877 E5 96               846 	mov	a,_USB0ADR
   0879 20 E7 FB            847 	jb	acc.7,00112$
   087C 75 96 11            848 	mov	_USB0ADR,#0x11
   087F 75 97 48            849 	mov	_USB0DAT,#0x48
   0882                     850 00117$:
                    01FD    851 	C$F3xx_USB0_Standard_Requests.c$343$1$54 ==.
                    01FD    852 	XG$Set_Address$0$0 ==.
   0882 22                  853 	ret
                            854 ;------------------------------------------------------------
                            855 ;Allocation info for local variables in function 'Get_Descriptor'
                            856 ;------------------------------------------------------------
                    01FE    857 	G$Get_Descriptor$0$0 ==.
                    01FE    858 	C$F3xx_USB0_Standard_Requests.c$355$1$54 ==.
                            859 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:355: void Get_Descriptor (void)             // This routine sets the data pointer
                            860 ;	-----------------------------------------
                            861 ;	 function Get_Descriptor
                            862 ;	-----------------------------------------
   0883                     863 _Get_Descriptor:
                    01FE    864 	C$F3xx_USB0_Standard_Requests.c$359$1$60 ==.
                            865 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:359: switch(SETUP.wValue.U8[MSB])         // Determine which type of descriptor
   0883 AF 0C               866 	mov	r7,(_SETUP + 0x0003)
   0885 BF 01 02            867 	cjne	r7,#0x01,00171$
   0888 80 25               868 	sjmp	00101$
   088A                     869 00171$:
   088A BF 02 02            870 	cjne	r7,#0x02,00172$
   088D 80 37               871 	sjmp	00102$
   088F                     872 00172$:
   088F BF 03 02            873 	cjne	r7,#0x03,00173$
   0892 80 55               874 	sjmp	00103$
   0894                     875 00173$:
   0894 BF 04 03            876 	cjne	r7,#0x04,00174$
   0897 02 09 2B            877 	ljmp	00107$
   089A                     878 00174$:
   089A BF 05 03            879 	cjne	r7,#0x05,00175$
   089D 02 09 41            880 	ljmp	00108$
   08A0                     881 00175$:
   08A0 BF 21 03            882 	cjne	r7,#0x21,00176$
   08A3 02 09 7A            883 	ljmp	00115$
   08A6                     884 00176$:
   08A6 BF 22 03            885 	cjne	r7,#0x22,00177$
   08A9 02 09 90            886 	ljmp	00116$
   08AC                     887 00177$:
   08AC 02 09 A1            888 	ljmp	00117$
                    022A    889 	C$F3xx_USB0_Standard_Requests.c$361$2$61 ==.
                            890 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:361: case DSC_DEVICE:                 // size accordingly
   08AF                     891 00101$:
                    022A    892 	C$F3xx_USB0_Standard_Requests.c$362$2$61 ==.
                            893 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:362: DATAPTR = (unsigned char*) &DEVICEDESC;
   08AF 75 15 F9            894 	mov	_DATAPTR,#_DEVICEDESC
   08B2 75 16 0C            895 	mov	(_DATAPTR + 1),#(_DEVICEDESC >> 8)
   08B5 75 17 80            896 	mov	(_DATAPTR + 2),#0x80
                    0233    897 	C$F3xx_USB0_Standard_Requests.c$363$2$61 ==.
                            898 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:363: DATASIZE = DEVICEDESC.bLength;
   08B8 90 0C F9            899 	mov	dptr,#_DEVICEDESC
   08BB E4                  900 	clr	a
   08BC 93                  901 	movc	a,@a+dptr
   08BD FF                  902 	mov	r7,a
   08BE 8F 11               903 	mov	_DATASIZE,r7
   08C0 75 12 00            904 	mov	(_DATASIZE + 1),#0x00
                    023E    905 	C$F3xx_USB0_Standard_Requests.c$364$2$61 ==.
                            906 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:364: break;
   08C3 02 09 A4            907 	ljmp	00118$
                    0241    908 	C$F3xx_USB0_Standard_Requests.c$366$2$61 ==.
                            909 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:366: case DSC_CONFIG:
   08C6                     910 00102$:
                    0241    911 	C$F3xx_USB0_Standard_Requests.c$367$2$61 ==.
                            912 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:367: DATAPTR = (unsigned char*) &ConfigDesc;
   08C6 75 15 0B            913 	mov	_DATAPTR,#_HIDCONFIGDESC
   08C9 75 16 0D            914 	mov	(_DATAPTR + 1),#(_HIDCONFIGDESC >> 8)
   08CC 75 17 80            915 	mov	(_DATAPTR + 2),#0x80
                    024A    916 	C$F3xx_USB0_Standard_Requests.c$371$2$61 ==.
                            917 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:371: DATASIZE = ConfigDesc.wTotalLength.U8[MSB] +
   08CF 90 0D 0E            918 	mov	dptr,#(_HIDCONFIGDESC + 0x0003)
   08D2 E4                  919 	clr	a
   08D3 93                  920 	movc	a,@a+dptr
   08D4 FF                  921 	mov	r7,a
   08D5 7E 00               922 	mov	r6,#0x00
                    0252    923 	C$F3xx_USB0_Standard_Requests.c$372$2$61 ==.
                            924 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:372: 256*ConfigDesc.wTotalLength.U8[LSB];
   08D7 90 0D 0D            925 	mov	dptr,#(_HIDCONFIGDESC + 0x0002)
   08DA E4                  926 	clr	a
   08DB 93                  927 	movc	a,@a+dptr
   08DC FC                  928 	mov	r4,a
   08DD E4                  929 	clr	a
   08DE FD                  930 	mov	r5,a
   08DF 2F                  931 	add	a,r7
   08E0 F5 11               932 	mov	_DATASIZE,a
   08E2 EC                  933 	mov	a,r4
   08E3 3E                  934 	addc	a,r6
   08E4 F5 12               935 	mov	(_DATASIZE + 1),a
                    0261    936 	C$F3xx_USB0_Standard_Requests.c$373$2$61 ==.
                            937 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:373: break;
   08E6 02 09 A4            938 	ljmp	00118$
                    0264    939 	C$F3xx_USB0_Standard_Requests.c$375$2$61 ==.
                            940 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:375: case DSC_STRING:
   08E9                     941 00103$:
                    0264    942 	C$F3xx_USB0_Standard_Requests.c$378$2$61 ==.
                            943 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:378: if (SETUP.wValue.U8[LSB] > 2)   // If asking for string that's N/A
   08E9 E5 0B               944 	mov	a,(_SETUP + 0x0002)
   08EB FF                  945 	mov	r7,a
   08EC 24 FD               946 	add	a,#0xff - 0x02
   08EE 50 06               947 	jnc	00105$
                    026B    948 	C$F3xx_USB0_Standard_Requests.c$380$3$62 ==.
                            949 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:380: Force_Stall();
   08F0 12 05 E9            950 	lcall	_Force_Stall
   08F3 02 09 A4            951 	ljmp	00118$
   08F6                     952 00105$:
                    0271    953 	C$F3xx_USB0_Standard_Requests.c$384$3$63 ==.
                            954 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:384: DATAPTR = STRINGDESCTABLE[SETUP.wValue.U8[LSB]];
   08F6 EF                  955 	mov	a,r7
   08F7 75 F0 02            956 	mov	b,#0x02
   08FA A4                  957 	mul	ab
   08FB 24 B0               958 	add	a,#_STRINGDESCTABLE
   08FD F5 82               959 	mov	dpl,a
   08FF 74 0D               960 	mov	a,#(_STRINGDESCTABLE >> 8)
   0901 35 F0               961 	addc	a,b
   0903 F5 83               962 	mov	dph,a
   0905 E4                  963 	clr	a
   0906 93                  964 	movc	a,@a+dptr
   0907 FE                  965 	mov	r6,a
   0908 A3                  966 	inc	dptr
   0909 E4                  967 	clr	a
   090A 93                  968 	movc	a,@a+dptr
   090B FF                  969 	mov	r7,a
   090C 8E 15               970 	mov	_DATAPTR,r6
   090E 8F 16               971 	mov	(_DATAPTR + 1),r7
   0910 75 17 80            972 	mov	(_DATAPTR + 2),#0x80
                    028E    973 	C$F3xx_USB0_Standard_Requests.c$386$3$63 ==.
                            974 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:386: DATASIZE = *DATAPTR;
   0913 AD 15               975 	mov	r5,_DATAPTR
   0915 AE 16               976 	mov	r6,(_DATAPTR + 1)
   0917 AF 17               977 	mov	r7,(_DATAPTR + 2)
   0919 8D 82               978 	mov	dpl,r5
   091B 8E 83               979 	mov	dph,r6
   091D 8F F0               980 	mov	b,r7
   091F 12 0C D5            981 	lcall	__gptrget
   0922 FD                  982 	mov	r5,a
   0923 8D 11               983 	mov	_DATASIZE,r5
   0925 75 12 00            984 	mov	(_DATASIZE + 1),#0x00
                    02A3    985 	C$F3xx_USB0_Standard_Requests.c$388$2$61 ==.
                            986 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:388: break;
   0928 02 09 A4            987 	ljmp	00118$
                    02A6    988 	C$F3xx_USB0_Standard_Requests.c$390$2$61 ==.
                            989 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:390: case DSC_INTERFACE:
   092B                     990 00107$:
                    02A6    991 	C$F3xx_USB0_Standard_Requests.c$391$2$61 ==.
                            992 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:391: DATAPTR = (unsigned char*) &InterfaceDesc;
   092B 75 15 14            993 	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0009)
   092E 75 16 0D            994 	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0009) >> 8)
   0931 75 17 80            995 	mov	(_DATAPTR + 2),#0x80
                    02AF    996 	C$F3xx_USB0_Standard_Requests.c$392$2$61 ==.
                            997 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:392: DATASIZE = InterfaceDesc.bLength;
   0934 90 0D 14            998 	mov	dptr,#(_HIDCONFIGDESC + 0x0009)
   0937 E4                  999 	clr	a
   0938 93                 1000 	movc	a,@a+dptr
   0939 FF                 1001 	mov	r7,a
   093A 8F 11              1002 	mov	_DATASIZE,r7
   093C 75 12 00           1003 	mov	(_DATASIZE + 1),#0x00
                    02BA   1004 	C$F3xx_USB0_Standard_Requests.c$393$2$61 ==.
                           1005 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:393: break;
                    02BA   1006 	C$F3xx_USB0_Standard_Requests.c$395$2$61 ==.
                           1007 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:395: case DSC_ENDPOINT:
   093F 80 63              1008 	sjmp	00118$
   0941                    1009 00108$:
                    02BC   1010 	C$F3xx_USB0_Standard_Requests.c$400$2$61 ==.
                           1011 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:400: if ( (SETUP.wValue.U8[LSB] == IN_EP1) )
   0941 AF 0B              1012 	mov	r7,(_SETUP + 0x0002)
   0943 BF 81 16           1013 	cjne	r7,#0x81,00113$
                    02C1   1014 	C$F3xx_USB0_Standard_Requests.c$402$3$64 ==.
                           1015 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:402: DATAPTR = (unsigned char*) &Endpoint1Desc;
   0946 75 15 26           1016 	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x001b)
   0949 75 16 0D           1017 	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x001b) >> 8)
   094C 75 17 80           1018 	mov	(_DATAPTR + 2),#0x80
                    02CA   1019 	C$F3xx_USB0_Standard_Requests.c$403$3$64 ==.
                           1020 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:403: DATASIZE = Endpoint1Desc.bLength;
   094F 90 0D 26           1021 	mov	dptr,#(_HIDCONFIGDESC + 0x001b)
   0952 E4                 1022 	clr	a
   0953 93                 1023 	movc	a,@a+dptr
   0954 FE                 1024 	mov	r6,a
   0955 8E 11              1025 	mov	_DATASIZE,r6
   0957 75 12 00           1026 	mov	(_DATASIZE + 1),#0x00
   095A 80 48              1027 	sjmp	00118$
   095C                    1028 00113$:
                    02D7   1029 	C$F3xx_USB0_Standard_Requests.c$405$2$61 ==.
                           1030 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:405: else if ( (SETUP.wValue.U8[LSB] == OUT_EP1) )
   095C BF 01 16           1031 	cjne	r7,#0x01,00110$
                    02DA   1032 	C$F3xx_USB0_Standard_Requests.c$407$3$65 ==.
                           1033 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:407: DATAPTR = (unsigned char*) &Endpoint2Desc;
   095F 75 15 2D           1034 	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0022)
   0962 75 16 0D           1035 	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0022) >> 8)
   0965 75 17 80           1036 	mov	(_DATAPTR + 2),#0x80
                    02E3   1037 	C$F3xx_USB0_Standard_Requests.c$408$3$65 ==.
                           1038 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:408: DATASIZE = Endpoint2Desc.bLength;
   0968 90 0D 2D           1039 	mov	dptr,#(_HIDCONFIGDESC + 0x0022)
   096B E4                 1040 	clr	a
   096C 93                 1041 	movc	a,@a+dptr
   096D FF                 1042 	mov	r7,a
   096E 8F 11              1043 	mov	_DATASIZE,r7
   0970 75 12 00           1044 	mov	(_DATASIZE + 1),#0x00
   0973 80 2F              1045 	sjmp	00118$
   0975                    1046 00110$:
                    02F0   1047 	C$F3xx_USB0_Standard_Requests.c$412$3$66 ==.
                           1048 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:412: Force_Stall();
   0975 12 05 E9           1049 	lcall	_Force_Stall
                    02F3   1050 	C$F3xx_USB0_Standard_Requests.c$414$2$61 ==.
                           1051 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:414: break;
                    02F3   1052 	C$F3xx_USB0_Standard_Requests.c$416$2$61 ==.
                           1053 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:416: case DSC_HID:                       // HID Specific (HID class descriptor)
   0978 80 2A              1054 	sjmp	00118$
   097A                    1055 00115$:
                    02F5   1056 	C$F3xx_USB0_Standard_Requests.c$417$2$61 ==.
                           1057 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:417: DATAPTR = (unsigned char*)&HidDesc;
   097A 75 15 1D           1058 	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0012)
   097D 75 16 0D           1059 	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0012) >> 8)
   0980 75 17 80           1060 	mov	(_DATAPTR + 2),#0x80
                    02FE   1061 	C$F3xx_USB0_Standard_Requests.c$418$2$61 ==.
                           1062 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:418: DATASIZE = HidDesc.bLength;
   0983 90 0D 1D           1063 	mov	dptr,#(_HIDCONFIGDESC + 0x0012)
   0986 E4                 1064 	clr	a
   0987 93                 1065 	movc	a,@a+dptr
   0988 FF                 1066 	mov	r7,a
   0989 8F 11              1067 	mov	_DATASIZE,r7
   098B 75 12 00           1068 	mov	(_DATASIZE + 1),#0x00
                    0309   1069 	C$F3xx_USB0_Standard_Requests.c$419$2$61 ==.
                           1070 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:419: break;
                    0309   1071 	C$F3xx_USB0_Standard_Requests.c$421$2$61 ==.
                           1072 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:421: case DSC_HID_REPORT:                // HID Specific (HID report descriptor)
   098E 80 14              1073 	sjmp	00118$
   0990                    1074 00116$:
                    030B   1075 	C$F3xx_USB0_Standard_Requests.c$422$2$61 ==.
                           1076 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:422: DATAPTR = (unsigned char*)&HIDREPORTDESC;
   0990 75 15 34           1077 	mov	_DATAPTR,#_HIDREPORTDESC
   0993 75 16 0D           1078 	mov	(_DATAPTR + 1),#(_HIDREPORTDESC >> 8)
   0996 75 17 80           1079 	mov	(_DATAPTR + 2),#0x80
                    0314   1080 	C$F3xx_USB0_Standard_Requests.c$423$2$61 ==.
                           1081 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:423: DATASIZE = HID_REPORT_DESCRIPTOR_SIZE;
   0999 75 11 20           1082 	mov	_DATASIZE,#0x20
   099C 75 12 00           1083 	mov	(_DATASIZE + 1),#0x00
                    031A   1084 	C$F3xx_USB0_Standard_Requests.c$424$2$61 ==.
                           1085 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:424: break;
                    031A   1086 	C$F3xx_USB0_Standard_Requests.c$426$2$61 ==.
                           1087 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:426: default:
   099F 80 03              1088 	sjmp	00118$
   09A1                    1089 00117$:
                    031C   1090 	C$F3xx_USB0_Standard_Requests.c$427$2$61 ==.
                           1091 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:427: Force_Stall ();               // Send Stall if unsupported request
   09A1 12 05 E9           1092 	lcall	_Force_Stall
                    031F   1093 	C$F3xx_USB0_Standard_Requests.c$429$1$60 ==.
                           1094 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:429: }
   09A4                    1095 00118$:
                    031F   1096 	C$F3xx_USB0_Standard_Requests.c$432$1$60 ==.
                           1097 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:432: if (SETUP.wValue.U8[MSB] == DSC_DEVICE ||
   09A4 AF 0C              1098 	mov	r7,(_SETUP + 0x0003)
   09A6 BF 01 02           1099 	cjne	r7,#0x01,00183$
   09A9 80 12              1100 	sjmp	00122$
   09AB                    1101 00183$:
                    0326   1102 	C$F3xx_USB0_Standard_Requests.c$433$1$60 ==.
                           1103 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:433: SETUP.wValue.U8[MSB] == DSC_CONFIG     ||
   09AB BF 02 02           1104 	cjne	r7,#0x02,00184$
   09AE 80 0D              1105 	sjmp	00122$
   09B0                    1106 00184$:
                    032B   1107 	C$F3xx_USB0_Standard_Requests.c$434$1$60 ==.
                           1108 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:434: SETUP.wValue.U8[MSB] == DSC_STRING     ||
   09B0 BF 03 02           1109 	cjne	r7,#0x03,00185$
   09B3 80 08              1110 	sjmp	00122$
   09B5                    1111 00185$:
                    0330   1112 	C$F3xx_USB0_Standard_Requests.c$435$1$60 ==.
                           1113 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:435: SETUP.wValue.U8[MSB] == DSC_INTERFACE  ||
   09B5 BF 04 02           1114 	cjne	r7,#0x04,00186$
   09B8 80 03              1115 	sjmp	00122$
   09BA                    1116 00186$:
                    0335   1117 	C$F3xx_USB0_Standard_Requests.c$436$1$60 ==.
                           1118 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:436: SETUP.wValue.U8[MSB] == DSC_ENDPOINT)
   09BA BF 05 17           1119 	cjne	r7,#0x05,00123$
   09BD                    1120 00122$:
                    0338   1121 	C$F3xx_USB0_Standard_Requests.c$438$2$67 ==.
                           1122 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:438: if ((SETUP.wLength.U8[LSB] < DATASIZE) &&
   09BD AE 0F              1123 	mov	r6,(_SETUP + 0x0006)
   09BF 7F 00              1124 	mov	r7,#0x00
   09C1 C3                 1125 	clr	c
   09C2 EE                 1126 	mov	a,r6
   09C3 95 11              1127 	subb	a,_DATASIZE
   09C5 EF                 1128 	mov	a,r7
   09C6 95 12              1129 	subb	a,(_DATASIZE + 1)
   09C8 50 0A              1130 	jnc	00123$
                    0345   1131 	C$F3xx_USB0_Standard_Requests.c$439$2$67 ==.
                           1132 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:439: (SETUP.wLength.U8[MSB] == 0))
   09CA E5 10              1133 	mov	a,(_SETUP + 0x0007)
   09CC 70 06              1134 	jnz	00123$
                    0349   1135 	C$F3xx_USB0_Standard_Requests.c$441$3$68 ==.
                           1136 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:441: DATASIZE = SETUP.wLength.U16;   // Send only requested amount of data
   09CE 85 0F 11           1137 	mov	_DATASIZE,(_SETUP + 0x0006)
   09D1 85 10 12           1138 	mov	(_DATASIZE + 1),((_SETUP + 0x0006) + 1)
   09D4                    1139 00123$:
                    034F   1140 	C$F3xx_USB0_Standard_Requests.c$444$1$60 ==.
                           1141 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:444: if (EP_STATUS[0] != EP_STALL)       // Make sure endpoint not in stall mode
   09D4 74 04              1142 	mov	a,#0x04
   09D6 B5 18 02           1143 	cjne	a,_EP_STATUS,00191$
   09D9 80 13              1144 	sjmp	00133$
   09DB                    1145 00191$:
                    0356   1146 	C$F3xx_USB0_Standard_Requests.c$446$2$69 ==.
                           1147 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:446: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);// Service SETUP Packet
   09DB                    1148 00128$:
   09DB E5 96              1149 	mov	a,_USB0ADR
   09DD 20 E7 FB           1150 	jb	acc.7,00128$
   09E0 75 96 11           1151 	mov	_USB0ADR,#0x11
   09E3 75 97 40           1152 	mov	_USB0DAT,#0x40
                    0361   1153 	C$F3xx_USB0_Standard_Requests.c$447$2$69 ==.
                           1154 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:447: EP_STATUS[0] = EP_TX;             // Put endpoint in transmit mode
   09E6 75 18 01           1155 	mov	_EP_STATUS,#0x01
                    0364   1156 	C$F3xx_USB0_Standard_Requests.c$448$2$69 ==.
                           1157 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:448: DATASENT = 0;                     // Reset Data Sent counter
   09E9 E4                 1158 	clr	a
   09EA F5 13              1159 	mov	_DATASENT,a
   09EC F5 14              1160 	mov	(_DATASENT + 1),a
   09EE                    1161 00133$:
                    0369   1162 	C$F3xx_USB0_Standard_Requests.c$450$1$60 ==.
                    0369   1163 	XG$Get_Descriptor$0$0 ==.
   09EE 22                 1164 	ret
                           1165 ;------------------------------------------------------------
                           1166 ;Allocation info for local variables in function 'Get_Configuration'
                           1167 ;------------------------------------------------------------
                    036A   1168 	G$Get_Configuration$0$0 ==.
                    036A   1169 	C$F3xx_USB0_Standard_Requests.c$462$1$60 ==.
                           1170 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:462: void Get_Configuration (void)          // This routine returns current
                           1171 ;	-----------------------------------------
                           1172 ;	 function Get_Configuration
                           1173 ;	-----------------------------------------
   09EF                    1174 _Get_Configuration:
                    036A   1175 	C$F3xx_USB0_Standard_Requests.c$465$1$71 ==.
                           1176 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:465: if ( (SETUP.bmRequestType != OUT_DEVICE)    ||
   09EF 74 80              1177 	mov	a,#0x80
   09F1 B5 09 1B           1178 	cjne	a,_SETUP,00105$
                    036F   1179 	C$F3xx_USB0_Standard_Requests.c$467$1$71 ==.
                           1180 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:467: SETUP.wValue.U8[MSB]  || SETUP.wValue.U8[LSB]||
   09F4 E5 0C              1181 	mov	a,(_SETUP + 0x0003)
   09F6 70 17              1182 	jnz	00105$
   09F8 E5 0B              1183 	mov	a,(_SETUP + 0x0002)
   09FA 70 13              1184 	jnz	00105$
                    0377   1185 	C$F3xx_USB0_Standard_Requests.c$469$1$71 ==.
                           1186 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:469: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
   09FC E5 0E              1187 	mov	a,(_SETUP + 0x0005)
   09FE 70 0F              1188 	jnz	00105$
   0A00 E5 0D              1189 	mov	a,(_SETUP + 0x0004)
   0A02 70 0B              1190 	jnz	00105$
                    037F   1191 	C$F3xx_USB0_Standard_Requests.c$471$1$71 ==.
                           1192 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:471: SETUP.wLength.U8[MSB] || (SETUP.wLength.U8[LSB] != 1) )
   0A04 E5 10              1193 	mov	a,(_SETUP + 0x0007)
   0A06 70 07              1194 	jnz	00105$
   0A08 74 01              1195 	mov	a,#0x01
   0A0A B5 0F 02           1196 	cjne	a,(_SETUP + 0x0006),00148$
   0A0D 80 05              1197 	sjmp	00106$
   0A0F                    1198 00148$:
   0A0F                    1199 00105$:
                    038A   1200 	C$F3xx_USB0_Standard_Requests.c$473$2$72 ==.
                           1201 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:473: Force_Stall ();                  // Otherwise send a stall to host
   0A0F 12 05 E9           1202 	lcall	_Force_Stall
   0A12 80 28              1203 	sjmp	00107$
   0A14                    1204 00106$:
                    038F   1205 	C$F3xx_USB0_Standard_Requests.c$478$2$73 ==.
                           1206 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:478: if (USB0_STATE == DEV_CONFIGURED)// If the device is configured, then
   0A14 74 04              1207 	mov	a,#0x04
   0A16 B5 08 0F           1208 	cjne	a,_USB0_STATE,00102$
                    0394   1209 	C$F3xx_USB0_Standard_Requests.c$481$3$74 ==.
                           1210 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:481: DATAPTR = (unsigned char*)&ONES_PACKET;
   0A19 75 15 F5           1211 	mov	_DATAPTR,#_ONES_PACKET
   0A1C 75 16 0C           1212 	mov	(_DATAPTR + 1),#(_ONES_PACKET >> 8)
   0A1F 75 17 80           1213 	mov	(_DATAPTR + 2),#0x80
                    039D   1214 	C$F3xx_USB0_Standard_Requests.c$482$3$74 ==.
                           1215 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:482: DATASIZE = 1;
   0A22 75 11 01           1216 	mov	_DATASIZE,#0x01
   0A25 75 12 00           1217 	mov	(_DATASIZE + 1),#0x00
   0A28                    1218 00102$:
                    03A3   1219 	C$F3xx_USB0_Standard_Requests.c$484$2$73 ==.
                           1220 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:484: if (USB0_STATE == DEV_ADDRESS)   // If the device is in address state, it
   0A28 74 03              1221 	mov	a,#0x03
   0A2A B5 08 0F           1222 	cjne	a,_USB0_STATE,00107$
                    03A8   1223 	C$F3xx_USB0_Standard_Requests.c$486$3$75 ==.
                           1224 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:486: DATAPTR = (unsigned char*)&ZERO_PACKET;
   0A2D 75 15 F7           1225 	mov	_DATAPTR,#_ZERO_PACKET
   0A30 75 16 0C           1226 	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
   0A33 75 17 80           1227 	mov	(_DATAPTR + 2),#0x80
                    03B1   1228 	C$F3xx_USB0_Standard_Requests.c$487$3$75 ==.
                           1229 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:487: DATASIZE = 1;
   0A36 75 11 01           1230 	mov	_DATASIZE,#0x01
   0A39 75 12 00           1231 	mov	(_DATASIZE + 1),#0x00
   0A3C                    1232 00107$:
                    03B7   1233 	C$F3xx_USB0_Standard_Requests.c$490$1$71 ==.
                           1234 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:490: if (EP_STATUS[0] != EP_STALL)
   0A3C 74 04              1235 	mov	a,#0x04
   0A3E B5 18 02           1236 	cjne	a,_EP_STATUS,00153$
   0A41 80 13              1237 	sjmp	00119$
   0A43                    1238 00153$:
                    03BE   1239 	C$F3xx_USB0_Standard_Requests.c$493$2$76 ==.
                           1240 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:493: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
   0A43                    1241 00114$:
   0A43 E5 96              1242 	mov	a,_USB0ADR
   0A45 20 E7 FB           1243 	jb	acc.7,00114$
   0A48 75 96 11           1244 	mov	_USB0ADR,#0x11
   0A4B 75 97 40           1245 	mov	_USB0DAT,#0x40
                    03C9   1246 	C$F3xx_USB0_Standard_Requests.c$494$2$76 ==.
                           1247 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:494: EP_STATUS[0] = EP_TX;            // Put endpoint into transmit mode
   0A4E 75 18 01           1248 	mov	_EP_STATUS,#0x01
                    03CC   1249 	C$F3xx_USB0_Standard_Requests.c$495$2$76 ==.
                           1250 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:495: DATASENT = 0;                    // Reset Data Sent counter to zero
   0A51 E4                 1251 	clr	a
   0A52 F5 13              1252 	mov	_DATASENT,a
   0A54 F5 14              1253 	mov	(_DATASENT + 1),a
   0A56                    1254 00119$:
                    03D1   1255 	C$F3xx_USB0_Standard_Requests.c$497$1$71 ==.
                    03D1   1256 	XG$Get_Configuration$0$0 ==.
   0A56 22                 1257 	ret
                           1258 ;------------------------------------------------------------
                           1259 ;Allocation info for local variables in function 'Set_Configuration'
                           1260 ;------------------------------------------------------------
                    03D2   1261 	G$Set_Configuration$0$0 ==.
                    03D2   1262 	C$F3xx_USB0_Standard_Requests.c$509$1$71 ==.
                           1263 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:509: void Set_Configuration (void)          // This routine allows host to change
                           1264 ;	-----------------------------------------
                           1265 ;	 function Set_Configuration
                           1266 ;	-----------------------------------------
   0A57                    1267 _Set_Configuration:
                    03D2   1268 	C$F3xx_USB0_Standard_Requests.c$513$1$78 ==.
                           1269 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:513: if ((USB0_STATE == DEV_DEFAULT) ||
   0A57 74 02              1270 	mov	a,#0x02
   0A59 B5 08 02           1271 	cjne	a,_USB0_STATE,00162$
   0A5C 80 1F              1272 	sjmp	00113$
   0A5E                    1273 00162$:
                    03D9   1274 	C$F3xx_USB0_Standard_Requests.c$515$1$78 ==.
                           1275 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:515: (SETUP.bmRequestType != IN_DEVICE) ||
   0A5E E5 09              1276 	mov	a,_SETUP
   0A60 70 1B              1277 	jnz	00113$
                    03DD   1278 	C$F3xx_USB0_Standard_Requests.c$517$1$78 ==.
                           1279 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:517: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
   0A62 E5 0E              1280 	mov	a,(_SETUP + 0x0005)
   0A64 70 17              1281 	jnz	00113$
   0A66 E5 0D              1282 	mov	a,(_SETUP + 0x0004)
   0A68 70 13              1283 	jnz	00113$
                    03E5   1284 	C$F3xx_USB0_Standard_Requests.c$518$1$78 ==.
                           1285 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:518: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB] ||
   0A6A E5 10              1286 	mov	a,(_SETUP + 0x0007)
   0A6C 70 0F              1287 	jnz	00113$
   0A6E E5 0F              1288 	mov	a,(_SETUP + 0x0006)
   0A70 70 0B              1289 	jnz	00113$
                    03ED   1290 	C$F3xx_USB0_Standard_Requests.c$519$1$78 ==.
                           1291 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:519: SETUP.wValue.U8[MSB]  || (SETUP.wValue.U8[LSB] > 1))
   0A72 E5 0C              1292 	mov	a,(_SETUP + 0x0003)
   0A74 70 07              1293 	jnz	00113$
   0A76 E5 0B              1294 	mov	a,(_SETUP + 0x0002)
   0A78 FF                 1295 	mov	r7,a
   0A79 24 FE              1296 	add	a,#0xff - 0x01
   0A7B 50 05              1297 	jnc	00114$
   0A7D                    1298 00113$:
                    03F8   1299 	C$F3xx_USB0_Standard_Requests.c$522$2$79 ==.
                           1300 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:522: Force_Stall ();                  // Send stall if SETUP data is invalid
   0A7D 12 05 E9           1301 	lcall	_Force_Stall
   0A80 80 35              1302 	sjmp	00115$
   0A82                    1303 00114$:
                    03FD   1304 	C$F3xx_USB0_Standard_Requests.c$527$2$80 ==.
                           1305 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:527: if (SETUP.wValue.U8[LSB] > 0)     // Any positive configuration request
   0A82 EF                 1306 	mov	a,r7
   0A83 60 2C              1307 	jz	00111$
                    0400   1308 	C$F3xx_USB0_Standard_Requests.c$530$3$81 ==.
                           1309 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:530: USB0_STATE = DEV_CONFIGURED;
   0A85 75 08 04           1310 	mov	_USB0_STATE,#0x04
                    0403   1311 	C$F3xx_USB0_Standard_Requests.c$531$3$81 ==.
                           1312 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:531: EP_STATUS[1] = EP_IDLE;       // Set endpoint status to idle (enabled)
   0A88 75 19 00           1313 	mov	(_EP_STATUS + 0x0001),#0x00
                    0406   1314 	C$F3xx_USB0_Standard_Requests.c$533$3$81 ==.
                           1315 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:533: POLL_WRITE_BYTE (INDEX, 1);   // Change index to endpoint 1
   0A8B                    1316 00101$:
   0A8B E5 96              1317 	mov	a,_USB0ADR
   0A8D 20 E7 FB           1318 	jb	acc.7,00101$
   0A90 75 96 0E           1319 	mov	_USB0ADR,#0x0E
   0A93 75 97 01           1320 	mov	_USB0DAT,#0x01
                    0411   1321 	C$F3xx_USB0_Standard_Requests.c$535$3$81 ==.
                           1322 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:535: POLL_WRITE_BYTE (EINCSR2, rbInSPLIT);
   0A96                    1323 00104$:
   0A96 E5 96              1324 	mov	a,_USB0ADR
   0A98 20 E7 FB           1325 	jb	acc.7,00104$
   0A9B 75 96 12           1326 	mov	_USB0ADR,#0x12
   0A9E 75 97 04           1327 	mov	_USB0DAT,#0x04
                    041C   1328 	C$F3xx_USB0_Standard_Requests.c$536$3$81 ==.
                           1329 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:536: POLL_WRITE_BYTE (INDEX, 0);   // Set index back to endpoint 0
   0AA1                    1330 00107$:
   0AA1 E5 96              1331 	mov	a,_USB0ADR
   0AA3 20 E7 FB           1332 	jb	acc.7,00107$
   0AA6 75 96 0E           1333 	mov	_USB0ADR,#0x0E
   0AA9 75 97 00           1334 	mov	_USB0DAT,#0x00
                    0427   1335 	C$F3xx_USB0_Standard_Requests.c$538$3$81 ==.
                           1336 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:538: Handle_In1();
   0AAC 12 04 A2           1337 	lcall	_Handle_In1
   0AAF 80 06              1338 	sjmp	00115$
   0AB1                    1339 00111$:
                    042C   1340 	C$F3xx_USB0_Standard_Requests.c$542$3$82 ==.
                           1341 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:542: USB0_STATE = DEV_ADDRESS;     // Unconfigures device by setting state
   0AB1 75 08 03           1342 	mov	_USB0_STATE,#0x03
                    042F   1343 	C$F3xx_USB0_Standard_Requests.c$543$3$82 ==.
                           1344 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:543: EP_STATUS[1] = EP_HALT;       // to address, and changing endpoint
   0AB4 75 19 03           1345 	mov	(_EP_STATUS + 0x0001),#0x03
   0AB7                    1346 00115$:
                    0432   1347 	C$F3xx_USB0_Standard_Requests.c$547$1$78 ==.
                           1348 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:547: if (EP_STATUS[0] != EP_STALL)
   0AB7 74 04              1349 	mov	a,#0x04
   0AB9 B5 18 02           1350 	cjne	a,_EP_STATUS,00174$
   0ABC 80 0B              1351 	sjmp	00128$
   0ABE                    1352 00174$:
                    0439   1353 	C$F3xx_USB0_Standard_Requests.c$549$2$83 ==.
                           1354 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:549: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   0ABE                    1355 00123$:
   0ABE E5 96              1356 	mov	a,_USB0ADR
   0AC0 20 E7 FB           1357 	jb	acc.7,00123$
   0AC3 75 96 11           1358 	mov	_USB0ADR,#0x11
   0AC6 75 97 48           1359 	mov	_USB0DAT,#0x48
   0AC9                    1360 00128$:
                    0444   1361 	C$F3xx_USB0_Standard_Requests.c$553$1$78 ==.
                    0444   1362 	XG$Set_Configuration$0$0 ==.
   0AC9 22                 1363 	ret
                           1364 ;------------------------------------------------------------
                           1365 ;Allocation info for local variables in function 'Get_Interface'
                           1366 ;------------------------------------------------------------
                    0445   1367 	G$Get_Interface$0$0 ==.
                    0445   1368 	C$F3xx_USB0_Standard_Requests.c$565$1$78 ==.
                           1369 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:565: void Get_Interface (void)              // This routine returns 0x00, since
                           1370 ;	-----------------------------------------
                           1371 ;	 function Get_Interface
                           1372 ;	-----------------------------------------
   0ACA                    1373 _Get_Interface:
                    0445   1374 	C$F3xx_USB0_Standard_Requests.c$570$1$85 ==.
                           1375 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:570: if ((USB0_STATE != DEV_CONFIGURED) ||
   0ACA 74 04              1376 	mov	a,#0x04
   0ACC B5 08 20           1377 	cjne	a,_USB0_STATE,00101$
                    044A   1378 	C$F3xx_USB0_Standard_Requests.c$572$1$85 ==.
                           1379 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:572: (SETUP.bmRequestType != OUT_INTERFACE) ||
   0ACF 74 81              1380 	mov	a,#0x81
   0AD1 B5 09 1B           1381 	cjne	a,_SETUP,00101$
                    044F   1382 	C$F3xx_USB0_Standard_Requests.c$574$1$85 ==.
                           1383 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:574: SETUP.wValue.U8[MSB]  ||SETUP.wValue.U8[LSB] ||
   0AD4 E5 0C              1384 	mov	a,(_SETUP + 0x0003)
   0AD6 70 17              1385 	jnz	00101$
   0AD8 E5 0B              1386 	mov	a,(_SETUP + 0x0002)
   0ADA 70 13              1387 	jnz	00101$
                    0457   1388 	C$F3xx_USB0_Standard_Requests.c$576$1$85 ==.
                           1389 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:576: SETUP.wIndex.U8[MSB]  ||SETUP.wIndex.U8[LSB] ||
   0ADC E5 0E              1390 	mov	a,(_SETUP + 0x0005)
   0ADE 70 0F              1391 	jnz	00101$
   0AE0 E5 0D              1392 	mov	a,(_SETUP + 0x0004)
   0AE2 70 0B              1393 	jnz	00101$
                    045F   1394 	C$F3xx_USB0_Standard_Requests.c$577$1$85 ==.
                           1395 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:577: SETUP.wLength.U8[MSB] ||(SETUP.wLength.U8[LSB] != 1))
   0AE4 E5 10              1396 	mov	a,(_SETUP + 0x0007)
   0AE6 70 07              1397 	jnz	00101$
   0AE8 74 01              1398 	mov	a,#0x01
   0AEA B5 0F 02           1399 	cjne	a,(_SETUP + 0x0006),00145$
   0AED 80 05              1400 	sjmp	00102$
   0AEF                    1401 00145$:
   0AEF                    1402 00101$:
                    046A   1403 	C$F3xx_USB0_Standard_Requests.c$579$2$86 ==.
                           1404 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:579: Force_Stall ();                  // Then return stall due to invalid
   0AEF 12 05 E9           1405 	lcall	_Force_Stall
   0AF2 80 0F              1406 	sjmp	00103$
   0AF4                    1407 00102$:
                    046F   1408 	C$F3xx_USB0_Standard_Requests.c$586$2$87 ==.
                           1409 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:586: DATAPTR = (unsigned char*)&ZERO_PACKET;
   0AF4 75 15 F7           1410 	mov	_DATAPTR,#_ZERO_PACKET
   0AF7 75 16 0C           1411 	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
   0AFA 75 17 80           1412 	mov	(_DATAPTR + 2),#0x80
                    0478   1413 	C$F3xx_USB0_Standard_Requests.c$587$2$87 ==.
                           1414 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:587: DATASIZE = 1;
   0AFD 75 11 01           1415 	mov	_DATASIZE,#0x01
   0B00 75 12 00           1416 	mov	(_DATASIZE + 1),#0x00
   0B03                    1417 00103$:
                    047E   1418 	C$F3xx_USB0_Standard_Requests.c$589$1$85 ==.
                           1419 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:589: if (EP_STATUS[0] != EP_STALL)
   0B03 74 04              1420 	mov	a,#0x04
   0B05 B5 18 02           1421 	cjne	a,_EP_STATUS,00146$
   0B08 80 13              1422 	sjmp	00116$
   0B0A                    1423 00146$:
                    0485   1424 	C$F3xx_USB0_Standard_Requests.c$593$2$88 ==.
                           1425 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:593: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
   0B0A                    1426 00111$:
   0B0A E5 96              1427 	mov	a,_USB0ADR
   0B0C 20 E7 FB           1428 	jb	acc.7,00111$
   0B0F 75 96 11           1429 	mov	_USB0ADR,#0x11
   0B12 75 97 40           1430 	mov	_USB0DAT,#0x40
                    0490   1431 	C$F3xx_USB0_Standard_Requests.c$594$2$88 ==.
                           1432 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:594: EP_STATUS[0] = EP_TX;
   0B15 75 18 01           1433 	mov	_EP_STATUS,#0x01
                    0493   1434 	C$F3xx_USB0_Standard_Requests.c$595$2$88 ==.
                           1435 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:595: DATASENT = 0;
   0B18 E4                 1436 	clr	a
   0B19 F5 13              1437 	mov	_DATASENT,a
   0B1B F5 14              1438 	mov	(_DATASENT + 1),a
   0B1D                    1439 00116$:
                    0498   1440 	C$F3xx_USB0_Standard_Requests.c$597$1$85 ==.
                    0498   1441 	XG$Get_Interface$0$0 ==.
   0B1D 22                 1442 	ret
                           1443 ;------------------------------------------------------------
                           1444 ;Allocation info for local variables in function 'Set_Interface'
                           1445 ;------------------------------------------------------------
                    0499   1446 	G$Set_Interface$0$0 ==.
                    0499   1447 	C$F3xx_USB0_Standard_Requests.c$609$1$85 ==.
                           1448 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:609: void Set_Interface (void)
                           1449 ;	-----------------------------------------
                           1450 ;	 function Set_Interface
                           1451 ;	-----------------------------------------
   0B1E                    1452 _Set_Interface:
                    0499   1453 	C$F3xx_USB0_Standard_Requests.c$612$1$90 ==.
                           1454 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:612: if ((SETUP.bmRequestType != IN_INTERFACE)  ||
   0B1E 74 01              1455 	mov	a,#0x01
   0B20 B5 09 18           1456 	cjne	a,_SETUP,00101$
                    049E   1457 	C$F3xx_USB0_Standard_Requests.c$614$1$90 ==.
                           1458 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:614: SETUP.wLength.U8[MSB] ||SETUP.wLength.U8[LSB]||
   0B23 E5 10              1459 	mov	a,(_SETUP + 0x0007)
   0B25 70 14              1460 	jnz	00101$
   0B27 E5 0F              1461 	mov	a,(_SETUP + 0x0006)
   0B29 70 10              1462 	jnz	00101$
                    04A6   1463 	C$F3xx_USB0_Standard_Requests.c$615$1$90 ==.
                           1464 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:615: SETUP.wValue.U8[MSB]  ||SETUP.wValue.U8[LSB] ||
   0B2B E5 0C              1465 	mov	a,(_SETUP + 0x0003)
   0B2D 70 0C              1466 	jnz	00101$
   0B2F E5 0B              1467 	mov	a,(_SETUP + 0x0002)
   0B31 70 08              1468 	jnz	00101$
                    04AE   1469 	C$F3xx_USB0_Standard_Requests.c$616$1$90 ==.
                           1470 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:616: SETUP.wIndex.U8[MSB]  ||SETUP.wIndex.U8[LSB])
   0B33 E5 0E              1471 	mov	a,(_SETUP + 0x0005)
   0B35 70 04              1472 	jnz	00101$
   0B37 E5 0D              1473 	mov	a,(_SETUP + 0x0004)
   0B39 60 03              1474 	jz	00102$
   0B3B                    1475 00101$:
                    04B6   1476 	C$F3xx_USB0_Standard_Requests.c$618$2$91 ==.
                           1477 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:618: Force_Stall ();                  // Othewise send a stall to host
   0B3B 12 05 E9           1478 	lcall	_Force_Stall
   0B3E                    1479 00102$:
                    04B9   1480 	C$F3xx_USB0_Standard_Requests.c$620$1$90 ==.
                           1481 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:620: if (EP_STATUS[0] != EP_STALL)
   0B3E 74 04              1482 	mov	a,#0x04
   0B40 B5 18 02           1483 	cjne	a,_EP_STATUS,00140$
   0B43 80 0B              1484 	sjmp	00114$
   0B45                    1485 00140$:
                    04C0   1486 	C$F3xx_USB0_Standard_Requests.c$622$2$92 ==.
                           1487 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:622: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   0B45                    1488 00109$:
   0B45 E5 96              1489 	mov	a,_USB0ADR
   0B47 20 E7 FB           1490 	jb	acc.7,00109$
   0B4A 75 96 11           1491 	mov	_USB0ADR,#0x11
   0B4D 75 97 48           1492 	mov	_USB0DAT,#0x48
   0B50                    1493 00114$:
                    04CB   1494 	C$F3xx_USB0_Standard_Requests.c$626$1$90 ==.
                    04CB   1495 	XG$Set_Interface$0$0 ==.
   0B50 22                 1496 	ret
                           1497 ;------------------------------------------------------------
                           1498 ;Allocation info for local variables in function 'Get_Idle'
                           1499 ;------------------------------------------------------------
                    04CC   1500 	G$Get_Idle$0$0 ==.
                    04CC   1501 	C$F3xx_USB0_Standard_Requests.c$634$1$90 ==.
                           1502 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:634: void Get_Idle(void) {
                           1503 ;	-----------------------------------------
                           1504 ;	 function Get_Idle
                           1505 ;	-----------------------------------------
   0B51                    1506 _Get_Idle:
                    04CC   1507 	C$F3xx_USB0_Standard_Requests.c$635$1$90 ==.
                           1508 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:635: }
                    04CC   1509 	C$F3xx_USB0_Standard_Requests.c$635$1$90 ==.
                    04CC   1510 	XG$Get_Idle$0$0 ==.
   0B51 22                 1511 	ret
                           1512 ;------------------------------------------------------------
                           1513 ;Allocation info for local variables in function 'Get_Protocol'
                           1514 ;------------------------------------------------------------
                    04CD   1515 	G$Get_Protocol$0$0 ==.
                    04CD   1516 	C$F3xx_USB0_Standard_Requests.c$645$1$90 ==.
                           1517 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:645: void Get_Protocol(void) { }
                           1518 ;	-----------------------------------------
                           1519 ;	 function Get_Protocol
                           1520 ;	-----------------------------------------
   0B52                    1521 _Get_Protocol:
                    04CD   1522 	C$F3xx_USB0_Standard_Requests.c$645$1$90 ==.
                    04CD   1523 	XG$Get_Protocol$0$0 ==.
   0B52 22                 1524 	ret
                           1525 ;------------------------------------------------------------
                           1526 ;Allocation info for local variables in function 'Set_Protocol'
                           1527 ;------------------------------------------------------------
                    04CE   1528 	G$Set_Protocol$0$0 ==.
                    04CE   1529 	C$F3xx_USB0_Standard_Requests.c$653$1$90 ==.
                           1530 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:653: void Set_Protocol (void) { }
                           1531 ;	-----------------------------------------
                           1532 ;	 function Set_Protocol
                           1533 ;	-----------------------------------------
   0B53                    1534 _Set_Protocol:
                    04CE   1535 	C$F3xx_USB0_Standard_Requests.c$653$1$90 ==.
                    04CE   1536 	XG$Set_Protocol$0$0 ==.
   0B53 22                 1537 	ret
                           1538 ;------------------------------------------------------------
                           1539 ;Allocation info for local variables in function 'Set_Idle'
                           1540 ;------------------------------------------------------------
                    04CF   1541 	G$Set_Idle$0$0 ==.
                    04CF   1542 	C$F3xx_USB0_Standard_Requests.c$666$1$90 ==.
                           1543 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:666: void Set_Idle (void)
                           1544 ;	-----------------------------------------
                           1545 ;	 function Set_Idle
                           1546 ;	-----------------------------------------
   0B54                    1547 _Set_Idle:
                    04CF   1548 	C$F3xx_USB0_Standard_Requests.c$669$1$100 ==.
                           1549 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:669: if (EP_STATUS[0] != EP_STALL)
   0B54 74 04              1550 	mov	a,#0x04
   0B56 B5 18 02           1551 	cjne	a,_EP_STATUS,00112$
   0B59 80 0B              1552 	sjmp	00106$
   0B5B                    1553 00112$:
                    04D6   1554 	C$F3xx_USB0_Standard_Requests.c$672$2$101 ==.
                           1555 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:672: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
   0B5B                    1556 00101$:
   0B5B E5 96              1557 	mov	a,_USB0ADR
   0B5D 20 E7 FB           1558 	jb	acc.7,00101$
   0B60 75 96 11           1559 	mov	_USB0ADR,#0x11
   0B63 75 97 48           1560 	mov	_USB0DAT,#0x48
   0B66                    1561 00106$:
                    04E1   1562 	C$F3xx_USB0_Standard_Requests.c$675$1$100 ==.
                    04E1   1563 	XG$Set_Idle$0$0 ==.
   0B66 22                 1564 	ret
                           1565 ;------------------------------------------------------------
                           1566 ;Allocation info for local variables in function 'Get_Report'
                           1567 ;------------------------------------------------------------
                    04E2   1568 	G$Get_Report$0$0 ==.
                    04E2   1569 	C$F3xx_USB0_Standard_Requests.c$689$1$100 ==.
                           1570 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:689: void Get_Report (void)
                           1571 ;	-----------------------------------------
                           1572 ;	 function Get_Report
                           1573 ;	-----------------------------------------
   0B67                    1574 _Get_Report:
                    04E2   1575 	C$F3xx_USB0_Standard_Requests.c$692$1$103 ==.
                           1576 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:692: ReportHandler_IN_ISR(SETUP.wValue.U8[LSB]);
   0B67 85 0B 82           1577 	mov	dpl,(_SETUP + 0x0002)
   0B6A 12 0B E4           1578 	lcall	_ReportHandler_IN_ISR
                    04E8   1579 	C$F3xx_USB0_Standard_Requests.c$694$1$103 ==.
                           1580 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:694: DATAPTR = IN_BUFFER.Ptr;
   0B6D 85 23 15           1581 	mov	_DATAPTR,(_IN_BUFFER + 0x0001)
   0B70 85 24 16           1582 	mov	(_DATAPTR + 1),((_IN_BUFFER + 0x0001) + 1)
   0B73 85 25 17           1583 	mov	(_DATAPTR + 2),((_IN_BUFFER + 0x0001) + 2)
                    04F1   1584 	C$F3xx_USB0_Standard_Requests.c$695$1$103 ==.
                           1585 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:695: DATASIZE = IN_BUFFER.Length;
   0B76 85 22 11           1586 	mov	_DATASIZE,_IN_BUFFER
   0B79 75 12 00           1587 	mov	(_DATASIZE + 1),#0x00
                    04F7   1588 	C$F3xx_USB0_Standard_Requests.c$697$1$103 ==.
                           1589 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:697: if (EP_STATUS[0] != EP_STALL)
   0B7C 74 04              1590 	mov	a,#0x04
   0B7E B5 18 02           1591 	cjne	a,_EP_STATUS,00112$
   0B81 80 13              1592 	sjmp	00106$
   0B83                    1593 00112$:
                    04FE   1594 	C$F3xx_USB0_Standard_Requests.c$700$2$104 ==.
                           1595 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:700: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
   0B83                    1596 00101$:
   0B83 E5 96              1597 	mov	a,_USB0ADR
   0B85 20 E7 FB           1598 	jb	acc.7,00101$
   0B88 75 96 11           1599 	mov	_USB0ADR,#0x11
   0B8B 75 97 40           1600 	mov	_USB0DAT,#0x40
                    0509   1601 	C$F3xx_USB0_Standard_Requests.c$701$2$104 ==.
                           1602 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:701: EP_STATUS[0] = EP_TX;            // Endpoint 0 in transmit mode
   0B8E 75 18 01           1603 	mov	_EP_STATUS,#0x01
                    050C   1604 	C$F3xx_USB0_Standard_Requests.c$702$2$104 ==.
                           1605 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:702: DATASENT = 0;                    // Reset DATASENT counter
   0B91 E4                 1606 	clr	a
   0B92 F5 13              1607 	mov	_DATASENT,a
   0B94 F5 14              1608 	mov	(_DATASENT + 1),a
   0B96                    1609 00106$:
                    0511   1610 	C$F3xx_USB0_Standard_Requests.c$704$1$103 ==.
                    0511   1611 	XG$Get_Report$0$0 ==.
   0B96 22                 1612 	ret
                           1613 ;------------------------------------------------------------
                           1614 ;Allocation info for local variables in function 'Set_Report'
                           1615 ;------------------------------------------------------------
                    0512   1616 	G$Set_Report$0$0 ==.
                    0512   1617 	C$F3xx_USB0_Standard_Requests.c$718$1$103 ==.
                           1618 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:718: void Set_Report (void)
                           1619 ;	-----------------------------------------
                           1620 ;	 function Set_Report
                           1621 ;	-----------------------------------------
   0B97                    1622 _Set_Report:
                    0512   1623 	C$F3xx_USB0_Standard_Requests.c$721$1$106 ==.
                           1624 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:721: Setup_OUT_BUFFER ();
   0B97 12 0B E3           1625 	lcall	_Setup_OUT_BUFFER
                    0515   1626 	C$F3xx_USB0_Standard_Requests.c$724$1$106 ==.
                           1627 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:724: DATAPTR = OUT_BUFFER.Ptr;
   0B9A 85 27 15           1628 	mov	_DATAPTR,(_OUT_BUFFER + 0x0001)
   0B9D 85 28 16           1629 	mov	(_DATAPTR + 1),((_OUT_BUFFER + 0x0001) + 1)
   0BA0 85 29 17           1630 	mov	(_DATAPTR + 2),((_OUT_BUFFER + 0x0001) + 2)
                    051E   1631 	C$F3xx_USB0_Standard_Requests.c$725$1$106 ==.
                           1632 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:725: DATASIZE = SETUP.wLength.U16;
   0BA3 85 0F 11           1633 	mov	_DATASIZE,(_SETUP + 0x0006)
   0BA6 85 10 12           1634 	mov	(_DATASIZE + 1),((_SETUP + 0x0006) + 1)
                    0524   1635 	C$F3xx_USB0_Standard_Requests.c$727$1$106 ==.
                           1636 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:727: if (EP_STATUS[0] != EP_STALL)
   0BA9 74 04              1637 	mov	a,#0x04
   0BAB B5 18 02           1638 	cjne	a,_EP_STATUS,00112$
   0BAE 80 13              1639 	sjmp	00106$
   0BB0                    1640 00112$:
                    052B   1641 	C$F3xx_USB0_Standard_Requests.c$730$2$107 ==.
                           1642 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:730: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
   0BB0                    1643 00101$:
   0BB0 E5 96              1644 	mov	a,_USB0ADR
   0BB2 20 E7 FB           1645 	jb	acc.7,00101$
   0BB5 75 96 11           1646 	mov	_USB0ADR,#0x11
   0BB8 75 97 40           1647 	mov	_USB0DAT,#0x40
                    0536   1648 	C$F3xx_USB0_Standard_Requests.c$731$2$107 ==.
                           1649 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:731: EP_STATUS[0] = EP_RX;            // Endpoint 0 in transmit mode
   0BBB 75 18 02           1650 	mov	_EP_STATUS,#0x02
                    0539   1651 	C$F3xx_USB0_Standard_Requests.c$732$2$107 ==.
                           1652 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:732: DATASENT = 0;                    // Reset DATASENT counter
   0BBE E4                 1653 	clr	a
   0BBF F5 13              1654 	mov	_DATASENT,a
   0BC1 F5 14              1655 	mov	(_DATASENT + 1),a
   0BC3                    1656 00106$:
                    053E   1657 	C$F3xx_USB0_Standard_Requests.c$734$1$106 ==.
                    053E   1658 	XG$Set_Report$0$0 ==.
   0BC3 22                 1659 	ret
                           1660 	.area CSEG    (CODE)
                           1661 	.area CONST   (CODE)
                    0000   1662 G$ONES_PACKET$0$0 == .
   0CF5                    1663 _ONES_PACKET:
   0CF5 01                 1664 	.db #0x01	; 1
   0CF6 00                 1665 	.db #0x00	; 0
                    0002   1666 G$ZERO_PACKET$0$0 == .
   0CF7                    1667 _ZERO_PACKET:
   0CF7 00                 1668 	.db #0x00	; 0
   0CF8 00                 1669 	.db #0x00	; 0
                           1670 	.area XINIT   (CODE)
                           1671 	.area CABS    (ABS,CODE)
