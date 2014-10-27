                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F3xx_USB0_Descriptor
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _STRINGDESCTABLE
                             13 	.globl _String2Desc
                             14 	.globl _String1Desc
                             15 	.globl _String0Desc
                             16 	.globl _HIDREPORTDESC
                             17 	.globl _HIDCONFIGDESC
                             18 	.globl _DEVICEDESC
                             19 	.globl _P
                             20 	.globl _F1
                             21 	.globl _OV
                             22 	.globl _RS0
                             23 	.globl _RS1
                             24 	.globl _F0
                             25 	.globl _AC
                             26 	.globl _CY
                             27 	.globl _PX0
                             28 	.globl _PT0
                             29 	.globl _PX1
                             30 	.globl _PT1
                             31 	.globl _PS0
                             32 	.globl _EX0
                             33 	.globl _ET0
                             34 	.globl _EX1
                             35 	.globl _ET1
                             36 	.globl _ES0
                             37 	.globl _EA
                             38 	.globl _RI0
                             39 	.globl _TI0
                             40 	.globl _RBX0
                             41 	.globl _TBX0
                             42 	.globl _REN0
                             43 	.globl _PERR0
                             44 	.globl _OVR0
                             45 	.globl _IT0
                             46 	.globl _IE0
                             47 	.globl _IT1
                             48 	.globl _IE1
                             49 	.globl _TR0
                             50 	.globl _TF0
                             51 	.globl _TR1
                             52 	.globl _TF1
                             53 	.globl __XPAGE
                             54 	.globl _SBRL0
                             55 	.globl _DP
                             56 	.globl _VDM0CN
                             57 	.globl _EIP2
                             58 	.globl _EIP1
                             59 	.globl _B
                             60 	.globl _RSTSRC
                             61 	.globl _EIE2
                             62 	.globl _EIE1
                             63 	.globl _OSCLCN
                             64 	.globl _GPIOCN
                             65 	.globl _ACC
                             66 	.globl _USB0XCN
                             67 	.globl _PSW
                             68 	.globl _REG0CN
                             69 	.globl _CLKMUL
                             70 	.globl _IP
                             71 	.globl _FLKEY
                             72 	.globl _FLSCL
                             73 	.globl _OSCICL
                             74 	.globl _OSCICN
                             75 	.globl _P3
                             76 	.globl _EMI0CN
                             77 	.globl _CLKSEL
                             78 	.globl _IE
                             79 	.globl _P3MDOUT
                             80 	.globl _P2MDOUT
                             81 	.globl _P0MDOUT
                             82 	.globl _P2
                             83 	.globl _SMOD0
                             84 	.globl _SBUF0
                             85 	.globl _SCON0
                             86 	.globl _USB0DAT
                             87 	.globl _USB0ADR
                             88 	.globl _SBRLH0
                             89 	.globl _SBRLL0
                             90 	.globl _SBCON0
                             91 	.globl _PSCTL
                             92 	.globl _CKCON
                             93 	.globl _TH1
                             94 	.globl _TH0
                             95 	.globl _TL1
                             96 	.globl _TL0
                             97 	.globl _TMOD
                             98 	.globl _TCON
                             99 	.globl _PCON
                            100 	.globl _DPH
                            101 	.globl _DPL
                            102 	.globl _SP
                            103 	.globl _P0
                            104 ;--------------------------------------------------------
                            105 ; special function registers
                            106 ;--------------------------------------------------------
                            107 	.area RSEG    (ABS,DATA)
   0000                     108 	.org 0x0000
                    0080    109 G$P0$0$0 == 0x0080
                    0080    110 _P0	=	0x0080
                    0081    111 G$SP$0$0 == 0x0081
                    0081    112 _SP	=	0x0081
                    0082    113 G$DPL$0$0 == 0x0082
                    0082    114 _DPL	=	0x0082
                    0083    115 G$DPH$0$0 == 0x0083
                    0083    116 _DPH	=	0x0083
                    0087    117 G$PCON$0$0 == 0x0087
                    0087    118 _PCON	=	0x0087
                    0088    119 G$TCON$0$0 == 0x0088
                    0088    120 _TCON	=	0x0088
                    0089    121 G$TMOD$0$0 == 0x0089
                    0089    122 _TMOD	=	0x0089
                    008A    123 G$TL0$0$0 == 0x008a
                    008A    124 _TL0	=	0x008a
                    008B    125 G$TL1$0$0 == 0x008b
                    008B    126 _TL1	=	0x008b
                    008C    127 G$TH0$0$0 == 0x008c
                    008C    128 _TH0	=	0x008c
                    008D    129 G$TH1$0$0 == 0x008d
                    008D    130 _TH1	=	0x008d
                    008E    131 G$CKCON$0$0 == 0x008e
                    008E    132 _CKCON	=	0x008e
                    008F    133 G$PSCTL$0$0 == 0x008f
                    008F    134 _PSCTL	=	0x008f
                    0091    135 G$SBCON0$0$0 == 0x0091
                    0091    136 _SBCON0	=	0x0091
                    0093    137 G$SBRLL0$0$0 == 0x0093
                    0093    138 _SBRLL0	=	0x0093
                    0094    139 G$SBRLH0$0$0 == 0x0094
                    0094    140 _SBRLH0	=	0x0094
                    0096    141 G$USB0ADR$0$0 == 0x0096
                    0096    142 _USB0ADR	=	0x0096
                    0097    143 G$USB0DAT$0$0 == 0x0097
                    0097    144 _USB0DAT	=	0x0097
                    0098    145 G$SCON0$0$0 == 0x0098
                    0098    146 _SCON0	=	0x0098
                    0099    147 G$SBUF0$0$0 == 0x0099
                    0099    148 _SBUF0	=	0x0099
                    009A    149 G$SMOD0$0$0 == 0x009a
                    009A    150 _SMOD0	=	0x009a
                    00A0    151 G$P2$0$0 == 0x00a0
                    00A0    152 _P2	=	0x00a0
                    00A4    153 G$P0MDOUT$0$0 == 0x00a4
                    00A4    154 _P0MDOUT	=	0x00a4
                    00A6    155 G$P2MDOUT$0$0 == 0x00a6
                    00A6    156 _P2MDOUT	=	0x00a6
                    00A7    157 G$P3MDOUT$0$0 == 0x00a7
                    00A7    158 _P3MDOUT	=	0x00a7
                    00A8    159 G$IE$0$0 == 0x00a8
                    00A8    160 _IE	=	0x00a8
                    00A9    161 G$CLKSEL$0$0 == 0x00a9
                    00A9    162 _CLKSEL	=	0x00a9
                    00AA    163 G$EMI0CN$0$0 == 0x00aa
                    00AA    164 _EMI0CN	=	0x00aa
                    00B0    165 G$P3$0$0 == 0x00b0
                    00B0    166 _P3	=	0x00b0
                    00B2    167 G$OSCICN$0$0 == 0x00b2
                    00B2    168 _OSCICN	=	0x00b2
                    00B3    169 G$OSCICL$0$0 == 0x00b3
                    00B3    170 _OSCICL	=	0x00b3
                    00B6    171 G$FLSCL$0$0 == 0x00b6
                    00B6    172 _FLSCL	=	0x00b6
                    00B7    173 G$FLKEY$0$0 == 0x00b7
                    00B7    174 _FLKEY	=	0x00b7
                    00B8    175 G$IP$0$0 == 0x00b8
                    00B8    176 _IP	=	0x00b8
                    00B9    177 G$CLKMUL$0$0 == 0x00b9
                    00B9    178 _CLKMUL	=	0x00b9
                    00C9    179 G$REG0CN$0$0 == 0x00c9
                    00C9    180 _REG0CN	=	0x00c9
                    00D0    181 G$PSW$0$0 == 0x00d0
                    00D0    182 _PSW	=	0x00d0
                    00D7    183 G$USB0XCN$0$0 == 0x00d7
                    00D7    184 _USB0XCN	=	0x00d7
                    00E0    185 G$ACC$0$0 == 0x00e0
                    00E0    186 _ACC	=	0x00e0
                    00E2    187 G$GPIOCN$0$0 == 0x00e2
                    00E2    188 _GPIOCN	=	0x00e2
                    00E3    189 G$OSCLCN$0$0 == 0x00e3
                    00E3    190 _OSCLCN	=	0x00e3
                    00E6    191 G$EIE1$0$0 == 0x00e6
                    00E6    192 _EIE1	=	0x00e6
                    00E7    193 G$EIE2$0$0 == 0x00e7
                    00E7    194 _EIE2	=	0x00e7
                    00EF    195 G$RSTSRC$0$0 == 0x00ef
                    00EF    196 _RSTSRC	=	0x00ef
                    00F0    197 G$B$0$0 == 0x00f0
                    00F0    198 _B	=	0x00f0
                    00F6    199 G$EIP1$0$0 == 0x00f6
                    00F6    200 _EIP1	=	0x00f6
                    00F7    201 G$EIP2$0$0 == 0x00f7
                    00F7    202 _EIP2	=	0x00f7
                    00FF    203 G$VDM0CN$0$0 == 0x00ff
                    00FF    204 _VDM0CN	=	0x00ff
                    8382    205 G$DP$0$0 == 0x8382
                    8382    206 _DP	=	0x8382
                    9493    207 G$SBRL0$0$0 == 0x9493
                    9493    208 _SBRL0	=	0x9493
                    00AA    209 G$_XPAGE$0$0 == 0x00aa
                    00AA    210 __XPAGE	=	0x00aa
                            211 ;--------------------------------------------------------
                            212 ; special function bits
                            213 ;--------------------------------------------------------
                            214 	.area RSEG    (ABS,DATA)
   0000                     215 	.org 0x0000
                    008F    216 G$TF1$0$0 == 0x008f
                    008F    217 _TF1	=	0x008f
                    008E    218 G$TR1$0$0 == 0x008e
                    008E    219 _TR1	=	0x008e
                    008D    220 G$TF0$0$0 == 0x008d
                    008D    221 _TF0	=	0x008d
                    008C    222 G$TR0$0$0 == 0x008c
                    008C    223 _TR0	=	0x008c
                    008B    224 G$IE1$0$0 == 0x008b
                    008B    225 _IE1	=	0x008b
                    008A    226 G$IT1$0$0 == 0x008a
                    008A    227 _IT1	=	0x008a
                    0089    228 G$IE0$0$0 == 0x0089
                    0089    229 _IE0	=	0x0089
                    0088    230 G$IT0$0$0 == 0x0088
                    0088    231 _IT0	=	0x0088
                    009F    232 G$OVR0$0$0 == 0x009f
                    009F    233 _OVR0	=	0x009f
                    009F    234 G$PERR0$0$0 == 0x009f
                    009F    235 _PERR0	=	0x009f
                    009C    236 G$REN0$0$0 == 0x009c
                    009C    237 _REN0	=	0x009c
                    009B    238 G$TBX0$0$0 == 0x009b
                    009B    239 _TBX0	=	0x009b
                    009A    240 G$RBX0$0$0 == 0x009a
                    009A    241 _RBX0	=	0x009a
                    0099    242 G$TI0$0$0 == 0x0099
                    0099    243 _TI0	=	0x0099
                    0098    244 G$RI0$0$0 == 0x0098
                    0098    245 _RI0	=	0x0098
                    00AF    246 G$EA$0$0 == 0x00af
                    00AF    247 _EA	=	0x00af
                    00AC    248 G$ES0$0$0 == 0x00ac
                    00AC    249 _ES0	=	0x00ac
                    00AB    250 G$ET1$0$0 == 0x00ab
                    00AB    251 _ET1	=	0x00ab
                    00AA    252 G$EX1$0$0 == 0x00aa
                    00AA    253 _EX1	=	0x00aa
                    00A9    254 G$ET0$0$0 == 0x00a9
                    00A9    255 _ET0	=	0x00a9
                    00A8    256 G$EX0$0$0 == 0x00a8
                    00A8    257 _EX0	=	0x00a8
                    00BC    258 G$PS0$0$0 == 0x00bc
                    00BC    259 _PS0	=	0x00bc
                    00BB    260 G$PT1$0$0 == 0x00bb
                    00BB    261 _PT1	=	0x00bb
                    00BA    262 G$PX1$0$0 == 0x00ba
                    00BA    263 _PX1	=	0x00ba
                    00B9    264 G$PT0$0$0 == 0x00b9
                    00B9    265 _PT0	=	0x00b9
                    00B8    266 G$PX0$0$0 == 0x00b8
                    00B8    267 _PX0	=	0x00b8
                    00D7    268 G$CY$0$0 == 0x00d7
                    00D7    269 _CY	=	0x00d7
                    00D6    270 G$AC$0$0 == 0x00d6
                    00D6    271 _AC	=	0x00d6
                    00D5    272 G$F0$0$0 == 0x00d5
                    00D5    273 _F0	=	0x00d5
                    00D4    274 G$RS1$0$0 == 0x00d4
                    00D4    275 _RS1	=	0x00d4
                    00D3    276 G$RS0$0$0 == 0x00d3
                    00D3    277 _RS0	=	0x00d3
                    00D2    278 G$OV$0$0 == 0x00d2
                    00D2    279 _OV	=	0x00d2
                    00D1    280 G$F1$0$0 == 0x00d1
                    00D1    281 _F1	=	0x00d1
                    00D0    282 G$P$0$0 == 0x00d0
                    00D0    283 _P	=	0x00d0
                            284 ;--------------------------------------------------------
                            285 ; overlayable register banks
                            286 ;--------------------------------------------------------
                            287 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     288 	.ds 8
                            289 ;--------------------------------------------------------
                            290 ; internal ram data
                            291 ;--------------------------------------------------------
                            292 	.area DSEG    (DATA)
                            293 ;--------------------------------------------------------
                            294 ; overlayable items in internal ram 
                            295 ;--------------------------------------------------------
                            296 ;--------------------------------------------------------
                            297 ; indirectly addressable internal ram data
                            298 ;--------------------------------------------------------
                            299 	.area ISEG    (DATA)
                            300 ;--------------------------------------------------------
                            301 ; absolute internal ram data
                            302 ;--------------------------------------------------------
                            303 	.area IABS    (ABS,DATA)
                            304 	.area IABS    (ABS,DATA)
                            305 ;--------------------------------------------------------
                            306 ; bit data
                            307 ;--------------------------------------------------------
                            308 	.area BSEG    (BIT)
                            309 ;--------------------------------------------------------
                            310 ; paged external ram data
                            311 ;--------------------------------------------------------
                            312 	.area PSEG    (PAG,XDATA)
                            313 ;--------------------------------------------------------
                            314 ; external ram data
                            315 ;--------------------------------------------------------
                            316 	.area XSEG    (XDATA)
                            317 ;--------------------------------------------------------
                            318 ; absolute external ram data
                            319 ;--------------------------------------------------------
                            320 	.area XABS    (ABS,XDATA)
                            321 ;--------------------------------------------------------
                            322 ; external initialized ram data
                            323 ;--------------------------------------------------------
                            324 	.area XISEG   (XDATA)
                            325 	.area HOME    (CODE)
                            326 	.area GSINIT0 (CODE)
                            327 	.area GSINIT1 (CODE)
                            328 	.area GSINIT2 (CODE)
                            329 	.area GSINIT3 (CODE)
                            330 	.area GSINIT4 (CODE)
                            331 	.area GSINIT5 (CODE)
                            332 	.area GSINIT  (CODE)
                            333 	.area GSFINAL (CODE)
                            334 	.area CSEG    (CODE)
                            335 ;--------------------------------------------------------
                            336 ; global & static initialisations
                            337 ;--------------------------------------------------------
                            338 	.area HOME    (CODE)
                            339 	.area GSINIT  (CODE)
                            340 	.area GSFINAL (CODE)
                            341 	.area GSINIT  (CODE)
                            342 ;--------------------------------------------------------
                            343 ; Home
                            344 ;--------------------------------------------------------
                            345 	.area HOME    (CODE)
                            346 	.area HOME    (CODE)
                            347 ;--------------------------------------------------------
                            348 ; code
                            349 ;--------------------------------------------------------
                            350 	.area CSEG    (CODE)
                            351 	.area CSEG    (CODE)
                            352 	.area CONST   (CODE)
                    0000    353 G$DEVICEDESC$0$0 == .
   0CF9                     354 _DEVICEDESC:
   0CF9 12                  355 	.db #0x12	; 18
   0CFA 01                  356 	.db #0x01	; 1
   0CFB 01 10               357 	.byte #0x01,#0x10	; 4097
   0CFD 00                  358 	.db #0x00	; 0
   0CFE 00                  359 	.db #0x00	; 0
   0CFF 00                  360 	.db #0x00	; 0
   0D00 40                  361 	.db #0x40	; 64
   0D01 10 C4               362 	.byte #0x10,#0xC4	; 50192
   0D03 81 B9               363 	.byte #0x81,#0xB9	; 47489
   0D05 00 00               364 	.byte #0x00,#0x00	; 0
   0D07 01                  365 	.db #0x01	; 1
   0D08 02                  366 	.db #0x02	; 2
   0D09 00                  367 	.db #0x00	; 0
   0D0A 01                  368 	.db #0x01	; 1
                    0012    369 G$HIDCONFIGDESC$0$0 == .
   0D0B                     370 _HIDCONFIGDESC:
   0D0B 09                  371 	.db #0x09	; 9
   0D0C 02                  372 	.db #0x02	; 2
   0D0D 00 22               373 	.byte #0x00,#0x22	; 8704
   0D0F 01                  374 	.db #0x01	; 1
   0D10 01                  375 	.db #0x01	; 1
   0D11 00                  376 	.db #0x00	; 0
   0D12 80                  377 	.db #0x80	; 128
   0D13 20                  378 	.db #0x20	; 32
   0D14 09                  379 	.db #0x09	; 9
   0D15 04                  380 	.db #0x04	; 4
   0D16 00                  381 	.db #0x00	; 0
   0D17 00                  382 	.db #0x00	; 0
   0D18 01                  383 	.db #0x01	; 1
   0D19 03                  384 	.db #0x03	; 3
   0D1A 01                  385 	.db #0x01	; 1
   0D1B 02                  386 	.db #0x02	; 2
   0D1C 00                  387 	.db #0x00	; 0
   0D1D 09                  388 	.db #0x09	; 9
   0D1E 21                  389 	.db #0x21	; 33
   0D1F 01 01               390 	.byte #0x01,#0x01	; 257
   0D21 00                  391 	.db #0x00	; 0
   0D22 01                  392 	.db #0x01	; 1
   0D23 22                  393 	.db #0x22	; 34
   0D24 00 20               394 	.byte #0x00,#0x20	; 8192
   0D26 07                  395 	.db #0x07	; 7
   0D27 05                  396 	.db #0x05	; 5
   0D28 81                  397 	.db #0x81	; 129
   0D29 03                  398 	.db #0x03	; 3
   0D2A 00 0A               399 	.byte #0x00,#0x0A	; 2560
   0D2C 0A                  400 	.db #0x0A	; 10
   0D2D 07                  401 	.db #0x07	; 7
   0D2E 05                  402 	.db #0x05	; 5
   0D2F 01                  403 	.db #0x01	; 1
   0D30 03                  404 	.db #0x03	; 3
   0D31 00 0A               405 	.byte #0x00,#0x0A	; 2560
   0D33 0A                  406 	.db #0x0A	; 10
                    003B    407 G$HIDREPORTDESC$0$0 == .
   0D34                     408 _HIDREPORTDESC:
   0D34 05                  409 	.db #0x05	; 5
   0D35 01                  410 	.db #0x01	; 1
   0D36 09                  411 	.db #0x09	; 9
   0D37 04                  412 	.db #0x04	; 4
   0D38 A1                  413 	.db #0xA1	; 161
   0D39 01                  414 	.db #0x01	; 1
   0D3A A1                  415 	.db #0xA1	; 161
   0D3B 00                  416 	.db #0x00	; 0
   0D3C 05                  417 	.db #0x05	; 5
   0D3D 09                  418 	.db #0x09	; 9
   0D3E 19                  419 	.db #0x19	; 25
   0D3F 01                  420 	.db #0x01	; 1
   0D40 29                  421 	.db #0x29	; 41
   0D41 08                  422 	.db #0x08	; 8
   0D42 15                  423 	.db #0x15	; 21
   0D43 00                  424 	.db #0x00	; 0
   0D44 25                  425 	.db #0x25	; 37
   0D45 01                  426 	.db #0x01	; 1
   0D46 95                  427 	.db #0x95	; 149
   0D47 08                  428 	.db #0x08	; 8
   0D48 75                  429 	.db #0x75	; 117	'u'
   0D49 01                  430 	.db #0x01	; 1
   0D4A 81                  431 	.db #0x81	; 129
   0D4B 02                  432 	.db #0x02	; 2
   0D4C 95                  433 	.db #0x95	; 149
   0D4D 01                  434 	.db #0x01	; 1
   0D4E 75                  435 	.db #0x75	; 117	'u'
   0D4F 00                  436 	.db #0x00	; 0
   0D50 81                  437 	.db #0x81	; 129
   0D51 01                  438 	.db #0x01	; 1
   0D52 C0                  439 	.db #0xC0	; 192
   0D53 C0                  440 	.db #0xC0	; 192
                    005B    441 G$String0Desc$0$0 == .
   0D54                     442 _String0Desc:
   0D54 04                  443 	.db #0x04	; 4
   0D55 03                  444 	.db #0x03	; 3
   0D56 09                  445 	.db #0x09	; 9
   0D57 05                  446 	.db #0x05	; 5
                    005F    447 G$String1Desc$0$0 == .
   0D58                     448 _String1Desc:
   0D58 00                  449 	.db #0x00	; 0
   0D59 03                  450 	.db #0x03	; 3
   0D5A 4D                  451 	.db #0x4D	; 77	'M'
   0D5B 00                  452 	.db #0x00	; 0
   0D5C 72                  453 	.db #0x72	; 114	'r'
   0D5D 00                  454 	.db #0x00	; 0
   0D5E 44                  455 	.db #0x44	; 68	'D'
   0D5F 00                  456 	.db #0x00	; 0
   0D60 72                  457 	.db #0x72	; 114	'r'
   0D61 00                  458 	.db #0x00	; 0
   0D62 4D                  459 	.db #0x4D	; 77	'M'
   0D63 00                  460 	.db #0x00	; 0
   0D64 75                  461 	.db #0x75	; 117	'u'
   0D65 00                  462 	.db #0x00	; 0
   0D66 66                  463 	.db #0x66	; 102	'f'
   0D67 00                  464 	.db #0x00	; 0
   0D68 66                  465 	.db #0x66	; 102	'f'
   0D69 00                  466 	.db #0x00	; 0
   0D6A 69                  467 	.db #0x69	; 105	'i'
   0D6B 00                  468 	.db #0x00	; 0
   0D6C 6E                  469 	.db #0x6E	; 110	'n'
   0D6D 00                  470 	.db #0x00	; 0
   0D6E 20                  471 	.db #0x20	; 32
   0D6F 00                  472 	.db #0x00	; 0
   0D70 49                  473 	.db #0x49	; 73	'I'
   0D71 00                  474 	.db #0x00	; 0
   0D72 6E                  475 	.db #0x6E	; 110	'n'
   0D73 00                  476 	.db #0x00	; 0
   0D74 63                  477 	.db #0x63	; 99	'c'
   0D75 00                  478 	.db #0x00	; 0
   0D76 2E                  479 	.db #0x2E	; 46
   0D77 00                  480 	.db #0x00	; 0
                    007F    481 G$String2Desc$0$0 == .
   0D78                     482 _String2Desc:
   0D78 38                  483 	.db #0x38	; 56	'8'
   0D79 03                  484 	.db #0x03	; 3
   0D7A 4E                  485 	.db #0x4E	; 78	'N'
   0D7B 00                  486 	.db #0x00	; 0
   0D7C 45                  487 	.db #0x45	; 69	'E'
   0D7D 00                  488 	.db #0x00	; 0
   0D7E 53                  489 	.db #0x53	; 83	'S'
   0D7F 00                  490 	.db #0x00	; 0
   0D80 20                  491 	.db #0x20	; 32
   0D81 00                  492 	.db #0x00	; 0
   0D82 42                  493 	.db #0x42	; 66	'B'
   0D83 00                  494 	.db #0x00	; 0
   0D84 65                  495 	.db #0x65	; 101	'e'
   0D85 00                  496 	.db #0x00	; 0
   0D86 73                  497 	.db #0x73	; 115	's'
   0D87 00                  498 	.db #0x00	; 0
   0D88 74                  499 	.db #0x74	; 116	't'
   0D89 00                  500 	.db #0x00	; 0
   0D8A 20                  501 	.db #0x20	; 32
   0D8B 00                  502 	.db #0x00	; 0
   0D8C 46                  503 	.db #0x46	; 70	'F'
   0D8D 00                  504 	.db #0x00	; 0
   0D8E 72                  505 	.db #0x72	; 114	'r'
   0D8F 00                  506 	.db #0x00	; 0
   0D90 69                  507 	.db #0x69	; 105	'i'
   0D91 00                  508 	.db #0x00	; 0
   0D92 65                  509 	.db #0x65	; 101	'e'
   0D93 00                  510 	.db #0x00	; 0
   0D94 6E                  511 	.db #0x6E	; 110	'n'
   0D95 00                  512 	.db #0x00	; 0
   0D96 64                  513 	.db #0x64	; 100	'd'
   0D97 00                  514 	.db #0x00	; 0
   0D98 73                  515 	.db #0x73	; 115	's'
   0D99 00                  516 	.db #0x00	; 0
   0D9A 20                  517 	.db #0x20	; 32
   0D9B 00                  518 	.db #0x00	; 0
   0D9C 43                  519 	.db #0x43	; 67	'C'
   0D9D 00                  520 	.db #0x00	; 0
   0D9E 6F                  521 	.db #0x6F	; 111	'o'
   0D9F 00                  522 	.db #0x00	; 0
   0DA0 6E                  523 	.db #0x6E	; 110	'n'
   0DA1 00                  524 	.db #0x00	; 0
   0DA2 74                  525 	.db #0x74	; 116	't'
   0DA3 00                  526 	.db #0x00	; 0
   0DA4 72                  527 	.db #0x72	; 114	'r'
   0DA5 00                  528 	.db #0x00	; 0
   0DA6 6F                  529 	.db #0x6F	; 111	'o'
   0DA7 00                  530 	.db #0x00	; 0
   0DA8 6C                  531 	.db #0x6C	; 108	'l'
   0DA9 00                  532 	.db #0x00	; 0
   0DAA 6C                  533 	.db #0x6C	; 108	'l'
   0DAB 00                  534 	.db #0x00	; 0
   0DAC 65                  535 	.db #0x65	; 101	'e'
   0DAD 00                  536 	.db #0x00	; 0
   0DAE 72                  537 	.db #0x72	; 114	'r'
   0DAF 00                  538 	.db #0x00	; 0
                    00B7    539 G$STRINGDESCTABLE$0$0 == .
   0DB0                     540 _STRINGDESCTABLE:
   0DB0 54 0D               541 	.byte _String0Desc,(_String0Desc >> 8)
   0DB2 58 0D               542 	.byte _String1Desc,(_String1Desc >> 8)
   0DB4 78 0D               543 	.byte _String2Desc,(_String2Desc >> 8)
                            544 	.area XINIT   (CODE)
                            545 	.area CABS    (ABS,CODE)
