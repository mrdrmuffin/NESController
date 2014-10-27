                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Wed Jan 30 20:10:35 2013
                              5 ;--------------------------------------------------------
                              6 	.module F3xx_USB0_InterruptServiceRoutine
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Fifo_Write_InterruptServiceRoutine_PARM_3
                             13 	.globl _Fifo_Write_InterruptServiceRoutine_PARM_2
                             14 	.globl _Fifo_Write_Foreground_PARM_3
                             15 	.globl _Fifo_Write_Foreground_PARM_2
                             16 	.globl _Fifo_Read_PARM_3
                             17 	.globl _Fifo_Read_PARM_2
                             18 	.globl _Usb_ISR
                             19 	.globl _Setup_OUT_BUFFER
                             20 	.globl _ReportHandler_OUT
                             21 	.globl _ReportHandler_IN_Foreground
                             22 	.globl _Set_Protocol
                             23 	.globl _Get_Protocol
                             24 	.globl _Set_Idle
                             25 	.globl _Get_Idle
                             26 	.globl _Set_Report
                             27 	.globl _Get_Report
                             28 	.globl _Set_Interface
                             29 	.globl _Get_Interface
                             30 	.globl _Set_Configuration
                             31 	.globl _Get_Configuration
                             32 	.globl _Get_Descriptor
                             33 	.globl _Set_Address
                             34 	.globl _Set_Feature
                             35 	.globl _Clear_Feature
                             36 	.globl _Get_Status
                             37 	.globl _P
                             38 	.globl _F1
                             39 	.globl _OV
                             40 	.globl _RS0
                             41 	.globl _RS1
                             42 	.globl _F0
                             43 	.globl _AC
                             44 	.globl _CY
                             45 	.globl _PX0
                             46 	.globl _PT0
                             47 	.globl _PX1
                             48 	.globl _PT1
                             49 	.globl _PS0
                             50 	.globl _EX0
                             51 	.globl _ET0
                             52 	.globl _EX1
                             53 	.globl _ET1
                             54 	.globl _ES0
                             55 	.globl _EA
                             56 	.globl _RI0
                             57 	.globl _TI0
                             58 	.globl _RBX0
                             59 	.globl _TBX0
                             60 	.globl _REN0
                             61 	.globl _PERR0
                             62 	.globl _OVR0
                             63 	.globl _IT0
                             64 	.globl _IE0
                             65 	.globl _IT1
                             66 	.globl _IE1
                             67 	.globl _TR0
                             68 	.globl _TF0
                             69 	.globl _TR1
                             70 	.globl _TF1
                             71 	.globl __XPAGE
                             72 	.globl _SBRL0
                             73 	.globl _DP
                             74 	.globl _VDM0CN
                             75 	.globl _EIP2
                             76 	.globl _EIP1
                             77 	.globl _B
                             78 	.globl _RSTSRC
                             79 	.globl _EIE2
                             80 	.globl _EIE1
                             81 	.globl _OSCLCN
                             82 	.globl _GPIOCN
                             83 	.globl _ACC
                             84 	.globl _USB0XCN
                             85 	.globl _PSW
                             86 	.globl _REG0CN
                             87 	.globl _CLKMUL
                             88 	.globl _IP
                             89 	.globl _FLKEY
                             90 	.globl _FLSCL
                             91 	.globl _OSCICL
                             92 	.globl _OSCICN
                             93 	.globl _P3
                             94 	.globl _EMI0CN
                             95 	.globl _CLKSEL
                             96 	.globl _IE
                             97 	.globl _P3MDOUT
                             98 	.globl _P2MDOUT
                             99 	.globl _P0MDOUT
                            100 	.globl _P2
                            101 	.globl _SMOD0
                            102 	.globl _SBUF0
                            103 	.globl _SCON0
                            104 	.globl _USB0DAT
                            105 	.globl _USB0ADR
                            106 	.globl _SBRLH0
                            107 	.globl _SBRLL0
                            108 	.globl _SBCON0
                            109 	.globl _PSCTL
                            110 	.globl _CKCON
                            111 	.globl _TH1
                            112 	.globl _TH0
                            113 	.globl _TL1
                            114 	.globl _TL0
                            115 	.globl _TMOD
                            116 	.globl _TCON
                            117 	.globl _PCON
                            118 	.globl _DPH
                            119 	.globl _DPL
                            120 	.globl _SP
                            121 	.globl _P0
                            122 	.globl _EP_STATUS
                            123 	.globl _DATAPTR
                            124 	.globl _DATASENT
                            125 	.globl _DATASIZE
                            126 	.globl _SETUP
                            127 	.globl _USB0_STATE
                            128 	.globl _Usb_Reset
                            129 	.globl _Usb_Resume
                            130 	.globl _Handle_Control
                            131 	.globl _Handle_In1
                            132 	.globl _Handle_Out1
                            133 	.globl _Usb_Suspend
                            134 	.globl _Fifo_Read
                            135 	.globl _Fifo_Write_Foreground
                            136 	.globl _Fifo_Write_InterruptServiceRoutine
                            137 	.globl _Force_Stall
                            138 	.globl _SendPacket
                            139 ;--------------------------------------------------------
                            140 ; special function registers
                            141 ;--------------------------------------------------------
                            142 	.area RSEG    (ABS,DATA)
   0000                     143 	.org 0x0000
                    0080    144 G$P0$0$0 == 0x0080
                    0080    145 _P0	=	0x0080
                    0081    146 G$SP$0$0 == 0x0081
                    0081    147 _SP	=	0x0081
                    0082    148 G$DPL$0$0 == 0x0082
                    0082    149 _DPL	=	0x0082
                    0083    150 G$DPH$0$0 == 0x0083
                    0083    151 _DPH	=	0x0083
                    0087    152 G$PCON$0$0 == 0x0087
                    0087    153 _PCON	=	0x0087
                    0088    154 G$TCON$0$0 == 0x0088
                    0088    155 _TCON	=	0x0088
                    0089    156 G$TMOD$0$0 == 0x0089
                    0089    157 _TMOD	=	0x0089
                    008A    158 G$TL0$0$0 == 0x008a
                    008A    159 _TL0	=	0x008a
                    008B    160 G$TL1$0$0 == 0x008b
                    008B    161 _TL1	=	0x008b
                    008C    162 G$TH0$0$0 == 0x008c
                    008C    163 _TH0	=	0x008c
                    008D    164 G$TH1$0$0 == 0x008d
                    008D    165 _TH1	=	0x008d
                    008E    166 G$CKCON$0$0 == 0x008e
                    008E    167 _CKCON	=	0x008e
                    008F    168 G$PSCTL$0$0 == 0x008f
                    008F    169 _PSCTL	=	0x008f
                    0091    170 G$SBCON0$0$0 == 0x0091
                    0091    171 _SBCON0	=	0x0091
                    0093    172 G$SBRLL0$0$0 == 0x0093
                    0093    173 _SBRLL0	=	0x0093
                    0094    174 G$SBRLH0$0$0 == 0x0094
                    0094    175 _SBRLH0	=	0x0094
                    0096    176 G$USB0ADR$0$0 == 0x0096
                    0096    177 _USB0ADR	=	0x0096
                    0097    178 G$USB0DAT$0$0 == 0x0097
                    0097    179 _USB0DAT	=	0x0097
                    0098    180 G$SCON0$0$0 == 0x0098
                    0098    181 _SCON0	=	0x0098
                    0099    182 G$SBUF0$0$0 == 0x0099
                    0099    183 _SBUF0	=	0x0099
                    009A    184 G$SMOD0$0$0 == 0x009a
                    009A    185 _SMOD0	=	0x009a
                    00A0    186 G$P2$0$0 == 0x00a0
                    00A0    187 _P2	=	0x00a0
                    00A4    188 G$P0MDOUT$0$0 == 0x00a4
                    00A4    189 _P0MDOUT	=	0x00a4
                    00A6    190 G$P2MDOUT$0$0 == 0x00a6
                    00A6    191 _P2MDOUT	=	0x00a6
                    00A7    192 G$P3MDOUT$0$0 == 0x00a7
                    00A7    193 _P3MDOUT	=	0x00a7
                    00A8    194 G$IE$0$0 == 0x00a8
                    00A8    195 _IE	=	0x00a8
                    00A9    196 G$CLKSEL$0$0 == 0x00a9
                    00A9    197 _CLKSEL	=	0x00a9
                    00AA    198 G$EMI0CN$0$0 == 0x00aa
                    00AA    199 _EMI0CN	=	0x00aa
                    00B0    200 G$P3$0$0 == 0x00b0
                    00B0    201 _P3	=	0x00b0
                    00B2    202 G$OSCICN$0$0 == 0x00b2
                    00B2    203 _OSCICN	=	0x00b2
                    00B3    204 G$OSCICL$0$0 == 0x00b3
                    00B3    205 _OSCICL	=	0x00b3
                    00B6    206 G$FLSCL$0$0 == 0x00b6
                    00B6    207 _FLSCL	=	0x00b6
                    00B7    208 G$FLKEY$0$0 == 0x00b7
                    00B7    209 _FLKEY	=	0x00b7
                    00B8    210 G$IP$0$0 == 0x00b8
                    00B8    211 _IP	=	0x00b8
                    00B9    212 G$CLKMUL$0$0 == 0x00b9
                    00B9    213 _CLKMUL	=	0x00b9
                    00C9    214 G$REG0CN$0$0 == 0x00c9
                    00C9    215 _REG0CN	=	0x00c9
                    00D0    216 G$PSW$0$0 == 0x00d0
                    00D0    217 _PSW	=	0x00d0
                    00D7    218 G$USB0XCN$0$0 == 0x00d7
                    00D7    219 _USB0XCN	=	0x00d7
                    00E0    220 G$ACC$0$0 == 0x00e0
                    00E0    221 _ACC	=	0x00e0
                    00E2    222 G$GPIOCN$0$0 == 0x00e2
                    00E2    223 _GPIOCN	=	0x00e2
                    00E3    224 G$OSCLCN$0$0 == 0x00e3
                    00E3    225 _OSCLCN	=	0x00e3
                    00E6    226 G$EIE1$0$0 == 0x00e6
                    00E6    227 _EIE1	=	0x00e6
                    00E7    228 G$EIE2$0$0 == 0x00e7
                    00E7    229 _EIE2	=	0x00e7
                    00EF    230 G$RSTSRC$0$0 == 0x00ef
                    00EF    231 _RSTSRC	=	0x00ef
                    00F0    232 G$B$0$0 == 0x00f0
                    00F0    233 _B	=	0x00f0
                    00F6    234 G$EIP1$0$0 == 0x00f6
                    00F6    235 _EIP1	=	0x00f6
                    00F7    236 G$EIP2$0$0 == 0x00f7
                    00F7    237 _EIP2	=	0x00f7
                    00FF    238 G$VDM0CN$0$0 == 0x00ff
                    00FF    239 _VDM0CN	=	0x00ff
                    8382    240 G$DP$0$0 == 0x8382
                    8382    241 _DP	=	0x8382
                    9493    242 G$SBRL0$0$0 == 0x9493
                    9493    243 _SBRL0	=	0x9493
                    00AA    244 G$_XPAGE$0$0 == 0x00aa
                    00AA    245 __XPAGE	=	0x00aa
                            246 ;--------------------------------------------------------
                            247 ; special function bits
                            248 ;--------------------------------------------------------
                            249 	.area RSEG    (ABS,DATA)
   0000                     250 	.org 0x0000
                    008F    251 G$TF1$0$0 == 0x008f
                    008F    252 _TF1	=	0x008f
                    008E    253 G$TR1$0$0 == 0x008e
                    008E    254 _TR1	=	0x008e
                    008D    255 G$TF0$0$0 == 0x008d
                    008D    256 _TF0	=	0x008d
                    008C    257 G$TR0$0$0 == 0x008c
                    008C    258 _TR0	=	0x008c
                    008B    259 G$IE1$0$0 == 0x008b
                    008B    260 _IE1	=	0x008b
                    008A    261 G$IT1$0$0 == 0x008a
                    008A    262 _IT1	=	0x008a
                    0089    263 G$IE0$0$0 == 0x0089
                    0089    264 _IE0	=	0x0089
                    0088    265 G$IT0$0$0 == 0x0088
                    0088    266 _IT0	=	0x0088
                    009F    267 G$OVR0$0$0 == 0x009f
                    009F    268 _OVR0	=	0x009f
                    009F    269 G$PERR0$0$0 == 0x009f
                    009F    270 _PERR0	=	0x009f
                    009C    271 G$REN0$0$0 == 0x009c
                    009C    272 _REN0	=	0x009c
                    009B    273 G$TBX0$0$0 == 0x009b
                    009B    274 _TBX0	=	0x009b
                    009A    275 G$RBX0$0$0 == 0x009a
                    009A    276 _RBX0	=	0x009a
                    0099    277 G$TI0$0$0 == 0x0099
                    0099    278 _TI0	=	0x0099
                    0098    279 G$RI0$0$0 == 0x0098
                    0098    280 _RI0	=	0x0098
                    00AF    281 G$EA$0$0 == 0x00af
                    00AF    282 _EA	=	0x00af
                    00AC    283 G$ES0$0$0 == 0x00ac
                    00AC    284 _ES0	=	0x00ac
                    00AB    285 G$ET1$0$0 == 0x00ab
                    00AB    286 _ET1	=	0x00ab
                    00AA    287 G$EX1$0$0 == 0x00aa
                    00AA    288 _EX1	=	0x00aa
                    00A9    289 G$ET0$0$0 == 0x00a9
                    00A9    290 _ET0	=	0x00a9
                    00A8    291 G$EX0$0$0 == 0x00a8
                    00A8    292 _EX0	=	0x00a8
                    00BC    293 G$PS0$0$0 == 0x00bc
                    00BC    294 _PS0	=	0x00bc
                    00BB    295 G$PT1$0$0 == 0x00bb
                    00BB    296 _PT1	=	0x00bb
                    00BA    297 G$PX1$0$0 == 0x00ba
                    00BA    298 _PX1	=	0x00ba
                    00B9    299 G$PT0$0$0 == 0x00b9
                    00B9    300 _PT0	=	0x00b9
                    00B8    301 G$PX0$0$0 == 0x00b8
                    00B8    302 _PX0	=	0x00b8
                    00D7    303 G$CY$0$0 == 0x00d7
                    00D7    304 _CY	=	0x00d7
                    00D6    305 G$AC$0$0 == 0x00d6
                    00D6    306 _AC	=	0x00d6
                    00D5    307 G$F0$0$0 == 0x00d5
                    00D5    308 _F0	=	0x00d5
                    00D4    309 G$RS1$0$0 == 0x00d4
                    00D4    310 _RS1	=	0x00d4
                    00D3    311 G$RS0$0$0 == 0x00d3
                    00D3    312 _RS0	=	0x00d3
                    00D2    313 G$OV$0$0 == 0x00d2
                    00D2    314 _OV	=	0x00d2
                    00D1    315 G$F1$0$0 == 0x00d1
                    00D1    316 _F1	=	0x00d1
                    00D0    317 G$P$0$0 == 0x00d0
                    00D0    318 _P	=	0x00d0
                            319 ;--------------------------------------------------------
                            320 ; overlayable register banks
                            321 ;--------------------------------------------------------
                            322 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     323 	.ds 8
                            324 ;--------------------------------------------------------
                            325 ; overlayable bit register bank
                            326 ;--------------------------------------------------------
                            327 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     328 bits:
   0021                     329 	.ds 1
                    8000    330 	b0 = bits[0]
                    8100    331 	b1 = bits[1]
                    8200    332 	b2 = bits[2]
                    8300    333 	b3 = bits[3]
                    8400    334 	b4 = bits[4]
                    8500    335 	b5 = bits[5]
                    8600    336 	b6 = bits[6]
                    8700    337 	b7 = bits[7]
                            338 ;--------------------------------------------------------
                            339 ; internal ram data
                            340 ;--------------------------------------------------------
                            341 	.area DSEG    (DATA)
                    0000    342 G$USB0_STATE$0$0==.
   0008                     343 _USB0_STATE::
   0008                     344 	.ds 1
                    0001    345 G$SETUP$0$0==.
   0009                     346 _SETUP::
   0009                     347 	.ds 8
                    0009    348 G$DATASIZE$0$0==.
   0011                     349 _DATASIZE::
   0011                     350 	.ds 2
                    000B    351 G$DATASENT$0$0==.
   0013                     352 _DATASENT::
   0013                     353 	.ds 2
                    000D    354 G$DATAPTR$0$0==.
   0015                     355 _DATAPTR::
   0015                     356 	.ds 3
                    0010    357 G$EP_STATUS$0$0==.
   0018                     358 _EP_STATUS::
   0018                     359 	.ds 3
                            360 ;--------------------------------------------------------
                            361 ; overlayable items in internal ram 
                            362 ;--------------------------------------------------------
                            363 	.area	OSEG    (OVR,DATA)
                    0000    364 LF3xx_USB0_InterruptServiceRoutine.Usb_Resume$k$1$44==.
   001B                     365 _Usb_Resume_k_1_44:
   001B                     366 	.ds 2
                            367 	.area	OSEG    (OVR,DATA)
                    0000    368 LF3xx_USB0_InterruptServiceRoutine.Usb_Suspend$k$1$73==.
   001B                     369 _Usb_Suspend_k_1_73:
   001B                     370 	.ds 2
                            371 	.area	OSEG    (OVR,DATA)
                    0000    372 LF3xx_USB0_InterruptServiceRoutine.Fifo_Read$uNumBytes$1$74==.
   001B                     373 _Fifo_Read_PARM_2:
   001B                     374 	.ds 2
                    0002    375 LF3xx_USB0_InterruptServiceRoutine.Fifo_Read$pData$1$74==.
   001D                     376 _Fifo_Read_PARM_3:
   001D                     377 	.ds 3
                            378 	.area	OSEG    (OVR,DATA)
                    0000    379 LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_Foreground$uNumBytes$1$78==.
   001B                     380 _Fifo_Write_Foreground_PARM_2:
   001B                     381 	.ds 2
                    0002    382 LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_Foreground$pData$1$78==.
   001D                     383 _Fifo_Write_Foreground_PARM_3:
   001D                     384 	.ds 3
                            385 	.area	OSEG    (OVR,DATA)
                    0000    386 LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_InterruptServiceRoutine$uNumBytes$1$82==.
   001B                     387 _Fifo_Write_InterruptServiceRoutine_PARM_2:
   001B                     388 	.ds 2
                    0002    389 LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_InterruptServiceRoutine$pData$1$82==.
   001D                     390 _Fifo_Write_InterruptServiceRoutine_PARM_3:
   001D                     391 	.ds 3
                            392 ;--------------------------------------------------------
                            393 ; indirectly addressable internal ram data
                            394 ;--------------------------------------------------------
                            395 	.area ISEG    (DATA)
                            396 ;--------------------------------------------------------
                            397 ; absolute internal ram data
                            398 ;--------------------------------------------------------
                            399 	.area IABS    (ABS,DATA)
                            400 	.area IABS    (ABS,DATA)
                            401 ;--------------------------------------------------------
                            402 ; bit data
                            403 ;--------------------------------------------------------
                            404 	.area BSEG    (BIT)
                    0000    405 LF3xx_USB0_InterruptServiceRoutine.SendPacket$EAState$1$89==.
   0000                     406 _SendPacket_EAState_1_89:
   0000                     407 	.ds 1
                            408 ;--------------------------------------------------------
                            409 ; paged external ram data
                            410 ;--------------------------------------------------------
                            411 	.area PSEG    (PAG,XDATA)
                            412 ;--------------------------------------------------------
                            413 ; external ram data
                            414 ;--------------------------------------------------------
                            415 	.area XSEG    (XDATA)
                            416 ;--------------------------------------------------------
                            417 ; absolute external ram data
                            418 ;--------------------------------------------------------
                            419 	.area XABS    (ABS,XDATA)
                            420 ;--------------------------------------------------------
                            421 ; external initialized ram data
                            422 ;--------------------------------------------------------
                            423 	.area XISEG   (XDATA)
                            424 	.area HOME    (CODE)
                            425 	.area GSINIT0 (CODE)
                            426 	.area GSINIT1 (CODE)
                            427 	.area GSINIT2 (CODE)
                            428 	.area GSINIT3 (CODE)
                            429 	.area GSINIT4 (CODE)
                            430 	.area GSINIT5 (CODE)
                            431 	.area GSINIT  (CODE)
                            432 	.area GSFINAL (CODE)
                            433 	.area CSEG    (CODE)
                            434 ;--------------------------------------------------------
                            435 ; global & static initialisations
                            436 ;--------------------------------------------------------
                            437 	.area HOME    (CODE)
                            438 	.area GSINIT  (CODE)
                            439 	.area GSFINAL (CODE)
                            440 	.area GSINIT  (CODE)
                    0000    441 	C$F3xx_USB0_InterruptServiceRoutine.c$59$1$89 ==.
                            442 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:59: U8 EP_STATUS[3] = {EP_IDLE, EP_HALT, EP_HALT};
   0061 75 18 00            443 	mov	_EP_STATUS,#0x00
   0064 75 19 03            444 	mov	(_EP_STATUS + 0x0001),#0x03
   0067 75 1A 03            445 	mov	(_EP_STATUS + 0x0002),#0x03
                            446 ;--------------------------------------------------------
                            447 ; Home
                            448 ;--------------------------------------------------------
                            449 	.area HOME    (CODE)
                            450 	.area HOME    (CODE)
                            451 ;--------------------------------------------------------
                            452 ; code
                            453 ;--------------------------------------------------------
                            454 	.area CSEG    (CODE)
                            455 ;------------------------------------------------------------
                            456 ;Allocation info for local variables in function 'Usb_ISR'
                            457 ;------------------------------------------------------------
                            458 ;bCommon                   Allocated to registers r7 
                            459 ;bIn                       Allocated to registers r6 
                            460 ;bOut                      Allocated to registers r5 
                            461 ;------------------------------------------------------------
                    0000    462 	G$Usb_ISR$0$0 ==.
                    0000    463 	C$F3xx_USB0_InterruptServiceRoutine.c$94$0$0 ==.
                            464 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:94: void Usb_ISR (void) interrupt 8        // Top-level USB ISR
                            465 ;	-----------------------------------------
                            466 ;	 function Usb_ISR
                            467 ;	-----------------------------------------
   008D                     468 _Usb_ISR:
                    0007    469 	ar7 = 0x07
                    0006    470 	ar6 = 0x06
                    0005    471 	ar5 = 0x05
                    0004    472 	ar4 = 0x04
                    0003    473 	ar3 = 0x03
                    0002    474 	ar2 = 0x02
                    0001    475 	ar1 = 0x01
                    0000    476 	ar0 = 0x00
   008D C0 21               477 	push	bits
   008F C0 E0               478 	push	acc
   0091 C0 F0               479 	push	b
   0093 C0 82               480 	push	dpl
   0095 C0 83               481 	push	dph
   0097 C0 07               482 	push	(0+7)
   0099 C0 06               483 	push	(0+6)
   009B C0 05               484 	push	(0+5)
   009D C0 04               485 	push	(0+4)
   009F C0 03               486 	push	(0+3)
   00A1 C0 02               487 	push	(0+2)
   00A3 C0 01               488 	push	(0+1)
   00A5 C0 00               489 	push	(0+0)
   00A7 C0 D0               490 	push	psw
   00A9 75 D0 00            491 	mov	psw,#0x00
                    001F    492 	C$F3xx_USB0_InterruptServiceRoutine.c$98$1$33 ==.
                            493 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:98: POLL_READ_BYTE (CMINT, bCommon);    // Read all interrupt registers
   00AC                     494 00101$:
   00AC E5 96               495 	mov	a,_USB0ADR
   00AE 20 E7 FB            496 	jb	acc.7,00101$
   00B1 75 96 86            497 	mov	_USB0ADR,#0x86
   00B4                     498 00104$:
   00B4 E5 96               499 	mov	a,_USB0ADR
   00B6 20 E7 FB            500 	jb	acc.7,00104$
   00B9 AF 97               501 	mov	r7,_USB0DAT
                    002E    502 	C$F3xx_USB0_InterruptServiceRoutine.c$99$1$33 ==.
                            503 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:99: POLL_READ_BYTE (IN1INT, bIn);       // this read also clears the register
   00BB                     504 00107$:
   00BB E5 96               505 	mov	a,_USB0ADR
   00BD 20 E7 FB            506 	jb	acc.7,00107$
   00C0 75 96 82            507 	mov	_USB0ADR,#0x82
   00C3                     508 00110$:
   00C3 E5 96               509 	mov	a,_USB0ADR
   00C5 20 E7 FB            510 	jb	acc.7,00110$
   00C8 AE 97               511 	mov	r6,_USB0DAT
                    003D    512 	C$F3xx_USB0_InterruptServiceRoutine.c$100$1$33 ==.
                            513 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:100: POLL_READ_BYTE (OUT1INT, bOut);
   00CA                     514 00113$:
   00CA E5 96               515 	mov	a,_USB0ADR
   00CC 20 E7 FB            516 	jb	acc.7,00113$
   00CF 75 96 84            517 	mov	_USB0ADR,#0x84
   00D2                     518 00116$:
   00D2 E5 96               519 	mov	a,_USB0ADR
   00D4 20 E7 FB            520 	jb	acc.7,00116$
   00D7 AD 97               521 	mov	r5,_USB0DAT
                    004C    522 	C$F3xx_USB0_InterruptServiceRoutine.c$102$2$34 ==.
                            523 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:102: if (bCommon & rbRSUINT)          // Handle Resume interrupt
   00D9 EF                  524 	mov	a,r7
   00DA 30 E1 0F            525 	jnb	acc.1,00120$
                    0050    526 	C$F3xx_USB0_InterruptServiceRoutine.c$104$3$35 ==.
                            527 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:104: Usb_Resume ();
   00DD C0 07               528 	push	ar7
   00DF C0 06               529 	push	ar6
   00E1 C0 05               530 	push	ar5
   00E3 12 01 68            531 	lcall	_Usb_Resume
   00E6 D0 05               532 	pop	ar5
   00E8 D0 06               533 	pop	ar6
   00EA D0 07               534 	pop	ar7
   00EC                     535 00120$:
                    005F    536 	C$F3xx_USB0_InterruptServiceRoutine.c$106$2$34 ==.
                            537 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:106: if (bCommon & rbRSTINT)          // Handle Reset interrupt
   00EC EF                  538 	mov	a,r7
   00ED 30 E2 0F            539 	jnb	acc.2,00122$
                    0063    540 	C$F3xx_USB0_InterruptServiceRoutine.c$108$3$36 ==.
                            541 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:108: Usb_Reset ();
   00F0 C0 07               542 	push	ar7
   00F2 C0 06               543 	push	ar6
   00F4 C0 05               544 	push	ar5
   00F6 12 01 50            545 	lcall	_Usb_Reset
   00F9 D0 05               546 	pop	ar5
   00FB D0 06               547 	pop	ar6
   00FD D0 07               548 	pop	ar7
   00FF                     549 00122$:
                    0072    550 	C$F3xx_USB0_InterruptServiceRoutine.c$110$2$34 ==.
                            551 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:110: if (bIn & rbEP0)                 // Handle SETUP packet received
   00FF EE                  552 	mov	a,r6
   0100 30 E0 0F            553 	jnb	acc.0,00124$
                    0076    554 	C$F3xx_USB0_InterruptServiceRoutine.c$112$3$37 ==.
                            555 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:112: Handle_Control ();            // is in transmit mode
   0103 C0 07               556 	push	ar7
   0105 C0 06               557 	push	ar6
   0107 C0 05               558 	push	ar5
   0109 12 01 74            559 	lcall	_Handle_Control
   010C D0 05               560 	pop	ar5
   010E D0 06               561 	pop	ar6
   0110 D0 07               562 	pop	ar7
   0112                     563 00124$:
                    0085    564 	C$F3xx_USB0_InterruptServiceRoutine.c$114$2$34 ==.
                            565 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:114: if (bIn & rbIN1)                 // Handle In Packet sent, put new data
   0112 EE                  566 	mov	a,r6
   0113 30 E1 0B            567 	jnb	acc.1,00126$
                    0089    568 	C$F3xx_USB0_InterruptServiceRoutine.c$116$3$38 ==.
                            569 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:116: Handle_In1 ();
   0116 C0 07               570 	push	ar7
   0118 C0 05               571 	push	ar5
   011A 12 04 A2            572 	lcall	_Handle_In1
   011D D0 05               573 	pop	ar5
   011F D0 07               574 	pop	ar7
   0121                     575 00126$:
                    0094    576 	C$F3xx_USB0_InterruptServiceRoutine.c$118$2$34 ==.
                            577 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:118: if (bOut & rbOUT1)               // Handle Out packet received, take
   0121 ED                  578 	mov	a,r5
   0122 30 E1 07            579 	jnb	acc.1,00128$
                    0098    580 	C$F3xx_USB0_InterruptServiceRoutine.c$120$3$39 ==.
                            581 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:120: Handle_Out1 ();
   0125 C0 07               582 	push	ar7
   0127 12 04 A6            583 	lcall	_Handle_Out1
   012A D0 07               584 	pop	ar7
   012C                     585 00128$:
                    009F    586 	C$F3xx_USB0_InterruptServiceRoutine.c$122$2$34 ==.
                            587 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:122: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
   012C EF                  588 	mov	a,r7
   012D 30 E0 03            589 	jnb	acc.0,00131$
                    00A3    590 	C$F3xx_USB0_InterruptServiceRoutine.c$124$3$40 ==.
                            591 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:124: Usb_Suspend ();
   0130 12 05 16            592 	lcall	_Usb_Suspend
   0133                     593 00131$:
   0133 D0 D0               594 	pop	psw
   0135 D0 00               595 	pop	(0+0)
   0137 D0 01               596 	pop	(0+1)
   0139 D0 02               597 	pop	(0+2)
   013B D0 03               598 	pop	(0+3)
   013D D0 04               599 	pop	(0+4)
   013F D0 05               600 	pop	(0+5)
   0141 D0 06               601 	pop	(0+6)
   0143 D0 07               602 	pop	(0+7)
   0145 D0 83               603 	pop	dph
   0147 D0 82               604 	pop	dpl
   0149 D0 F0               605 	pop	b
   014B D0 E0               606 	pop	acc
   014D D0 21               607 	pop	bits
                    00C2    608 	C$F3xx_USB0_InterruptServiceRoutine.c$127$2$34 ==.
                    00C2    609 	XG$Usb_ISR$0$0 ==.
   014F 32                  610 	reti
                            611 ;------------------------------------------------------------
                            612 ;Allocation info for local variables in function 'Usb_Reset'
                            613 ;------------------------------------------------------------
                    00C3    614 	G$Usb_Reset$0$0 ==.
                    00C3    615 	C$F3xx_USB0_InterruptServiceRoutine.c$145$2$34 ==.
                            616 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:145: void Usb_Reset (void)
                            617 ;	-----------------------------------------
                            618 ;	 function Usb_Reset
                            619 ;	-----------------------------------------
   0150                     620 _Usb_Reset:
                    00C3    621 	C$F3xx_USB0_InterruptServiceRoutine.c$147$1$42 ==.
                            622 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:147: USB0_STATE = DEV_DEFAULT;           // Set device state to default
   0150 75 08 02            623 	mov	_USB0_STATE,#0x02
                    00C6    624 	C$F3xx_USB0_InterruptServiceRoutine.c$149$1$42 ==.
                            625 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:149: POLL_WRITE_BYTE (POWER, 0x01);      // Clear usb inhibit bit to enable USB
   0153                     626 00101$:
   0153 E5 96               627 	mov	a,_USB0ADR
   0155 20 E7 FB            628 	jb	acc.7,00101$
   0158 75 96 01            629 	mov	_USB0ADR,#0x01
   015B 75 97 01            630 	mov	_USB0DAT,#0x01
                    00D1    631 	C$F3xx_USB0_InterruptServiceRoutine.c$152$1$42 ==.
                            632 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:152: EP_STATUS[0] = EP_IDLE;             // Set default Endpoint Status
   015E 75 18 00            633 	mov	_EP_STATUS,#0x00
                    00D4    634 	C$F3xx_USB0_InterruptServiceRoutine.c$153$1$42 ==.
                            635 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:153: EP_STATUS[1] = EP_HALT;
   0161 75 19 03            636 	mov	(_EP_STATUS + 0x0001),#0x03
                    00D7    637 	C$F3xx_USB0_InterruptServiceRoutine.c$154$1$42 ==.
                            638 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:154: EP_STATUS[2] = EP_HALT;
   0164 75 1A 03            639 	mov	(_EP_STATUS + 0x0002),#0x03
                    00DA    640 	C$F3xx_USB0_InterruptServiceRoutine.c$155$1$42 ==.
                    00DA    641 	XG$Usb_Reset$0$0 ==.
   0167 22                  642 	ret
                            643 ;------------------------------------------------------------
                            644 ;Allocation info for local variables in function 'Usb_Resume'
                            645 ;------------------------------------------------------------
                            646 ;k                         Allocated with name '_Usb_Resume_k_1_44'
                            647 ;------------------------------------------------------------
                    00DB    648 	G$Usb_Resume$0$0 ==.
                    00DB    649 	C$F3xx_USB0_InterruptServiceRoutine.c$170$1$42 ==.
                            650 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:170: void Usb_Resume(void)
                            651 ;	-----------------------------------------
                            652 ;	 function Usb_Resume
                            653 ;	-----------------------------------------
   0168                     654 _Usb_Resume:
                    00DB    655 	C$F3xx_USB0_InterruptServiceRoutine.c$174$1$44 ==.
                            656 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:174: k++;
   0168 74 01               657 	mov	a,#0x01
   016A 25 1B               658 	add	a,_Usb_Resume_k_1_44
   016C F5 1B               659 	mov	_Usb_Resume_k_1_44,a
   016E E4                  660 	clr	a
   016F 35 1C               661 	addc	a,(_Usb_Resume_k_1_44 + 1)
   0171 F5 1C               662 	mov	(_Usb_Resume_k_1_44 + 1),a
                    00E6    663 	C$F3xx_USB0_InterruptServiceRoutine.c$177$1$44 ==.
                    00E6    664 	XG$Usb_Resume$0$0 ==.
   0173 22                  665 	ret
                            666 ;------------------------------------------------------------
                            667 ;Allocation info for local variables in function 'Handle_Control'
                            668 ;------------------------------------------------------------
                            669 ;ControlReg                Allocated to registers r7 
                            670 ;------------------------------------------------------------
                    00E7    671 	G$Handle_Control$0$0 ==.
                    00E7    672 	C$F3xx_USB0_InterruptServiceRoutine.c$192$1$44 ==.
                            673 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:192: void Handle_Control (void)
                            674 ;	-----------------------------------------
                            675 ;	 function Handle_Control
                            676 ;	-----------------------------------------
   0174                     677 _Handle_Control:
                    00E7    678 	C$F3xx_USB0_InterruptServiceRoutine.c$197$1$46 ==.
                            679 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:197: POLL_WRITE_BYTE (INDEX, 0);         // Set Index to Endpoint Zero
   0174                     680 00101$:
   0174 E5 96               681 	mov	a,_USB0ADR
   0176 20 E7 FB            682 	jb	acc.7,00101$
   0179 75 96 0E            683 	mov	_USB0ADR,#0x0E
   017C 75 97 00            684 	mov	_USB0DAT,#0x00
                    00F2    685 	C$F3xx_USB0_InterruptServiceRoutine.c$198$1$46 ==.
                            686 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:198: POLL_READ_BYTE (E0CSR, ControlReg); // Read control register
   017F                     687 00104$:
   017F E5 96               688 	mov	a,_USB0ADR
   0181 20 E7 FB            689 	jb	acc.7,00104$
   0184 75 96 91            690 	mov	_USB0ADR,#0x91
   0187                     691 00107$:
   0187 E5 96               692 	mov	a,_USB0ADR
   0189 20 E7 FB            693 	jb	acc.7,00107$
   018C AF 97               694 	mov	r7,_USB0DAT
                    0101    695 	C$F3xx_USB0_InterruptServiceRoutine.c$200$1$46 ==.
                            696 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:200: if (EP_STATUS[0] == EP_ADDRESS)     // Handle Status Phase of Set Address
   018E 74 05               697 	mov	a,#0x05
   0190 B5 18 0E            698 	cjne	a,_EP_STATUS,00114$
                    0106    699 	C$F3xx_USB0_InterruptServiceRoutine.c$203$2$47 ==.
                            700 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:203: POLL_WRITE_BYTE (FADDR, SETUP.wValue.U8[LSB]);
   0193                     701 00110$:
   0193 E5 96               702 	mov	a,_USB0ADR
   0195 20 E7 FB            703 	jb	acc.7,00110$
   0198 75 96 00            704 	mov	_USB0ADR,#0x00
   019B 85 0B 97            705 	mov	_USB0DAT,(_SETUP + 0x0002)
                    0111    706 	C$F3xx_USB0_InterruptServiceRoutine.c$204$2$47 ==.
                            707 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:204: EP_STATUS[0] = EP_IDLE;
   019E 75 18 00            708 	mov	_EP_STATUS,#0x00
   01A1                     709 00114$:
                    0114    710 	C$F3xx_USB0_InterruptServiceRoutine.c$207$1$46 ==.
                            711 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:207: if (ControlReg & rbSTSTL)           // If last packet was a sent stall,
   01A1 EF                  712 	mov	a,r7
   01A2 30 E2 11            713 	jnb	acc.2,00119$
                    0118    714 	C$F3xx_USB0_InterruptServiceRoutine.c$210$2$48 ==.
                            715 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:210: POLL_WRITE_BYTE (E0CSR, 0);
   01A5                     716 00115$:
   01A5 E5 96               717 	mov	a,_USB0ADR
   01A7 20 E7 FB            718 	jb	acc.7,00115$
   01AA 75 96 11            719 	mov	_USB0ADR,#0x11
   01AD 75 97 00            720 	mov	_USB0DAT,#0x00
                    0123    721 	C$F3xx_USB0_InterruptServiceRoutine.c$211$2$48 ==.
                            722 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:211: EP_STATUS[0] = EP_IDLE;
   01B0 75 18 00            723 	mov	_EP_STATUS,#0x00
                    0126    724 	C$F3xx_USB0_InterruptServiceRoutine.c$212$2$48 ==.
                            725 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:212: return;
   01B3 02 04 A1            726 	ljmp	00198$
   01B6                     727 00119$:
                    0129    728 	C$F3xx_USB0_InterruptServiceRoutine.c$215$1$46 ==.
                            729 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:215: if (ControlReg & rbSUEND)           // If last SETUP transaction was
   01B6 EF                  730 	mov	a,r7
   01B7 30 E4 19            731 	jnb	acc.4,00127$
                    012D    732 	C$F3xx_USB0_InterruptServiceRoutine.c$217$2$49 ==.
                            733 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:217: POLL_WRITE_BYTE (E0CSR, rbDATAEND);
   01BA                     734 00120$:
   01BA E5 96               735 	mov	a,_USB0ADR
   01BC 20 E7 FB            736 	jb	acc.7,00120$
   01BF 75 96 11            737 	mov	_USB0ADR,#0x11
   01C2 75 97 08            738 	mov	_USB0DAT,#0x08
                    0138    739 	C$F3xx_USB0_InterruptServiceRoutine.c$219$2$49 ==.
                            740 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:219: POLL_WRITE_BYTE (E0CSR, rbSSUEND);
   01C5                     741 00123$:
   01C5 E5 96               742 	mov	a,_USB0ADR
   01C7 20 E7 FB            743 	jb	acc.7,00123$
   01CA 75 96 11            744 	mov	_USB0ADR,#0x11
   01CD 75 97 80            745 	mov	_USB0DAT,#0x80
                    0143    746 	C$F3xx_USB0_InterruptServiceRoutine.c$220$2$49 ==.
                            747 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:220: EP_STATUS[0] = EP_IDLE;          // to idle state
   01D0 75 18 00            748 	mov	_EP_STATUS,#0x00
   01D3                     749 00127$:
                    0146    750 	C$F3xx_USB0_InterruptServiceRoutine.c$223$1$46 ==.
                            751 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:223: if (EP_STATUS[0] == EP_IDLE)        // If Endpoint 0 is in idle mode
   01D3 E5 18               752 	mov	a,_EP_STATUS
   01D5 60 03               753 	jz	00299$
   01D7 02 03 32            754 	ljmp	00153$
   01DA                     755 00299$:
                    014D    756 	C$F3xx_USB0_InterruptServiceRoutine.c$225$2$50 ==.
                            757 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:225: if (ControlReg & rbOPRDY)        // Make sure that EP 0 has an Out Packet
   01DA EF                  758 	mov	a,r7
   01DB 20 E0 03            759 	jb	acc.0,00300$
   01DE 02 03 32            760 	ljmp	00153$
   01E1                     761 00300$:
                    0154    762 	C$F3xx_USB0_InterruptServiceRoutine.c$229$3$51 ==.
                            763 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:229: Fifo_Read (FIFO_EP0, 8, (unsigned char *)&SETUP);
   01E1 7E 09               764 	mov	r6,#_SETUP
   01E3 8E 1D               765 	mov	_Fifo_Read_PARM_3,r6
   01E5 75 1E 00            766 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   01E8 75 1F 40            767 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   01EB 75 1B 08            768 	mov	_Fifo_Read_PARM_2,#0x08
   01EE 75 1C 00            769 	mov	(_Fifo_Read_PARM_2 + 1),#0x00
   01F1 75 82 20            770 	mov	dpl,#0x20
   01F4 C0 07               771 	push	ar7
   01F6 12 05 22            772 	lcall	_Fifo_Read
   01F9 D0 07               773 	pop	ar7
                    016E    774 	C$F3xx_USB0_InterruptServiceRoutine.c$238$3$51 ==.
                            775 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:238: SETUP.wValue.U16 = SETUP.wValue.U8[MSB] + 256*SETUP.wValue.U8[LSB];
   01FB AD 0C               776 	mov	r5,(_SETUP + 0x0003)
   01FD 7E 00               777 	mov	r6,#0x00
   01FF AB 0B               778 	mov	r3,(_SETUP + 0x0002)
   0201 8B 04               779 	mov	ar4,r3
   0203 E4                  780 	clr	a
   0204 2D                  781 	add	a,r5
   0205 FD                  782 	mov	r5,a
   0206 EC                  783 	mov	a,r4
   0207 3E                  784 	addc	a,r6
   0208 FE                  785 	mov	r6,a
   0209 8D 0B               786 	mov	((_SETUP + 0x0002) + 0),r5
   020B 8E 0C               787 	mov	((_SETUP + 0x0002) + 1),r6
                    0180    788 	C$F3xx_USB0_InterruptServiceRoutine.c$239$3$51 ==.
                            789 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:239: SETUP.wIndex.U16 = SETUP.wIndex.U8[MSB] + 256*SETUP.wIndex.U8[LSB];
   020D AD 0E               790 	mov	r5,(_SETUP + 0x0005)
   020F 7E 00               791 	mov	r6,#0x00
   0211 AB 0D               792 	mov	r3,(_SETUP + 0x0004)
   0213 8B 04               793 	mov	ar4,r3
   0215 E4                  794 	clr	a
   0216 2D                  795 	add	a,r5
   0217 FD                  796 	mov	r5,a
   0218 EC                  797 	mov	a,r4
   0219 3E                  798 	addc	a,r6
   021A FE                  799 	mov	r6,a
   021B 8D 0D               800 	mov	((_SETUP + 0x0004) + 0),r5
   021D 8E 0E               801 	mov	((_SETUP + 0x0004) + 1),r6
                    0192    802 	C$F3xx_USB0_InterruptServiceRoutine.c$240$3$51 ==.
                            803 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:240: SETUP.wLength.U16 = SETUP.wLength.U8[MSB] + 256*SETUP.wLength.U8[LSB];
   021F AD 10               804 	mov	r5,(_SETUP + 0x0007)
   0221 7E 00               805 	mov	r6,#0x00
   0223 AB 0F               806 	mov	r3,(_SETUP + 0x0006)
   0225 8B 04               807 	mov	ar4,r3
   0227 E4                  808 	clr	a
   0228 FB                  809 	mov	r3,a
   0229 2D                  810 	add	a,r5
   022A FD                  811 	mov	r5,a
   022B EC                  812 	mov	a,r4
   022C 3E                  813 	addc	a,r6
   022D FE                  814 	mov	r6,a
   022E 8D 0F               815 	mov	((_SETUP + 0x0006) + 0),r5
   0230 8E 10               816 	mov	((_SETUP + 0x0006) + 1),r6
                    01A5    817 	C$F3xx_USB0_InterruptServiceRoutine.c$243$3$51 ==.
                            818 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:243: if( (SETUP.bmRequestType & ~0x80) == DSC_HID) {
   0232 AD 09               819 	mov	r5,_SETUP
   0234 7E 00               820 	mov	r6,#0x00
   0236 53 05 7F            821 	anl	ar5,#0x7F
   0239 BD 21 69            822 	cjne	r5,#0x21,00148$
   023C BE 00 66            823 	cjne	r6,#0x00,00148$
                    01B2    824 	C$F3xx_USB0_InterruptServiceRoutine.c$244$4$52 ==.
                            825 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:244: switch (SETUP.bRequest) {
   023F AE 0A               826 	mov	r6,(_SETUP + 0x0001)
   0241 BE 01 02            827 	cjne	r6,#0x01,00303$
   0244 80 19               828 	sjmp	00128$
   0246                     829 00303$:
   0246 BE 02 02            830 	cjne	r6,#0x02,00304$
   0249 80 28               831 	sjmp	00130$
   024B                     832 00304$:
   024B BE 03 02            833 	cjne	r6,#0x03,00305$
   024E 80 37               834 	sjmp	00132$
   0250                     835 00305$:
   0250 BE 09 02            836 	cjne	r6,#0x09,00306$
   0253 80 14               837 	sjmp	00129$
   0255                     838 00306$:
   0255 BE 0A 02            839 	cjne	r6,#0x0A,00307$
   0258 80 23               840 	sjmp	00131$
   025A                     841 00307$:
                    01CD    842 	C$F3xx_USB0_InterruptServiceRoutine.c$245$5$53 ==.
                            843 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:245: case GET_REPORT:
   025A BE 0B 3E            844 	cjne	r6,#0x0B,00134$
   025D 80 32               845 	sjmp	00133$
   025F                     846 00128$:
                    01D2    847 	C$F3xx_USB0_InterruptServiceRoutine.c$246$5$53 ==.
                            848 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:246: Get_Report ();
   025F C0 07               849 	push	ar7
   0261 12 0B 67            850 	lcall	_Get_Report
   0264 D0 07               851 	pop	ar7
                    01D9    852 	C$F3xx_USB0_InterruptServiceRoutine.c$247$5$53 ==.
                            853 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:247: break;
   0266 02 03 32            854 	ljmp	00153$
                    01DC    855 	C$F3xx_USB0_InterruptServiceRoutine.c$248$5$53 ==.
                            856 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:248: case SET_REPORT:
   0269                     857 00129$:
                    01DC    858 	C$F3xx_USB0_InterruptServiceRoutine.c$249$5$53 ==.
                            859 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:249: Set_Report ();
   0269 C0 07               860 	push	ar7
   026B 12 0B 97            861 	lcall	_Set_Report
   026E D0 07               862 	pop	ar7
                    01E3    863 	C$F3xx_USB0_InterruptServiceRoutine.c$250$5$53 ==.
                            864 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:250: break;
   0270 02 03 32            865 	ljmp	00153$
                    01E6    866 	C$F3xx_USB0_InterruptServiceRoutine.c$251$5$53 ==.
                            867 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:251: case GET_IDLE:
   0273                     868 00130$:
                    01E6    869 	C$F3xx_USB0_InterruptServiceRoutine.c$252$5$53 ==.
                            870 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:252: Get_Idle ();
   0273 C0 07               871 	push	ar7
   0275 12 0B 51            872 	lcall	_Get_Idle
   0278 D0 07               873 	pop	ar7
                    01ED    874 	C$F3xx_USB0_InterruptServiceRoutine.c$253$5$53 ==.
                            875 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:253: break;
   027A 02 03 32            876 	ljmp	00153$
                    01F0    877 	C$F3xx_USB0_InterruptServiceRoutine.c$254$5$53 ==.
                            878 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:254: case SET_IDLE:
   027D                     879 00131$:
                    01F0    880 	C$F3xx_USB0_InterruptServiceRoutine.c$255$5$53 ==.
                            881 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:255: Set_Idle ();
   027D C0 07               882 	push	ar7
   027F 12 0B 54            883 	lcall	_Set_Idle
   0282 D0 07               884 	pop	ar7
                    01F7    885 	C$F3xx_USB0_InterruptServiceRoutine.c$256$5$53 ==.
                            886 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:256: break;
   0284 02 03 32            887 	ljmp	00153$
                    01FA    888 	C$F3xx_USB0_InterruptServiceRoutine.c$257$5$53 ==.
                            889 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:257: case GET_PROTOCOL:
   0287                     890 00132$:
                    01FA    891 	C$F3xx_USB0_InterruptServiceRoutine.c$258$5$53 ==.
                            892 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:258: Get_Protocol ();
   0287 C0 07               893 	push	ar7
   0289 12 0B 52            894 	lcall	_Get_Protocol
   028C D0 07               895 	pop	ar7
                    0201    896 	C$F3xx_USB0_InterruptServiceRoutine.c$259$5$53 ==.
                            897 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:259: break;
   028E 02 03 32            898 	ljmp	00153$
                    0204    899 	C$F3xx_USB0_InterruptServiceRoutine.c$260$5$53 ==.
                            900 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:260: case SET_PROTOCOL:
   0291                     901 00133$:
                    0204    902 	C$F3xx_USB0_InterruptServiceRoutine.c$261$5$53 ==.
                            903 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:261: Set_Protocol ();
   0291 C0 07               904 	push	ar7
   0293 12 0B 53            905 	lcall	_Set_Protocol
   0296 D0 07               906 	pop	ar7
                    020B    907 	C$F3xx_USB0_InterruptServiceRoutine.c$262$5$53 ==.
                            908 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:262: break;
   0298 02 03 32            909 	ljmp	00153$
                    020E    910 	C$F3xx_USB0_InterruptServiceRoutine.c$263$5$53 ==.
                            911 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:263: default:
   029B                     912 00134$:
                    020E    913 	C$F3xx_USB0_InterruptServiceRoutine.c$264$5$53 ==.
                            914 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:264: Force_Stall ();      // Send stall to host if invalid
   029B C0 07               915 	push	ar7
   029D 12 05 E9            916 	lcall	_Force_Stall
   02A0 D0 07               917 	pop	ar7
                    0215    918 	C$F3xx_USB0_InterruptServiceRoutine.c$266$3$51 ==.
                            919 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:266: }
   02A2 02 03 32            920 	ljmp	00153$
   02A5                     921 00148$:
                    0218    922 	C$F3xx_USB0_InterruptServiceRoutine.c$269$3$51 ==.
                            923 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:269: switch (SETUP.bRequest)       // Call correct subroutine to handle
   02A5 E5 0A               924 	mov	a,(_SETUP + 0x0001)
   02A7 FE                  925 	mov	r6,a
   02A8 24 F4               926 	add	a,#0xff - 0x0B
   02AA 50 03               927 	jnc	00309$
   02AC 02 03 2B            928 	ljmp	00145$
   02AF                     929 00309$:
   02AF EE                  930 	mov	a,r6
   02B0 2E                  931 	add	a,r6
   02B1 2E                  932 	add	a,r6
   02B2 90 02 B6            933 	mov	dptr,#00310$
   02B5 73                  934 	jmp	@a+dptr
   02B6                     935 00310$:
   02B6 02 02 DA            936 	ljmp	00136$
   02B9 02 02 E3            937 	ljmp	00137$
   02BC 02 03 2B            938 	ljmp	00145$
   02BF 02 02 EC            939 	ljmp	00138$
   02C2 02 03 2B            940 	ljmp	00145$
   02C5 02 02 F5            941 	ljmp	00139$
   02C8 02 02 FE            942 	ljmp	00140$
   02CB 02 03 2B            943 	ljmp	00145$
   02CE 02 03 07            944 	ljmp	00141$
   02D1 02 03 10            945 	ljmp	00142$
   02D4 02 03 19            946 	ljmp	00143$
   02D7 02 03 22            947 	ljmp	00144$
                    024D    948 	C$F3xx_USB0_InterruptServiceRoutine.c$271$4$54 ==.
                            949 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:271: case GET_STATUS:
   02DA                     950 00136$:
                    024D    951 	C$F3xx_USB0_InterruptServiceRoutine.c$272$4$54 ==.
                            952 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:272: Get_Status ();
   02DA C0 07               953 	push	ar7
   02DC 12 06 85            954 	lcall	_Get_Status
   02DF D0 07               955 	pop	ar7
                    0254    956 	C$F3xx_USB0_InterruptServiceRoutine.c$273$4$54 ==.
                            957 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:273: break;
                    0254    958 	C$F3xx_USB0_InterruptServiceRoutine.c$274$4$54 ==.
                            959 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:274: case CLEAR_FEATURE:
   02E1 80 4F               960 	sjmp	00153$
   02E3                     961 00137$:
                    0256    962 	C$F3xx_USB0_InterruptServiceRoutine.c$275$4$54 ==.
                            963 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:275: Clear_Feature ();
   02E3 C0 07               964 	push	ar7
   02E5 12 07 4F            965 	lcall	_Clear_Feature
   02E8 D0 07               966 	pop	ar7
                    025D    967 	C$F3xx_USB0_InterruptServiceRoutine.c$276$4$54 ==.
                            968 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:276: break;
                    025D    969 	C$F3xx_USB0_InterruptServiceRoutine.c$277$4$54 ==.
                            970 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:277: case SET_FEATURE:
   02EA 80 46               971 	sjmp	00153$
   02EC                     972 00138$:
                    025F    973 	C$F3xx_USB0_InterruptServiceRoutine.c$278$4$54 ==.
                            974 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:278: Set_Feature ();
   02EC C0 07               975 	push	ar7
   02EE 12 07 C8            976 	lcall	_Set_Feature
   02F1 D0 07               977 	pop	ar7
                    0266    978 	C$F3xx_USB0_InterruptServiceRoutine.c$279$4$54 ==.
                            979 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:279: break;
                    0266    980 	C$F3xx_USB0_InterruptServiceRoutine.c$280$4$54 ==.
                            981 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:280: case SET_ADDRESS:
   02F3 80 3D               982 	sjmp	00153$
   02F5                     983 00139$:
                    0268    984 	C$F3xx_USB0_InterruptServiceRoutine.c$281$4$54 ==.
                            985 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:281: Set_Address ();
   02F5 C0 07               986 	push	ar7
   02F7 12 08 41            987 	lcall	_Set_Address
   02FA D0 07               988 	pop	ar7
                    026F    989 	C$F3xx_USB0_InterruptServiceRoutine.c$282$4$54 ==.
                            990 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:282: break;
                    026F    991 	C$F3xx_USB0_InterruptServiceRoutine.c$283$4$54 ==.
                            992 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:283: case GET_DESCRIPTOR:
   02FC 80 34               993 	sjmp	00153$
   02FE                     994 00140$:
                    0271    995 	C$F3xx_USB0_InterruptServiceRoutine.c$284$4$54 ==.
                            996 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:284: Get_Descriptor ();
   02FE C0 07               997 	push	ar7
   0300 12 08 83            998 	lcall	_Get_Descriptor
   0303 D0 07               999 	pop	ar7
                    0278   1000 	C$F3xx_USB0_InterruptServiceRoutine.c$285$4$54 ==.
                           1001 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:285: break;
                    0278   1002 	C$F3xx_USB0_InterruptServiceRoutine.c$286$4$54 ==.
                           1003 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:286: case GET_CONFIGURATION:
   0305 80 2B              1004 	sjmp	00153$
   0307                    1005 00141$:
                    027A   1006 	C$F3xx_USB0_InterruptServiceRoutine.c$287$4$54 ==.
                           1007 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:287: Get_Configuration ();
   0307 C0 07              1008 	push	ar7
   0309 12 09 EF           1009 	lcall	_Get_Configuration
   030C D0 07              1010 	pop	ar7
                    0281   1011 	C$F3xx_USB0_InterruptServiceRoutine.c$288$4$54 ==.
                           1012 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:288: break;
                    0281   1013 	C$F3xx_USB0_InterruptServiceRoutine.c$289$4$54 ==.
                           1014 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:289: case SET_CONFIGURATION:
   030E 80 22              1015 	sjmp	00153$
   0310                    1016 00142$:
                    0283   1017 	C$F3xx_USB0_InterruptServiceRoutine.c$290$4$54 ==.
                           1018 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:290: Set_Configuration ();
   0310 C0 07              1019 	push	ar7
   0312 12 0A 57           1020 	lcall	_Set_Configuration
   0315 D0 07              1021 	pop	ar7
                    028A   1022 	C$F3xx_USB0_InterruptServiceRoutine.c$291$4$54 ==.
                           1023 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:291: break;
                    028A   1024 	C$F3xx_USB0_InterruptServiceRoutine.c$292$4$54 ==.
                           1025 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:292: case GET_INTERFACE:
   0317 80 19              1026 	sjmp	00153$
   0319                    1027 00143$:
                    028C   1028 	C$F3xx_USB0_InterruptServiceRoutine.c$293$4$54 ==.
                           1029 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:293: Get_Interface ();
   0319 C0 07              1030 	push	ar7
   031B 12 0A CA           1031 	lcall	_Get_Interface
   031E D0 07              1032 	pop	ar7
                    0293   1033 	C$F3xx_USB0_InterruptServiceRoutine.c$294$4$54 ==.
                           1034 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:294: break;
                    0293   1035 	C$F3xx_USB0_InterruptServiceRoutine.c$295$4$54 ==.
                           1036 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:295: case SET_INTERFACE:
   0320 80 10              1037 	sjmp	00153$
   0322                    1038 00144$:
                    0295   1039 	C$F3xx_USB0_InterruptServiceRoutine.c$296$4$54 ==.
                           1040 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:296: Set_Interface ();
   0322 C0 07              1041 	push	ar7
   0324 12 0B 1E           1042 	lcall	_Set_Interface
   0327 D0 07              1043 	pop	ar7
                    029C   1044 	C$F3xx_USB0_InterruptServiceRoutine.c$297$4$54 ==.
                           1045 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:297: break;
                    029C   1046 	C$F3xx_USB0_InterruptServiceRoutine.c$298$4$54 ==.
                           1047 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:298: default:
   0329 80 07              1048 	sjmp	00153$
   032B                    1049 00145$:
                    029E   1050 	C$F3xx_USB0_InterruptServiceRoutine.c$299$4$54 ==.
                           1051 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:299: Force_Stall ();         // Send stall to host if invalid request
   032B C0 07              1052 	push	ar7
   032D 12 05 E9           1053 	lcall	_Force_Stall
   0330 D0 07              1054 	pop	ar7
                    02A5   1055 	C$F3xx_USB0_InterruptServiceRoutine.c$301$1$46 ==.
                           1056 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:301: }
   0332                    1057 00153$:
                    02A5   1058 	C$F3xx_USB0_InterruptServiceRoutine.c$305$1$46 ==.
                           1059 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:305: if (EP_STATUS[0] == EP_TX)          // See if endpoint should transmit
   0332 74 01              1060 	mov	a,#0x01
   0334 B5 18 02           1061 	cjne	a,_EP_STATUS,00311$
   0337 80 03              1062 	sjmp	00312$
   0339                    1063 00311$:
   0339 02 03 DB           1064 	ljmp	00174$
   033C                    1065 00312$:
                    02AF   1066 	C$F3xx_USB0_InterruptServiceRoutine.c$307$2$55 ==.
                           1067 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:307: if (!(ControlReg & rbINPRDY) )   // Don't overwrite last packet
   033C EF                 1068 	mov	a,r7
   033D 30 E1 03           1069 	jnb	acc.1,00313$
   0340 02 03 DB           1070 	ljmp	00174$
   0343                    1071 00313$:
                    02B6   1072 	C$F3xx_USB0_InterruptServiceRoutine.c$310$3$56 ==.
                           1073 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:310: POLL_READ_BYTE (E0CSR, ControlReg);
   0343                    1074 00154$:
   0343 E5 96              1075 	mov	a,_USB0ADR
   0345 20 E7 FB           1076 	jb	acc.7,00154$
   0348 75 96 91           1077 	mov	_USB0ADR,#0x91
   034B                    1078 00157$:
   034B E5 96              1079 	mov	a,_USB0ADR
   034D 20 E7 FB           1080 	jb	acc.7,00157$
                    02C3   1081 	C$F3xx_USB0_InterruptServiceRoutine.c$314$3$56 ==.
                           1082 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:314: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
   0350 E5 97              1083 	mov	a,_USB0DAT
   0352 FF                 1084 	mov	r7,a
   0353 30 E4 07           1085 	jnb	acc.4,00168$
   0356 EF                 1086 	mov	a,r7
   0357 30 E0 03           1087 	jnb	acc.0,00317$
   035A 02 03 DB           1088 	ljmp	00174$
   035D                    1089 00317$:
   035D                    1090 00168$:
                    02D0   1091 	C$F3xx_USB0_InterruptServiceRoutine.c$317$4$57 ==.
                           1092 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:317: ControlReg = rbINPRDY;
   035D 7F 02              1093 	mov	r7,#0x02
                    02D2   1094 	C$F3xx_USB0_InterruptServiceRoutine.c$318$4$57 ==.
                           1095 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:318: if (DATASIZE >= EP0_PACKET_SIZE)
   035F C3                 1096 	clr	c
   0360 E5 11              1097 	mov	a,_DATASIZE
   0362 94 40              1098 	subb	a,#0x40
   0364 E5 12              1099 	mov	a,(_DATASIZE + 1)
   0366 94 00              1100 	subb	a,#0x00
   0368 40 3D              1101 	jc	00161$
                    02DD   1102 	C$F3xx_USB0_InterruptServiceRoutine.c$322$5$58 ==.
                           1103 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:322: (unsigned char*)DATAPTR);
   036A 75 1B 40           1104 	mov	_Fifo_Write_InterruptServiceRoutine_PARM_2,#0x40
   036D 75 1C 00           1105 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1),#0x00
   0370 85 15 1D           1106 	mov	_Fifo_Write_InterruptServiceRoutine_PARM_3,_DATAPTR
   0373 85 16 1E           1107 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1),(_DATAPTR + 1)
   0376 85 17 1F           1108 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2),(_DATAPTR + 2)
   0379 75 82 20           1109 	mov	dpl,#0x20
   037C C0 07              1110 	push	ar7
   037E 12 05 A7           1111 	lcall	_Fifo_Write_InterruptServiceRoutine
   0381 D0 07              1112 	pop	ar7
                    02F6   1113 	C$F3xx_USB0_InterruptServiceRoutine.c$324$5$58 ==.
                           1114 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:324: DATAPTR  += EP0_PACKET_SIZE;
   0383 74 40              1115 	mov	a,#0x40
   0385 25 15              1116 	add	a,_DATAPTR
   0387 F5 15              1117 	mov	_DATAPTR,a
   0389 E4                 1118 	clr	a
   038A 35 16              1119 	addc	a,(_DATAPTR + 1)
   038C F5 16              1120 	mov	(_DATAPTR + 1),a
                    0301   1121 	C$F3xx_USB0_InterruptServiceRoutine.c$326$5$58 ==.
                           1122 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:326: DATASIZE -= EP0_PACKET_SIZE;
   038E E5 11              1123 	mov	a,_DATASIZE
   0390 24 C0              1124 	add	a,#0xC0
   0392 F5 11              1125 	mov	_DATASIZE,a
   0394 E5 12              1126 	mov	a,(_DATASIZE + 1)
   0396 34 FF              1127 	addc	a,#0xFF
   0398 F5 12              1128 	mov	(_DATASIZE + 1),a
                    030D   1129 	C$F3xx_USB0_InterruptServiceRoutine.c$328$5$58 ==.
                           1130 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:328: DATASENT += EP0_PACKET_SIZE;
   039A 74 40              1131 	mov	a,#0x40
   039C 25 13              1132 	add	a,_DATASENT
   039E F5 13              1133 	mov	_DATASENT,a
   03A0 E4                 1134 	clr	a
   03A1 35 14              1135 	addc	a,(_DATASENT + 1)
   03A3 F5 14              1136 	mov	(_DATASENT + 1),a
   03A5 80 1A              1137 	sjmp	00162$
   03A7                    1138 00161$:
                    031A   1139 	C$F3xx_USB0_InterruptServiceRoutine.c$334$5$59 ==.
                           1140 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:334: (unsigned char*)DATAPTR);
   03A7 85 11 1B           1141 	mov	_Fifo_Write_InterruptServiceRoutine_PARM_2,_DATASIZE
   03AA 85 12 1C           1142 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1),(_DATASIZE + 1)
   03AD 85 15 1D           1143 	mov	_Fifo_Write_InterruptServiceRoutine_PARM_3,_DATAPTR
   03B0 85 16 1E           1144 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1),(_DATAPTR + 1)
   03B3 85 17 1F           1145 	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2),(_DATAPTR + 2)
   03B6 75 82 20           1146 	mov	dpl,#0x20
   03B9 12 05 A7           1147 	lcall	_Fifo_Write_InterruptServiceRoutine
                    032F   1148 	C$F3xx_USB0_InterruptServiceRoutine.c$335$5$59 ==.
                           1149 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:335: ControlReg |= rbDATAEND;// Add Data End bit to bitmask
   03BC 7F 0A              1150 	mov	r7,#0x0A
                    0331   1151 	C$F3xx_USB0_InterruptServiceRoutine.c$336$5$59 ==.
                           1152 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:336: EP_STATUS[0] = EP_IDLE; // Return EP 0 to idle state
   03BE 75 18 00           1153 	mov	_EP_STATUS,#0x00
   03C1                    1154 00162$:
                    0334   1155 	C$F3xx_USB0_InterruptServiceRoutine.c$338$4$57 ==.
                           1156 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:338: if (DATASENT == SETUP.wLength.U16)
   03C1 E5 0F              1157 	mov	a,(_SETUP + 0x0006)
   03C3 B5 13 0B           1158 	cjne	a,_DATASENT,00165$
   03C6 E5 10              1159 	mov	a,((_SETUP + 0x0006) + 1)
   03C8 B5 14 06           1160 	cjne	a,(_DATASENT + 1),00165$
                    033E   1161 	C$F3xx_USB0_InterruptServiceRoutine.c$343$5$60 ==.
                           1162 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:343: ControlReg |= rbDATAEND;// Add Data End bit to mask
   03CB 43 07 08           1163 	orl	ar7,#0x08
                    0341   1164 	C$F3xx_USB0_InterruptServiceRoutine.c$344$5$60 ==.
                           1165 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:344: EP_STATUS[0] = EP_IDLE; // Return EP 0 to idle state
   03CE 75 18 00           1166 	mov	_EP_STATUS,#0x00
                    0344   1167 	C$F3xx_USB0_InterruptServiceRoutine.c$347$4$57 ==.
                           1168 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:347: POLL_WRITE_BYTE(E0CSR, ControlReg);
   03D1                    1169 00165$:
   03D1 E5 96              1170 	mov	a,_USB0ADR
   03D3 20 E7 FB           1171 	jb	acc.7,00165$
   03D6 75 96 11           1172 	mov	_USB0ADR,#0x11
   03D9 8F 97              1173 	mov	_USB0DAT,r7
   03DB                    1174 00174$:
                    034E   1175 	C$F3xx_USB0_InterruptServiceRoutine.c$352$1$46 ==.
                           1176 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:352: if (EP_STATUS[0] == EP_RX)          // See if endpoint should transmit
   03DB 74 02              1177 	mov	a,#0x02
   03DD B5 18 02           1178 	cjne	a,_EP_STATUS,00322$
   03E0 80 03              1179 	sjmp	00323$
   03E2                    1180 00322$:
   03E2 02 04 A1           1181 	ljmp	00198$
   03E5                    1182 00323$:
                    0358   1183 	C$F3xx_USB0_InterruptServiceRoutine.c$355$2$61 ==.
                           1184 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:355: POLL_READ_BYTE (E0CSR, ControlReg);
   03E5                    1185 00175$:
   03E5 E5 96              1186 	mov	a,_USB0ADR
   03E7 20 E7 FB           1187 	jb	acc.7,00175$
   03EA 75 96 91           1188 	mov	_USB0ADR,#0x91
   03ED                    1189 00178$:
   03ED E5 96              1190 	mov	a,_USB0ADR
   03EF 20 E7 FB           1191 	jb	acc.7,00178$
                    0365   1192 	C$F3xx_USB0_InterruptServiceRoutine.c$356$2$61 ==.
                           1193 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:356: if (ControlReg & rbOPRDY)        // Verify packet was received
   03F2 E5 97              1194 	mov	a,_USB0DAT
   03F4 FF                 1195 	mov	r7,a
   03F5 20 E0 03           1196 	jb	acc.0,00326$
   03F8 02 04 A1           1197 	ljmp	00198$
   03FB                    1198 00326$:
                    036E   1199 	C$F3xx_USB0_InterruptServiceRoutine.c$358$3$62 ==.
                           1200 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:358: ControlReg = rbSOPRDY;
   03FB 7F 40              1201 	mov	r7,#0x40
                    0370   1202 	C$F3xx_USB0_InterruptServiceRoutine.c$359$3$62 ==.
                           1203 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:359: if (DATASIZE >= EP0_PACKET_SIZE)
   03FD C3                 1204 	clr	c
   03FE E5 11              1205 	mov	a,_DATASIZE
   0400 94 40              1206 	subb	a,#0x40
   0402 E5 12              1207 	mov	a,(_DATASIZE + 1)
   0404 94 00              1208 	subb	a,#0x00
   0406 40 3D              1209 	jc	00182$
                    037B   1210 	C$F3xx_USB0_InterruptServiceRoutine.c$361$4$63 ==.
                           1211 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:361: Fifo_Read(FIFO_EP0, EP0_PACKET_SIZE, (unsigned char*)DATAPTR);
   0408 75 1B 40           1212 	mov	_Fifo_Read_PARM_2,#0x40
   040B 75 1C 00           1213 	mov	(_Fifo_Read_PARM_2 + 1),#0x00
   040E 85 15 1D           1214 	mov	_Fifo_Read_PARM_3,_DATAPTR
   0411 85 16 1E           1215 	mov	(_Fifo_Read_PARM_3 + 1),(_DATAPTR + 1)
   0414 85 17 1F           1216 	mov	(_Fifo_Read_PARM_3 + 2),(_DATAPTR + 2)
   0417 75 82 20           1217 	mov	dpl,#0x20
   041A C0 07              1218 	push	ar7
   041C 12 05 22           1219 	lcall	_Fifo_Read
   041F D0 07              1220 	pop	ar7
                    0394   1221 	C$F3xx_USB0_InterruptServiceRoutine.c$363$4$63 ==.
                           1222 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:363: DATAPTR  += EP0_PACKET_SIZE;
   0421 74 40              1223 	mov	a,#0x40
   0423 25 15              1224 	add	a,_DATAPTR
   0425 F5 15              1225 	mov	_DATAPTR,a
   0427 E4                 1226 	clr	a
   0428 35 16              1227 	addc	a,(_DATAPTR + 1)
   042A F5 16              1228 	mov	(_DATAPTR + 1),a
                    039F   1229 	C$F3xx_USB0_InterruptServiceRoutine.c$365$4$63 ==.
                           1230 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:365: DATASIZE -= EP0_PACKET_SIZE;
   042C E5 11              1231 	mov	a,_DATASIZE
   042E 24 C0              1232 	add	a,#0xC0
   0430 F5 11              1233 	mov	_DATASIZE,a
   0432 E5 12              1234 	mov	a,(_DATASIZE + 1)
   0434 34 FF              1235 	addc	a,#0xFF
   0436 F5 12              1236 	mov	(_DATASIZE + 1),a
                    03AB   1237 	C$F3xx_USB0_InterruptServiceRoutine.c$367$4$63 ==.
                           1238 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:367: DATASENT += EP0_PACKET_SIZE;
   0438 74 40              1239 	mov	a,#0x40
   043A 25 13              1240 	add	a,_DATASENT
   043C F5 13              1241 	mov	_DATASENT,a
   043E E4                 1242 	clr	a
   043F 35 14              1243 	addc	a,(_DATASENT + 1)
   0441 F5 14              1244 	mov	(_DATASENT + 1),a
   0443 80 1A              1245 	sjmp	00183$
   0445                    1246 00182$:
                    03B8   1247 	C$F3xx_USB0_InterruptServiceRoutine.c$372$4$64 ==.
                           1248 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:372: Fifo_Read (FIFO_EP0, DATASIZE, (unsigned char*) DATAPTR);
   0445 85 11 1B           1249 	mov	_Fifo_Read_PARM_2,_DATASIZE
   0448 85 12 1C           1250 	mov	(_Fifo_Read_PARM_2 + 1),(_DATASIZE + 1)
   044B 85 15 1D           1251 	mov	_Fifo_Read_PARM_3,_DATAPTR
   044E 85 16 1E           1252 	mov	(_Fifo_Read_PARM_3 + 1),(_DATAPTR + 1)
   0451 85 17 1F           1253 	mov	(_Fifo_Read_PARM_3 + 2),(_DATAPTR + 2)
   0454 75 82 20           1254 	mov	dpl,#0x20
   0457 12 05 22           1255 	lcall	_Fifo_Read
                    03CD   1256 	C$F3xx_USB0_InterruptServiceRoutine.c$374$4$64 ==.
                           1257 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:374: ControlReg |= rbDATAEND;   // signal end of data
   045A 7F 48              1258 	mov	r7,#0x48
                    03CF   1259 	C$F3xx_USB0_InterruptServiceRoutine.c$375$4$64 ==.
                           1260 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:375: EP_STATUS[0] = EP_IDLE;    // set Endpoint to IDLE
   045C 75 18 00           1261 	mov	_EP_STATUS,#0x00
   045F                    1262 00183$:
                    03D2   1263 	C$F3xx_USB0_InterruptServiceRoutine.c$377$3$62 ==.
                           1264 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:377: if (DATASENT == SETUP.wLength.U16)
   045F E5 0F              1265 	mov	a,(_SETUP + 0x0006)
   0461 B5 13 0B           1266 	cjne	a,_DATASENT,00185$
   0464 E5 10              1267 	mov	a,((_SETUP + 0x0006) + 1)
   0466 B5 14 06           1268 	cjne	a,(_DATASENT + 1),00185$
                    03DC   1269 	C$F3xx_USB0_InterruptServiceRoutine.c$379$4$65 ==.
                           1270 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:379: ControlReg |= rbDATAEND;
   0469 43 07 08           1271 	orl	ar7,#0x08
                    03DF   1272 	C$F3xx_USB0_InterruptServiceRoutine.c$380$4$65 ==.
                           1273 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:380: EP_STATUS[0] = EP_IDLE;
   046C 75 18 00           1274 	mov	_EP_STATUS,#0x00
   046F                    1275 00185$:
                    03E2   1276 	C$F3xx_USB0_InterruptServiceRoutine.c$385$3$62 ==.
                           1277 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:385: if ( (EP_STATUS[0] == EP_IDLE) && (SETUP.bRequest == SET_REPORT) )
   046F E5 18              1278 	mov	a,_EP_STATUS
   0471 70 1D              1279 	jnz	00187$
   0473 74 09              1280 	mov	a,#0x09
   0475 B5 0A 18           1281 	cjne	a,(_SETUP + 0x0001),00187$
                    03EB   1282 	C$F3xx_USB0_InterruptServiceRoutine.c$387$4$66 ==.
                           1283 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:387: ReportHandler_OUT (*DATAPTR);
   0478 AC 15              1284 	mov	r4,_DATAPTR
   047A AD 16              1285 	mov	r5,(_DATAPTR + 1)
   047C AE 17              1286 	mov	r6,(_DATAPTR + 2)
   047E 8C 82              1287 	mov	dpl,r4
   0480 8D 83              1288 	mov	dph,r5
   0482 8E F0              1289 	mov	b,r6
   0484 12 0C D5           1290 	lcall	__gptrget
   0487 F5 82              1291 	mov	dpl,a
   0489 C0 07              1292 	push	ar7
   048B 12 0B F6           1293 	lcall	_ReportHandler_OUT
   048E D0 07              1294 	pop	ar7
   0490                    1295 00187$:
                    0403   1296 	C$F3xx_USB0_InterruptServiceRoutine.c$390$3$62 ==.
                           1297 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:390: if (EP_STATUS[0] != EP_STALL) POLL_WRITE_BYTE (E0CSR, ControlReg);
   0490 74 04              1298 	mov	a,#0x04
   0492 B5 18 02           1299 	cjne	a,_EP_STATUS,00333$
   0495 80 05              1300 	sjmp	00193$
   0497                    1301 00333$:
   0497                    1302 00189$:
   0497 E5 96              1303 	mov	a,_USB0ADR
   0499 20 E7 FB           1304 	jb	acc.7,00189$
   049C                    1305 00193$:
   049C 75 96 11           1306 	mov	_USB0ADR,#0x11
   049F 8F 97              1307 	mov	_USB0DAT,r7
   04A1                    1308 00198$:
                    0414   1309 	C$F3xx_USB0_InterruptServiceRoutine.c$394$1$46 ==.
                    0414   1310 	XG$Handle_Control$0$0 ==.
   04A1 22                 1311 	ret
                           1312 ;------------------------------------------------------------
                           1313 ;Allocation info for local variables in function 'Handle_In1'
                           1314 ;------------------------------------------------------------
                    0415   1315 	G$Handle_In1$0$0 ==.
                    0415   1316 	C$F3xx_USB0_InterruptServiceRoutine.c$405$1$46 ==.
                           1317 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:405: void Handle_In1 ()
                           1318 ;	-----------------------------------------
                           1319 ;	 function Handle_In1
                           1320 ;	-----------------------------------------
   04A2                    1321 _Handle_In1:
                    0415   1322 	C$F3xx_USB0_InterruptServiceRoutine.c$407$1$67 ==.
                           1323 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:407: EP_STATUS[1] = EP_IDLE;
   04A2 75 19 00           1324 	mov	(_EP_STATUS + 0x0001),#0x00
                    0418   1325 	C$F3xx_USB0_InterruptServiceRoutine.c$408$1$67 ==.
                    0418   1326 	XG$Handle_In1$0$0 ==.
   04A5 22                 1327 	ret
                           1328 ;------------------------------------------------------------
                           1329 ;Allocation info for local variables in function 'Handle_Out1'
                           1330 ;------------------------------------------------------------
                           1331 ;Count                     Allocated to registers 
                           1332 ;ControlReg                Allocated to registers r7 
                           1333 ;------------------------------------------------------------
                    0419   1334 	G$Handle_Out1$0$0 ==.
                    0419   1335 	C$F3xx_USB0_InterruptServiceRoutine.c$417$1$67 ==.
                           1336 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:417: void Handle_Out1 ()
                           1337 ;	-----------------------------------------
                           1338 ;	 function Handle_Out1
                           1339 ;	-----------------------------------------
   04A6                    1340 _Handle_Out1:
                    0419   1341 	C$F3xx_USB0_InterruptServiceRoutine.c$423$1$68 ==.
                           1342 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:423: POLL_WRITE_BYTE (INDEX, 1);         // Set index to endpoint 2 registers
   04A6                    1343 00101$:
   04A6 E5 96              1344 	mov	a,_USB0ADR
   04A8 20 E7 FB           1345 	jb	acc.7,00101$
   04AB 75 96 0E           1346 	mov	_USB0ADR,#0x0E
   04AE 75 97 01           1347 	mov	_USB0DAT,#0x01
                    0424   1348 	C$F3xx_USB0_InterruptServiceRoutine.c$424$1$68 ==.
                           1349 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:424: POLL_READ_BYTE (EOUTCSR1, ControlReg);
   04B1                    1350 00104$:
   04B1 E5 96              1351 	mov	a,_USB0ADR
   04B3 20 E7 FB           1352 	jb	acc.7,00104$
   04B6 75 96 94           1353 	mov	_USB0ADR,#0x94
   04B9                    1354 00107$:
   04B9 E5 96              1355 	mov	a,_USB0ADR
   04BB 20 E7 FB           1356 	jb	acc.7,00107$
   04BE AF 97              1357 	mov	r7,_USB0DAT
                    0433   1358 	C$F3xx_USB0_InterruptServiceRoutine.c$426$1$68 ==.
                           1359 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:426: if (EP_STATUS[1] == EP_HALT)        // If endpoint is halted, send a stall
   04C0 74 03              1360 	mov	a,#0x03
   04C2 B5 19 0D           1361 	cjne	a,(_EP_STATUS + 0x0001),00122$
                    0438   1362 	C$F3xx_USB0_InterruptServiceRoutine.c$428$2$69 ==.
                           1363 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:428: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
   04C5                    1364 00110$:
   04C5 E5 96              1365 	mov	a,_USB0ADR
   04C7 20 E7 FB           1366 	jb	acc.7,00110$
   04CA 75 96 14           1367 	mov	_USB0ADR,#0x14
   04CD 75 97 20           1368 	mov	_USB0DAT,#0x20
   04D0 80 43              1369 	sjmp	00124$
   04D2                    1370 00122$:
                    0445   1371 	C$F3xx_USB0_InterruptServiceRoutine.c$434$2$70 ==.
                           1372 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:434: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last
   04D2 EF                 1373 	mov	a,r7
   04D3 30 E6 0B           1374 	jnb	acc.6,00117$
                    0449   1375 	C$F3xx_USB0_InterruptServiceRoutine.c$437$3$71 ==.
                           1376 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:437: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
   04D6                    1377 00113$:
   04D6 E5 96              1378 	mov	a,_USB0ADR
   04D8 20 E7 FB           1379 	jb	acc.7,00113$
   04DB 75 96 14           1380 	mov	_USB0ADR,#0x14
   04DE 75 97 80           1381 	mov	_USB0DAT,#0x80
   04E1                    1382 00117$:
                    0454   1383 	C$F3xx_USB0_InterruptServiceRoutine.c$440$2$70 ==.
                           1384 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:440: Setup_OUT_BUFFER ();             // configure buffer to save
   04E1 12 0B E3           1385 	lcall	_Setup_OUT_BUFFER
                    0457   1386 	C$F3xx_USB0_InterruptServiceRoutine.c$442$2$70 ==.
                           1387 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:442: Fifo_Read(FIFO_EP1, OUT_BUFFER.Length, OUT_BUFFER.Ptr);
   04E4 85 26 1B           1388 	mov	_Fifo_Read_PARM_2,_OUT_BUFFER
   04E7 75 1C 00           1389 	mov	(_Fifo_Read_PARM_2 + 1),#0x00
   04EA 85 27 1D           1390 	mov	_Fifo_Read_PARM_3,(_OUT_BUFFER + 0x0001)
   04ED 85 28 1E           1391 	mov	(_Fifo_Read_PARM_3 + 1),((_OUT_BUFFER + 0x0001) + 1)
   04F0 85 29 1F           1392 	mov	(_Fifo_Read_PARM_3 + 2),((_OUT_BUFFER + 0x0001) + 2)
   04F3 75 82 21           1393 	mov	dpl,#0x21
   04F6 12 05 22           1394 	lcall	_Fifo_Read
                    046C   1395 	C$F3xx_USB0_InterruptServiceRoutine.c$449$2$70 ==.
                           1396 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:449: ReportHandler_OUT (OUT_BUFFER.Ptr[0]);
   04F9 85 27 82           1397 	mov	dpl,(_OUT_BUFFER + 0x0001)
   04FC 85 28 83           1398 	mov	dph,((_OUT_BUFFER + 0x0001) + 1)
   04FF 85 29 F0           1399 	mov	b,((_OUT_BUFFER + 0x0001) + 2)
   0502 12 0C D5           1400 	lcall	__gptrget
   0505 F5 82              1401 	mov	dpl,a
   0507 12 0B F6           1402 	lcall	_ReportHandler_OUT
                    047D   1403 	C$F3xx_USB0_InterruptServiceRoutine.c$451$2$70 ==.
                           1404 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:451: POLL_WRITE_BYTE (EOUTCSR1, 0);   // Clear Out Packet ready bit
   050A                    1405 00118$:
   050A E5 96              1406 	mov	a,_USB0ADR
   050C 20 E7 FB           1407 	jb	acc.7,00118$
   050F 75 96 14           1408 	mov	_USB0ADR,#0x14
   0512 75 97 00           1409 	mov	_USB0DAT,#0x00
   0515                    1410 00124$:
                    0488   1411 	C$F3xx_USB0_InterruptServiceRoutine.c$453$1$68 ==.
                    0488   1412 	XG$Handle_Out1$0$0 ==.
   0515 22                 1413 	ret
                           1414 ;------------------------------------------------------------
                           1415 ;Allocation info for local variables in function 'Usb_Suspend'
                           1416 ;------------------------------------------------------------
                           1417 ;k                         Allocated with name '_Usb_Suspend_k_1_73'
                           1418 ;------------------------------------------------------------
                    0489   1419 	G$Usb_Suspend$0$0 ==.
                    0489   1420 	C$F3xx_USB0_InterruptServiceRoutine.c$460$1$68 ==.
                           1421 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:460: void Usb_Suspend (void)
                           1422 ;	-----------------------------------------
                           1423 ;	 function Usb_Suspend
                           1424 ;	-----------------------------------------
   0516                    1425 _Usb_Suspend:
                    0489   1426 	C$F3xx_USB0_InterruptServiceRoutine.c$463$1$73 ==.
                           1427 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:463: k++;
   0516 74 01              1428 	mov	a,#0x01
   0518 25 1B              1429 	add	a,_Usb_Suspend_k_1_73
   051A F5 1B              1430 	mov	_Usb_Suspend_k_1_73,a
   051C E4                 1431 	clr	a
   051D 35 1C              1432 	addc	a,(_Usb_Suspend_k_1_73 + 1)
   051F F5 1C              1433 	mov	(_Usb_Suspend_k_1_73 + 1),a
                    0494   1434 	C$F3xx_USB0_InterruptServiceRoutine.c$464$1$73 ==.
                    0494   1435 	XG$Usb_Suspend$0$0 ==.
   0521 22                 1436 	ret
                           1437 ;------------------------------------------------------------
                           1438 ;Allocation info for local variables in function 'Fifo_Read'
                           1439 ;------------------------------------------------------------
                           1440 ;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
                           1441 ;pData                     Allocated with name '_Fifo_Read_PARM_3'
                           1442 ;addr                      Allocated to registers r7 
                           1443 ;i                         Allocated to registers r6 r7 
                           1444 ;------------------------------------------------------------
                    0495   1445 	G$Fifo_Read$0$0 ==.
                    0495   1446 	C$F3xx_USB0_InterruptServiceRoutine.c$479$1$73 ==.
                           1447 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:479: void Fifo_Read (unsigned char addr, unsigned int uNumBytes,
                           1448 ;	-----------------------------------------
                           1449 ;	 function Fifo_Read
                           1450 ;	-----------------------------------------
   0522                    1451 _Fifo_Read:
   0522 AF 82              1452 	mov	r7,dpl
                    0497   1453 	C$F3xx_USB0_InterruptServiceRoutine.c$484$1$75 ==.
                           1454 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:484: if (uNumBytes)                      // Check if >0 bytes requested,
   0524 E5 1B              1455 	mov	a,_Fifo_Read_PARM_2
   0526 45 1C              1456 	orl	a,(_Fifo_Read_PARM_2 + 1)
   0528 60 3A              1457 	jz	00110$
                    049D   1458 	C$F3xx_USB0_InterruptServiceRoutine.c$486$2$76 ==.
                           1459 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:486: USB0ADR = (addr);                // Set address
   052A 8F 96              1460 	mov	_USB0ADR,r7
                    049F   1461 	C$F3xx_USB0_InterruptServiceRoutine.c$487$2$76 ==.
                           1462 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:487: USB0ADR |= 0xC0;                 // Set auto-read and initiate
   052C 43 96 C0           1463 	orl	_USB0ADR,#0xC0
                    04A2   1464 	C$F3xx_USB0_InterruptServiceRoutine.c$491$1$75 ==.
                           1465 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:491: for(i=0;i< (uNumBytes);i++)
   052F 7E 00              1466 	mov	r6,#0x00
   0531 7F 00              1467 	mov	r7,#0x00
   0533                    1468 00106$:
   0533 8E 04              1469 	mov	ar4,r6
   0535 8F 05              1470 	mov	ar5,r7
   0537 C3                 1471 	clr	c
   0538 EC                 1472 	mov	a,r4
   0539 95 1B              1473 	subb	a,_Fifo_Read_PARM_2
   053B ED                 1474 	mov	a,r5
   053C 95 1C              1475 	subb	a,(_Fifo_Read_PARM_2 + 1)
   053E 50 21              1476 	jnc	00109$
                    04B3   1477 	C$F3xx_USB0_InterruptServiceRoutine.c$493$3$77 ==.
                           1478 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:493: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
   0540                    1479 00101$:
   0540 E5 96              1480 	mov	a,_USB0ADR
   0542 20 E7 FB           1481 	jb	acc.7,00101$
                    04B8   1482 	C$F3xx_USB0_InterruptServiceRoutine.c$494$3$77 ==.
                           1483 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:494: pData[i] = USB0DAT;           // Copy data byte
   0545 EE                 1484 	mov	a,r6
   0546 25 1D              1485 	add	a,_Fifo_Read_PARM_3
   0548 FB                 1486 	mov	r3,a
   0549 EF                 1487 	mov	a,r7
   054A 35 1E              1488 	addc	a,(_Fifo_Read_PARM_3 + 1)
   054C FC                 1489 	mov	r4,a
   054D AD 1F              1490 	mov	r5,(_Fifo_Read_PARM_3 + 2)
   054F 8B 82              1491 	mov	dpl,r3
   0551 8C 83              1492 	mov	dph,r4
   0553 8D F0              1493 	mov	b,r5
   0555 E5 97              1494 	mov	a,_USB0DAT
   0557 12 0C BC           1495 	lcall	__gptrput
                    04CD   1496 	C$F3xx_USB0_InterruptServiceRoutine.c$491$2$76 ==.
                           1497 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:491: for(i=0;i< (uNumBytes);i++)
   055A 0E                 1498 	inc	r6
   055B BE 00 D5           1499 	cjne	r6,#0x00,00106$
   055E 0F                 1500 	inc	r7
   055F 80 D2              1501 	sjmp	00106$
   0561                    1502 00109$:
                    04D4   1503 	C$F3xx_USB0_InterruptServiceRoutine.c$498$2$76 ==.
                           1504 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:498: USB0ADR = 0;                     // Clear auto-read
   0561 75 96 00           1505 	mov	_USB0ADR,#0x00
   0564                    1506 00110$:
                    04D7   1507 	C$F3xx_USB0_InterruptServiceRoutine.c$500$1$75 ==.
                    04D7   1508 	XG$Fifo_Read$0$0 ==.
   0564 22                 1509 	ret
                           1510 ;------------------------------------------------------------
                           1511 ;Allocation info for local variables in function 'Fifo_Write_Foreground'
                           1512 ;------------------------------------------------------------
                           1513 ;uNumBytes                 Allocated with name '_Fifo_Write_Foreground_PARM_2'
                           1514 ;pData                     Allocated with name '_Fifo_Write_Foreground_PARM_3'
                           1515 ;addr                      Allocated to registers r7 
                           1516 ;i                         Allocated to registers r6 r7 
                           1517 ;------------------------------------------------------------
                    04D8   1518 	G$Fifo_Write_Foreground$0$0 ==.
                    04D8   1519 	C$F3xx_USB0_InterruptServiceRoutine.c$519$1$75 ==.
                           1520 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:519: void Fifo_Write_Foreground (unsigned char addr, unsigned int uNumBytes,
                           1521 ;	-----------------------------------------
                           1522 ;	 function Fifo_Write_Foreground
                           1523 ;	-----------------------------------------
   0565                    1524 _Fifo_Write_Foreground:
   0565 AF 82              1525 	mov	r7,dpl
                    04DA   1526 	C$F3xx_USB0_InterruptServiceRoutine.c$525$1$79 ==.
                           1527 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:525: if (uNumBytes)
   0567 E5 1B              1528 	mov	a,_Fifo_Write_Foreground_PARM_2
   0569 45 1C              1529 	orl	a,(_Fifo_Write_Foreground_PARM_2 + 1)
   056B 60 39              1530 	jz	00113$
                    04E0   1531 	C$F3xx_USB0_InterruptServiceRoutine.c$527$2$80 ==.
                           1532 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:527: while (USB0ADR & 0x80);          // Wait for BUSY->'0'
   056D                    1533 00101$:
   056D E5 96              1534 	mov	a,_USB0ADR
   056F 20 E7 FB           1535 	jb	acc.7,00101$
                    04E5   1536 	C$F3xx_USB0_InterruptServiceRoutine.c$529$2$80 ==.
                           1537 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:529: USB0ADR = (addr);                // Set address (mask out bits7-6)
   0572 8F 96              1538 	mov	_USB0ADR,r7
                    04E7   1539 	C$F3xx_USB0_InterruptServiceRoutine.c$532$1$79 ==.
                           1540 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:532: for(i=0;i<uNumBytes;i++)
   0574 7E 00              1541 	mov	r6,#0x00
   0576 7F 00              1542 	mov	r7,#0x00
   0578                    1543 00109$:
   0578 8E 04              1544 	mov	ar4,r6
   057A 8F 05              1545 	mov	ar5,r7
   057C C3                 1546 	clr	c
   057D EC                 1547 	mov	a,r4
   057E 95 1B              1548 	subb	a,_Fifo_Write_Foreground_PARM_2
   0580 ED                 1549 	mov	a,r5
   0581 95 1C              1550 	subb	a,(_Fifo_Write_Foreground_PARM_2 + 1)
   0583 50 21              1551 	jnc	00113$
                    04F8   1552 	C$F3xx_USB0_InterruptServiceRoutine.c$534$3$81 ==.
                           1553 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:534: USB0DAT = pData[i];
   0585 EE                 1554 	mov	a,r6
   0586 25 1D              1555 	add	a,_Fifo_Write_Foreground_PARM_3
   0588 FB                 1556 	mov	r3,a
   0589 EF                 1557 	mov	a,r7
   058A 35 1E              1558 	addc	a,(_Fifo_Write_Foreground_PARM_3 + 1)
   058C FC                 1559 	mov	r4,a
   058D AD 1F              1560 	mov	r5,(_Fifo_Write_Foreground_PARM_3 + 2)
   058F 8B 82              1561 	mov	dpl,r3
   0591 8C 83              1562 	mov	dph,r4
   0593 8D F0              1563 	mov	b,r5
   0595 12 0C D5           1564 	lcall	__gptrget
   0598 F5 97              1565 	mov	_USB0DAT,a
                    050D   1566 	C$F3xx_USB0_InterruptServiceRoutine.c$535$3$81 ==.
                           1567 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:535: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
   059A                    1568 00104$:
   059A E5 96              1569 	mov	a,_USB0ADR
   059C 20 E7 FB           1570 	jb	acc.7,00104$
                    0512   1571 	C$F3xx_USB0_InterruptServiceRoutine.c$532$2$80 ==.
                           1572 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:532: for(i=0;i<uNumBytes;i++)
   059F 0E                 1573 	inc	r6
   05A0 BE 00 D5           1574 	cjne	r6,#0x00,00109$
   05A3 0F                 1575 	inc	r7
   05A4 80 D2              1576 	sjmp	00109$
   05A6                    1577 00113$:
                    0519   1578 	C$F3xx_USB0_InterruptServiceRoutine.c$538$1$79 ==.
                    0519   1579 	XG$Fifo_Write_Foreground$0$0 ==.
   05A6 22                 1580 	ret
                           1581 ;------------------------------------------------------------
                           1582 ;Allocation info for local variables in function 'Fifo_Write_InterruptServiceRoutine'
                           1583 ;------------------------------------------------------------
                           1584 ;uNumBytes                 Allocated with name '_Fifo_Write_InterruptServiceRoutine_PARM_2'
                           1585 ;pData                     Allocated with name '_Fifo_Write_InterruptServiceRoutine_PARM_3'
                           1586 ;addr                      Allocated to registers r7 
                           1587 ;i                         Allocated to registers r6 r7 
                           1588 ;------------------------------------------------------------
                    051A   1589 	G$Fifo_Write_InterruptServiceRoutine$0$0 ==.
                    051A   1590 	C$F3xx_USB0_InterruptServiceRoutine.c$540$1$79 ==.
                           1591 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:540: void Fifo_Write_InterruptServiceRoutine (unsigned char addr,
                           1592 ;	-----------------------------------------
                           1593 ;	 function Fifo_Write_InterruptServiceRoutine
                           1594 ;	-----------------------------------------
   05A7                    1595 _Fifo_Write_InterruptServiceRoutine:
   05A7 AF 82              1596 	mov	r7,dpl
                    051C   1597 	C$F3xx_USB0_InterruptServiceRoutine.c$547$1$83 ==.
                           1598 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:547: if (uNumBytes)
   05A9 E5 1B              1599 	mov	a,_Fifo_Write_InterruptServiceRoutine_PARM_2
   05AB 45 1C              1600 	orl	a,(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1)
   05AD 60 39              1601 	jz	00113$
                    0522   1602 	C$F3xx_USB0_InterruptServiceRoutine.c$549$2$84 ==.
                           1603 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:549: while (USB0ADR & 0x80);          // Wait for BUSY->'0'
   05AF                    1604 00101$:
   05AF E5 96              1605 	mov	a,_USB0ADR
   05B1 20 E7 FB           1606 	jb	acc.7,00101$
                    0527   1607 	C$F3xx_USB0_InterruptServiceRoutine.c$551$2$84 ==.
                           1608 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:551: USB0ADR = (addr);                // Set address (mask out bits7-6)
   05B4 8F 96              1609 	mov	_USB0ADR,r7
                    0529   1610 	C$F3xx_USB0_InterruptServiceRoutine.c$554$1$83 ==.
                           1611 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:554: for (i=0; i<uNumBytes; i++)
   05B6 7E 00              1612 	mov	r6,#0x00
   05B8 7F 00              1613 	mov	r7,#0x00
   05BA                    1614 00109$:
   05BA 8E 04              1615 	mov	ar4,r6
   05BC 8F 05              1616 	mov	ar5,r7
   05BE C3                 1617 	clr	c
   05BF EC                 1618 	mov	a,r4
   05C0 95 1B              1619 	subb	a,_Fifo_Write_InterruptServiceRoutine_PARM_2
   05C2 ED                 1620 	mov	a,r5
   05C3 95 1C              1621 	subb	a,(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1)
   05C5 50 21              1622 	jnc	00113$
                    053A   1623 	C$F3xx_USB0_InterruptServiceRoutine.c$556$3$85 ==.
                           1624 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:556: USB0DAT = pData[i];
   05C7 EE                 1625 	mov	a,r6
   05C8 25 1D              1626 	add	a,_Fifo_Write_InterruptServiceRoutine_PARM_3
   05CA FB                 1627 	mov	r3,a
   05CB EF                 1628 	mov	a,r7
   05CC 35 1E              1629 	addc	a,(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1)
   05CE FC                 1630 	mov	r4,a
   05CF AD 1F              1631 	mov	r5,(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2)
   05D1 8B 82              1632 	mov	dpl,r3
   05D3 8C 83              1633 	mov	dph,r4
   05D5 8D F0              1634 	mov	b,r5
   05D7 12 0C D5           1635 	lcall	__gptrget
   05DA F5 97              1636 	mov	_USB0DAT,a
                    054F   1637 	C$F3xx_USB0_InterruptServiceRoutine.c$557$3$85 ==.
                           1638 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:557: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
   05DC                    1639 00104$:
   05DC E5 96              1640 	mov	a,_USB0ADR
   05DE 20 E7 FB           1641 	jb	acc.7,00104$
                    0554   1642 	C$F3xx_USB0_InterruptServiceRoutine.c$554$2$84 ==.
                           1643 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:554: for (i=0; i<uNumBytes; i++)
   05E1 0E                 1644 	inc	r6
   05E2 BE 00 D5           1645 	cjne	r6,#0x00,00109$
   05E5 0F                 1646 	inc	r7
   05E6 80 D2              1647 	sjmp	00109$
   05E8                    1648 00113$:
                    055B   1649 	C$F3xx_USB0_InterruptServiceRoutine.c$560$1$83 ==.
                    055B   1650 	XG$Fifo_Write_InterruptServiceRoutine$0$0 ==.
   05E8 22                 1651 	ret
                           1652 ;------------------------------------------------------------
                           1653 ;Allocation info for local variables in function 'Force_Stall'
                           1654 ;------------------------------------------------------------
                    055C   1655 	G$Force_Stall$0$0 ==.
                    055C   1656 	C$F3xx_USB0_InterruptServiceRoutine.c$573$1$83 ==.
                           1657 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:573: void Force_Stall (void)
                           1658 ;	-----------------------------------------
                           1659 ;	 function Force_Stall
                           1660 ;	-----------------------------------------
   05E9                    1661 _Force_Stall:
                    055C   1662 	C$F3xx_USB0_InterruptServiceRoutine.c$575$1$87 ==.
                           1663 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:575: POLL_WRITE_BYTE (INDEX, 0);
   05E9                    1664 00101$:
   05E9 E5 96              1665 	mov	a,_USB0ADR
   05EB 20 E7 FB           1666 	jb	acc.7,00101$
   05EE 75 96 0E           1667 	mov	_USB0ADR,#0x0E
   05F1 75 97 00           1668 	mov	_USB0DAT,#0x00
                    0567   1669 	C$F3xx_USB0_InterruptServiceRoutine.c$576$1$87 ==.
                           1670 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:576: POLL_WRITE_BYTE (E0CSR, rbSDSTL);   // Set the send stall bit
   05F4                    1671 00104$:
   05F4 E5 96              1672 	mov	a,_USB0ADR
   05F6 20 E7 FB           1673 	jb	acc.7,00104$
   05F9 75 96 11           1674 	mov	_USB0ADR,#0x11
   05FC 75 97 20           1675 	mov	_USB0DAT,#0x20
                    0572   1676 	C$F3xx_USB0_InterruptServiceRoutine.c$577$1$87 ==.
                           1677 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:577: EP_STATUS[0] = EP_STALL;            // Put the endpoint in stall status
   05FF 75 18 04           1678 	mov	_EP_STATUS,#0x04
                    0575   1679 	C$F3xx_USB0_InterruptServiceRoutine.c$578$1$87 ==.
                    0575   1680 	XG$Force_Stall$0$0 ==.
   0602 22                 1681 	ret
                           1682 ;------------------------------------------------------------
                           1683 ;Allocation info for local variables in function 'SendPacket'
                           1684 ;------------------------------------------------------------
                           1685 ;ReportID                  Allocated to registers r7 
                           1686 ;ControlReg                Allocated to registers r6 
                           1687 ;------------------------------------------------------------
                    0576   1688 	G$SendPacket$0$0 ==.
                    0576   1689 	C$F3xx_USB0_InterruptServiceRoutine.c$593$1$87 ==.
                           1690 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:593: void SendPacket (unsigned char ReportID)
                           1691 ;	-----------------------------------------
                           1692 ;	 function SendPacket
                           1693 ;	-----------------------------------------
   0603                    1694 _SendPacket:
   0603 AF 82              1695 	mov	r7,dpl
                    0578   1696 	C$F3xx_USB0_InterruptServiceRoutine.c$598$1$89 ==.
                           1697 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:598: EAState = EA;
   0605 A2 AF              1698 	mov	c,_EA
   0607 92 00              1699 	mov	_SendPacket_EAState_1_89,c
                    057C   1700 	C$F3xx_USB0_InterruptServiceRoutine.c$599$1$89 ==.
                           1701 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:599: EA = 0;
   0609 C2 AF              1702 	clr	_EA
                    057E   1703 	C$F3xx_USB0_InterruptServiceRoutine.c$601$1$89 ==.
                           1704 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:601: POLL_WRITE_BYTE (INDEX, 1);         // Set index to endpoint 1 registers
   060B                    1705 00101$:
   060B E5 96              1706 	mov	a,_USB0ADR
   060D 20 E7 FB           1707 	jb	acc.7,00101$
   0610 75 96 0E           1708 	mov	_USB0ADR,#0x0E
   0613 75 97 01           1709 	mov	_USB0DAT,#0x01
                    0589   1710 	C$F3xx_USB0_InterruptServiceRoutine.c$604$1$89 ==.
                           1711 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:604: POLL_READ_BYTE (EINCSR1, ControlReg);
   0616                    1712 00104$:
   0616 E5 96              1713 	mov	a,_USB0ADR
   0618 20 E7 FB           1714 	jb	acc.7,00104$
   061B 75 96 91           1715 	mov	_USB0ADR,#0x91
   061E                    1716 00107$:
   061E E5 96              1717 	mov	a,_USB0ADR
   0620 20 E7 FB           1718 	jb	acc.7,00107$
   0623 AE 97              1719 	mov	r6,_USB0DAT
                    0598   1720 	C$F3xx_USB0_InterruptServiceRoutine.c$606$1$89 ==.
                           1721 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:606: if (EP_STATUS[1] == EP_HALT)        // If endpoint is currently halted,
   0625 AD 19              1722 	mov	r5,(_EP_STATUS + 0x0001)
   0627 BD 03 0D           1723 	cjne	r5,#0x03,00129$
                    059D   1724 	C$F3xx_USB0_InterruptServiceRoutine.c$609$2$90 ==.
                           1725 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:609: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
   062A                    1726 00110$:
   062A E5 96              1727 	mov	a,_USB0ADR
   062C 20 E7 FB           1728 	jb	acc.7,00110$
   062F 75 96 11           1729 	mov	_USB0ADR,#0x11
   0632 75 97 10           1730 	mov	_USB0DAT,#0x10
   0635 80 49              1731 	sjmp	00130$
   0637                    1732 00129$:
                    05AA   1733 	C$F3xx_USB0_InterruptServiceRoutine.c$612$1$89 ==.
                           1734 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:612: else if(EP_STATUS[1] == EP_IDLE)
   0637 ED                 1735 	mov	a,r5
   0638 70 46              1736 	jnz	00130$
                    05AD   1737 	C$F3xx_USB0_InterruptServiceRoutine.c$615$2$91 ==.
                           1738 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:615: EP_STATUS[1] = EP_TX;
   063A 75 19 01           1739 	mov	(_EP_STATUS + 0x0001),#0x01
                    05B0   1740 	C$F3xx_USB0_InterruptServiceRoutine.c$617$2$91 ==.
                           1741 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:617: if (ControlReg & rbInSTSTL)      // Clear sent stall if last
   063D EE                 1742 	mov	a,r6
   063E 30 E5 0B           1743 	jnb	acc.5,00117$
                    05B4   1744 	C$F3xx_USB0_InterruptServiceRoutine.c$620$3$92 ==.
                           1745 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:620: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
   0641                    1746 00113$:
   0641 E5 96              1747 	mov	a,_USB0ADR
   0643 20 E7 FB           1748 	jb	acc.7,00113$
   0646 75 96 11           1749 	mov	_USB0ADR,#0x11
   0649 75 97 40           1750 	mov	_USB0DAT,#0x40
   064C                    1751 00117$:
                    05BF   1752 	C$F3xx_USB0_InterruptServiceRoutine.c$623$2$91 ==.
                           1753 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:623: if (ControlReg & rbInUNDRUN)     // Clear underrun bit if it was set
   064C EE                 1754 	mov	a,r6
   064D 30 E2 0B           1755 	jnb	acc.2,00122$
                    05C3   1756 	C$F3xx_USB0_InterruptServiceRoutine.c$625$3$93 ==.
                           1757 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:625: POLL_WRITE_BYTE (EINCSR1, 0x00);
   0650                    1758 00118$:
   0650 E5 96              1759 	mov	a,_USB0ADR
   0652 20 E7 FB           1760 	jb	acc.7,00118$
   0655 75 96 11           1761 	mov	_USB0ADR,#0x11
   0658 75 97 00           1762 	mov	_USB0DAT,#0x00
   065B                    1763 00122$:
                    05CE   1764 	C$F3xx_USB0_InterruptServiceRoutine.c$628$2$91 ==.
                           1765 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:628: ReportHandler_IN_Foreground (ReportID);
   065B 8F 82              1766 	mov	dpl,r7
   065D 12 0B ED           1767 	lcall	_ReportHandler_IN_Foreground
                    05D3   1768 	C$F3xx_USB0_InterruptServiceRoutine.c$631$2$91 ==.
                           1769 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:631: Fifo_Write_Foreground (FIFO_EP1, IN_BUFFER.Length,
   0660 85 22 1B           1770 	mov	_Fifo_Write_Foreground_PARM_2,_IN_BUFFER
   0663 75 1C 00           1771 	mov	(_Fifo_Write_Foreground_PARM_2 + 1),#0x00
                    05D9   1772 	C$F3xx_USB0_InterruptServiceRoutine.c$632$2$91 ==.
                           1773 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:632: (unsigned char *)IN_BUFFER.Ptr);
   0666 85 23 1D           1774 	mov	_Fifo_Write_Foreground_PARM_3,(_IN_BUFFER + 0x0001)
   0669 85 24 1E           1775 	mov	(_Fifo_Write_Foreground_PARM_3 + 1),((_IN_BUFFER + 0x0001) + 1)
   066C 85 25 1F           1776 	mov	(_Fifo_Write_Foreground_PARM_3 + 2),((_IN_BUFFER + 0x0001) + 2)
   066F 75 82 21           1777 	mov	dpl,#0x21
   0672 12 05 65           1778 	lcall	_Fifo_Write_Foreground
                    05E8   1779 	C$F3xx_USB0_InterruptServiceRoutine.c$633$2$91 ==.
                           1780 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:633: POLL_WRITE_BYTE (EINCSR1, rbInINPRDY);
   0675                    1781 00123$:
   0675 E5 96              1782 	mov	a,_USB0ADR
   0677 20 E7 FB           1783 	jb	acc.7,00123$
   067A 75 96 11           1784 	mov	_USB0ADR,#0x11
   067D 75 97 01           1785 	mov	_USB0DAT,#0x01
   0680                    1786 00130$:
                    05F3   1787 	C$F3xx_USB0_InterruptServiceRoutine.c$637$1$89 ==.
                           1788 ;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:637: EA = EAState;
   0680 A2 00              1789 	mov	c,_SendPacket_EAState_1_89
   0682 92 AF              1790 	mov	_EA,c
                    05F7   1791 	C$F3xx_USB0_InterruptServiceRoutine.c$638$1$89 ==.
                    05F7   1792 	XG$SendPacket$0$0 ==.
   0684 22                 1793 	ret
                           1794 	.area CSEG    (CODE)
                           1795 	.area CONST   (CODE)
                           1796 	.area XINIT   (CODE)
                           1797 	.area CABS    (ABS,CODE)
