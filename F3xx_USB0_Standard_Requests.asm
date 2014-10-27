;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Wed Jan 30 20:10:35 2013
;--------------------------------------------------------
	.module F3xx_USB0_Standard_Requests
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ZERO_PACKET
	.globl _ONES_PACKET
	.globl _Setup_OUT_BUFFER
	.globl _ReportHandler_IN_ISR
	.globl _Handle_In1
	.globl _Force_Stall
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _EA
	.globl _RI0
	.globl _TI0
	.globl _RBX0
	.globl _TBX0
	.globl _REN0
	.globl _PERR0
	.globl _OVR0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl __XPAGE
	.globl _SBRL0
	.globl _DP
	.globl _VDM0CN
	.globl _EIP2
	.globl _EIP1
	.globl _B
	.globl _RSTSRC
	.globl _EIE2
	.globl _EIE1
	.globl _OSCLCN
	.globl _GPIOCN
	.globl _ACC
	.globl _USB0XCN
	.globl _PSW
	.globl _REG0CN
	.globl _CLKMUL
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _OSCICL
	.globl _OSCICN
	.globl _P3
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P0MDOUT
	.globl _P2
	.globl _SMOD0
	.globl _SBUF0
	.globl _SCON0
	.globl _USB0DAT
	.globl _USB0ADR
	.globl _SBRLH0
	.globl _SBRLL0
	.globl _SBCON0
	.globl _PSCTL
	.globl _CKCON
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
	.globl _Get_Status
	.globl _Clear_Feature
	.globl _Set_Feature
	.globl _Set_Address
	.globl _Get_Descriptor
	.globl _Get_Configuration
	.globl _Set_Configuration
	.globl _Get_Interface
	.globl _Set_Interface
	.globl _Get_Idle
	.globl _Get_Protocol
	.globl _Set_Protocol
	.globl _Set_Idle
	.globl _Get_Report
	.globl _Set_Report
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$SBCON0$0$0 == 0x0091
_SBCON0	=	0x0091
G$SBRLL0$0$0 == 0x0093
_SBRLL0	=	0x0093
G$SBRLH0$0$0 == 0x0094
_SBRLH0	=	0x0094
G$USB0ADR$0$0 == 0x0096
_USB0ADR	=	0x0096
G$USB0DAT$0$0 == 0x0097
_USB0DAT	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SMOD0$0$0 == 0x009a
_SMOD0	=	0x009a
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$CLKSEL$0$0 == 0x00a9
_CLKSEL	=	0x00a9
G$EMI0CN$0$0 == 0x00aa
_EMI0CN	=	0x00aa
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$OSCICL$0$0 == 0x00b3
_OSCICL	=	0x00b3
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$CLKMUL$0$0 == 0x00b9
_CLKMUL	=	0x00b9
G$REG0CN$0$0 == 0x00c9
_REG0CN	=	0x00c9
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$USB0XCN$0$0 == 0x00d7
_USB0XCN	=	0x00d7
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$GPIOCN$0$0 == 0x00e2
_GPIOCN	=	0x00e2
G$OSCLCN$0$0 == 0x00e3
_OSCLCN	=	0x00e3
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$VDM0CN$0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$SBRL0$0$0 == 0x9493
_SBRL0	=	0x9493
G$_XPAGE$0$0 == 0x00aa
__XPAGE	=	0x00aa
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$OVR0$0$0 == 0x009f
_OVR0	=	0x009f
G$PERR0$0$0 == 0x009f
_PERR0	=	0x009f
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TBX0$0$0 == 0x009b
_TBX0	=	0x009b
G$RBX0$0$0 == 0x009a
_RBX0	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Status'
;------------------------------------------------------------
	G$Get_Status$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$101$0$0 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:101: void Get_Status (void)                 // This routine returns a two byte
;	-----------------------------------------
;	 function Get_Status
;	-----------------------------------------
_Get_Status:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$F3xx_USB0_Standard_Requests.c$104$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:104: if (SETUP.wValue.U8[MSB] || SETUP.wValue.U8[LSB] ||
	mov	a,(_SETUP + 0x0003)
	jnz	00101$
	mov	a,(_SETUP + 0x0002)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$107$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:107: SETUP.wLength.U8[MSB]    || (SETUP.wLength.U8[LSB] != 2))
	mov	a,(_SETUP + 0x0007)
	jnz	00101$
	mov	a,#0x02
	cjne	a,(_SETUP + 0x0006),00168$
	sjmp	00102$
00168$:
00101$:
	C$F3xx_USB0_Standard_Requests.c$110$2$25 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:110: Force_Stall ();
	lcall	_Force_Stall
00102$:
	C$F3xx_USB0_Standard_Requests.c$113$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:113: switch(SETUP.bmRequestType)         // Determine if recipient was device,
	mov	r7,_SETUP
	cjne	r7,#0x80,00169$
	sjmp	00106$
00169$:
	cjne	r7,#0x81,00170$
	sjmp	00111$
00170$:
	cjne	r7,#0x82,00171$
	sjmp	00117$
00171$:
	ljmp	00128$
	C$F3xx_USB0_Standard_Requests.c$115$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:115: case OUT_DEVICE:                 // If recipient was device
00106$:
	C$F3xx_USB0_Standard_Requests.c$116$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:116: if (SETUP.wIndex.U8[MSB] || SETUP.wIndex.U8[LSB])
	mov	a,(_SETUP + 0x0005)
	jnz	00107$
	mov	a,(_SETUP + 0x0004)
	jz	00108$
00107$:
	C$F3xx_USB0_Standard_Requests.c$118$3$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:118: Force_Stall ();            // Send stall if request is invalid
	lcall	_Force_Stall
	ljmp	00129$
00108$:
	C$F3xx_USB0_Standard_Requests.c$124$3$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:124: DATAPTR = (unsigned char*)&ZERO_PACKET;
	mov	_DATAPTR,#_ZERO_PACKET
	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$125$3$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:125: DATASIZE = 2;
	mov	_DATASIZE,#0x02
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$127$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:127: break;
	ljmp	00129$
	C$F3xx_USB0_Standard_Requests.c$129$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:129: case OUT_INTERFACE:              // See if recipient was interface
00111$:
	C$F3xx_USB0_Standard_Requests.c$130$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:130: if ((USB0_STATE != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB0_STATE,00112$
	C$F3xx_USB0_Standard_Requests.c$131$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:131: SETUP.wIndex.U8[MSB] || SETUP.wIndex.U8[LSB])
	mov	a,(_SETUP + 0x0005)
	jnz	00112$
	mov	a,(_SETUP + 0x0004)
	jz	00113$
00112$:
	C$F3xx_USB0_Standard_Requests.c$135$3$29 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:135: Force_Stall ();            // Otherwise send stall to host
	lcall	_Force_Stall
	sjmp	00129$
00113$:
	C$F3xx_USB0_Standard_Requests.c$140$3$30 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:140: DATAPTR = (unsigned char*)&ZERO_PACKET;
	mov	_DATAPTR,#_ZERO_PACKET
	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$141$3$30 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:141: DATASIZE = 2;
	mov	_DATASIZE,#0x02
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$143$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:143: break;
	C$F3xx_USB0_Standard_Requests.c$145$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:145: case OUT_ENDPOINT:               // See if recipient was an endpoint
	sjmp	00129$
00117$:
	C$F3xx_USB0_Standard_Requests.c$146$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:146: if ((USB0_STATE != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB0_STATE,00124$
	C$F3xx_USB0_Standard_Requests.c$147$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:147: SETUP.wIndex.U8[MSB])          // Make sure device is configured
	mov	a,(_SETUP + 0x0005)
	jz	00125$
00124$:
	C$F3xx_USB0_Standard_Requests.c$150$3$31 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:150: Force_Stall();
	lcall	_Force_Stall
	sjmp	00129$
00125$:
	C$F3xx_USB0_Standard_Requests.c$155$3$32 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:155: if (SETUP.wIndex.U8[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_SETUP + 0x0004),00122$
	C$F3xx_USB0_Standard_Requests.c$157$4$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:157: if (EP_STATUS[1] == EP_HALT)
	mov	a,#0x03
	cjne	a,(_EP_STATUS + 0x0001),00119$
	C$F3xx_USB0_Standard_Requests.c$160$5$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:160: DATAPTR = (unsigned char*)&ONES_PACKET;
	mov	_DATAPTR,#_ONES_PACKET
	mov	(_DATAPTR + 1),#(_ONES_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$161$5$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:161: DATASIZE = 2;
	mov	_DATASIZE,#0x02
	mov	(_DATASIZE + 1),#0x00
	sjmp	00129$
00119$:
	C$F3xx_USB0_Standard_Requests.c$166$5$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:166: DATAPTR = (unsigned char*)&ZERO_PACKET;
	mov	_DATAPTR,#_ZERO_PACKET
	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$167$5$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:167: DATASIZE = 2;
	mov	_DATASIZE,#0x02
	mov	(_DATASIZE + 1),#0x00
	sjmp	00129$
00122$:
	C$F3xx_USB0_Standard_Requests.c$172$4$36 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:172: Force_Stall ();         // Send stall if unexpected data
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$176$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:176: break;
	C$F3xx_USB0_Standard_Requests.c$178$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:178: default:
	sjmp	00129$
00128$:
	C$F3xx_USB0_Standard_Requests.c$179$2$26 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:179: Force_Stall ();
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$181$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:181: }
00129$:
	C$F3xx_USB0_Standard_Requests.c$182$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:182: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00185$
	sjmp	00135$
00185$:
	C$F3xx_USB0_Standard_Requests.c$186$2$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:186: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
00130$:
	mov	a,_USB0ADR
	jb	acc.7,00130$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$187$2$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:187: EP_STATUS[0] = EP_TX;
	mov	_EP_STATUS,#0x01
	C$F3xx_USB0_Standard_Requests.c$188$2$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:188: DATASENT = 0;
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00135$:
	C$F3xx_USB0_Standard_Requests.c$190$1$24 ==.
	XG$Get_Status$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clear_Feature'
;------------------------------------------------------------
	G$Clear_Feature$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$202$1$24 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:202: void Clear_Feature ()                  // This routine can clear Halt Endpoint
;	-----------------------------------------
;	 function Clear_Feature
;	-----------------------------------------
_Clear_Feature:
	C$F3xx_USB0_Standard_Requests.c$206$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:206: if ( (USB0_STATE != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB0_STATE,00114$
	C$F3xx_USB0_Standard_Requests.c$208$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:208: (SETUP.bmRequestType == IN_DEVICE) ||
	mov	a,_SETUP
	mov	r7,a
	jz	00114$
	C$F3xx_USB0_Standard_Requests.c$210$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:210: (SETUP.bmRequestType == IN_INTERFACE) ||
	cjne	r7,#0x01,00170$
	sjmp	00114$
00170$:
	C$F3xx_USB0_Standard_Requests.c$212$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:212: SETUP.wValue.U8[MSB]  || SETUP.wIndex.U8[MSB] ||
	mov	a,(_SETUP + 0x0003)
	jnz	00114$
	mov	a,(_SETUP + 0x0005)
	jnz	00114$
	C$F3xx_USB0_Standard_Requests.c$214$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:214: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB])
	mov	a,(_SETUP + 0x0007)
	jnz	00114$
	mov	a,(_SETUP + 0x0006)
	jz	00115$
00114$:
	C$F3xx_USB0_Standard_Requests.c$216$2$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:216: Force_Stall ();
	lcall	_Force_Stall
	sjmp	00123$
00115$:
	C$F3xx_USB0_Standard_Requests.c$222$2$40 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:222: if ( (SETUP.bmRequestType == IN_ENDPOINT)&&
	mov	a,#0x02
	cjne	a,_SETUP,00110$
	C$F3xx_USB0_Standard_Requests.c$224$2$40 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:224: (SETUP.wValue.U8[LSB] == ENDPOINT_HALT)  &&
	mov	a,(_SETUP + 0x0002)
	jnz	00110$
	C$F3xx_USB0_Standard_Requests.c$226$2$40 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:226: ((SETUP.wIndex.U8[LSB] == IN_EP1) ) )
	mov	a,#0x81
	cjne	a,(_SETUP + 0x0004),00178$
	mov	a,#0x01
	sjmp	00179$
00178$:
	clr	a
00179$:
	mov	r7,a
	jz	00110$
	C$F3xx_USB0_Standard_Requests.c$228$3$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:228: if (SETUP.wIndex.U8[LSB] == IN_EP1)
	mov	a,r7
	jz	00123$
	C$F3xx_USB0_Standard_Requests.c$230$4$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:230: POLL_WRITE_BYTE (INDEX, 1);// Clear feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_Standard_Requests.c$231$4$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:231: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$232$4$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:232: EP_STATUS[1] = EP_IDLE;    // Set endpoint 1 status back to idle
	mov	(_EP_STATUS + 0x0001),#0x00
	sjmp	00123$
00110$:
	C$F3xx_USB0_Standard_Requests.c$237$3$43 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:237: Force_Stall ();               // Send procedural stall
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$240$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:240: POLL_WRITE_BYTE (INDEX, 0);         // Reset Index to 0
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_Standard_Requests.c$241$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:241: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00185$
	sjmp	00131$
00185$:
	C$F3xx_USB0_Standard_Requests.c$243$2$44 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:243: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00126$:
	mov	a,_USB0ADR
	jb	acc.7,00126$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00131$:
	C$F3xx_USB0_Standard_Requests.c$248$1$38 ==.
	XG$Clear_Feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Feature'
;------------------------------------------------------------
	G$Set_Feature$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$260$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:260: void Set_Feature (void)                // This routine will set the EP Halt
;	-----------------------------------------
;	 function Set_Feature
;	-----------------------------------------
_Set_Feature:
	C$F3xx_USB0_Standard_Requests.c$264$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:264: if ((USB0_STATE != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB0_STATE,00115$
	C$F3xx_USB0_Standard_Requests.c$266$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:266: (SETUP.bmRequestType == IN_DEVICE) ||
	mov	a,_SETUP
	mov	r7,a
	jz	00115$
	C$F3xx_USB0_Standard_Requests.c$267$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:267: (SETUP.bmRequestType == IN_INTERFACE) ||
	cjne	r7,#0x01,00171$
	sjmp	00115$
00171$:
	C$F3xx_USB0_Standard_Requests.c$268$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:268: SETUP.wValue.U8[MSB]  || SETUP.wIndex.U8[MSB] ||
	mov	a,(_SETUP + 0x0003)
	jnz	00115$
	mov	a,(_SETUP + 0x0005)
	jnz	00115$
	C$F3xx_USB0_Standard_Requests.c$269$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:269: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB])
	mov	a,(_SETUP + 0x0007)
	jnz	00115$
	mov	a,(_SETUP + 0x0006)
	jz	00116$
00115$:
	C$F3xx_USB0_Standard_Requests.c$271$2$47 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:271: Force_Stall ();                  // Otherwise send stall to host
	lcall	_Force_Stall
	sjmp	00124$
00116$:
	C$F3xx_USB0_Standard_Requests.c$277$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:277: if ( (SETUP.bmRequestType == IN_ENDPOINT)&&
	mov	a,#0x02
	cjne	a,_SETUP,00110$
	C$F3xx_USB0_Standard_Requests.c$279$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:279: (SETUP.wValue.U8[LSB] == ENDPOINT_HALT) &&
	mov	a,(_SETUP + 0x0002)
	jnz	00110$
	C$F3xx_USB0_Standard_Requests.c$280$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:280: ((SETUP.wIndex.U8[LSB] == IN_EP1)        ||
	mov	r7,(_SETUP + 0x0004)
	clr	a
	cjne	r7,#0x81,00179$
	inc	a
00179$:
	mov	r6,a
	jnz	00109$
	C$F3xx_USB0_Standard_Requests.c$281$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:281: (SETUP.wIndex.U8[LSB] == OUT_EP2) ) )
	cjne	r7,#0x02,00110$
00109$:
	C$F3xx_USB0_Standard_Requests.c$283$3$49 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:283: if (SETUP.wIndex.U8[LSB] == IN_EP1)
	mov	a,r6
	jz	00124$
	C$F3xx_USB0_Standard_Requests.c$285$4$50 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:285: POLL_WRITE_BYTE (INDEX, 1);// Set feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_Standard_Requests.c$286$4$50 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:286: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
	C$F3xx_USB0_Standard_Requests.c$287$4$50 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:287: EP_STATUS[1] = EP_HALT;
	mov	(_EP_STATUS + 0x0001),#0x03
	sjmp	00124$
00110$:
	C$F3xx_USB0_Standard_Requests.c$292$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:292: Force_Stall ();               // Send procedural stall
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$295$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:295: POLL_WRITE_BYTE (INDEX, 0);
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_Standard_Requests.c$296$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:296: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00188$
	sjmp	00132$
00188$:
	C$F3xx_USB0_Standard_Requests.c$298$2$52 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:298: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00127$:
	mov	a,_USB0ADR
	jb	acc.7,00127$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00132$:
	C$F3xx_USB0_Standard_Requests.c$302$1$46 ==.
	XG$Set_Feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Address'
;------------------------------------------------------------
	G$Set_Address$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$314$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:314: void Set_Address (void)                // Set new function address
;	-----------------------------------------
;	 function Set_Address
;	-----------------------------------------
_Set_Address:
	C$F3xx_USB0_Standard_Requests.c$317$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:317: if ((SETUP.bmRequestType != IN_DEVICE) ||
	mov	a,_SETUP
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$319$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:319: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
	mov	a,(_SETUP + 0x0005)
	jnz	00101$
	mov	a,(_SETUP + 0x0004)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$320$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:320: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB]||
	mov	a,(_SETUP + 0x0007)
	jnz	00101$
	mov	a,(_SETUP + 0x0006)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$321$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:321: SETUP.wValue.U8[MSB]  || (SETUP.wValue.U8[LSB] & 0x80))
	mov	a,(_SETUP + 0x0003)
	jnz	00101$
	mov	a,(_SETUP + 0x0002)
	jnb	acc.7,00102$
00101$:
	C$F3xx_USB0_Standard_Requests.c$323$2$55 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:323: Force_Stall ();                   // Send stall if SETUP data invalid
	lcall	_Force_Stall
00102$:
	C$F3xx_USB0_Standard_Requests.c$326$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:326: EP_STATUS[0] = EP_ADDRESS;          // Set endpoint zero to update
	mov	_EP_STATUS,#0x05
	C$F3xx_USB0_Standard_Requests.c$328$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:328: if (SETUP.wValue.U8[LSB] != 0)
	mov	a,(_SETUP + 0x0002)
	jz	00110$
	C$F3xx_USB0_Standard_Requests.c$330$2$56 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:330: USB0_STATE = DEV_ADDRESS;        // Indicate that device state is now
	mov	_USB0_STATE,#0x03
	sjmp	00111$
00110$:
	C$F3xx_USB0_Standard_Requests.c$335$2$57 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:335: USB0_STATE = DEV_DEFAULT;        // If new address was 0x00, return
	mov	_USB0_STATE,#0x02
00111$:
	C$F3xx_USB0_Standard_Requests.c$337$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:337: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00145$
	sjmp	00117$
00145$:
	C$F3xx_USB0_Standard_Requests.c$339$2$58 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:339: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00117$:
	C$F3xx_USB0_Standard_Requests.c$343$1$54 ==.
	XG$Set_Address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Descriptor'
;------------------------------------------------------------
	G$Get_Descriptor$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$355$1$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:355: void Get_Descriptor (void)             // This routine sets the data pointer
;	-----------------------------------------
;	 function Get_Descriptor
;	-----------------------------------------
_Get_Descriptor:
	C$F3xx_USB0_Standard_Requests.c$359$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:359: switch(SETUP.wValue.U8[MSB])         // Determine which type of descriptor
	mov	r7,(_SETUP + 0x0003)
	cjne	r7,#0x01,00171$
	sjmp	00101$
00171$:
	cjne	r7,#0x02,00172$
	sjmp	00102$
00172$:
	cjne	r7,#0x03,00173$
	sjmp	00103$
00173$:
	cjne	r7,#0x04,00174$
	ljmp	00107$
00174$:
	cjne	r7,#0x05,00175$
	ljmp	00108$
00175$:
	cjne	r7,#0x21,00176$
	ljmp	00115$
00176$:
	cjne	r7,#0x22,00177$
	ljmp	00116$
00177$:
	ljmp	00117$
	C$F3xx_USB0_Standard_Requests.c$361$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:361: case DSC_DEVICE:                 // size accordingly
00101$:
	C$F3xx_USB0_Standard_Requests.c$362$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:362: DATAPTR = (unsigned char*) &DEVICEDESC;
	mov	_DATAPTR,#_DEVICEDESC
	mov	(_DATAPTR + 1),#(_DEVICEDESC >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$363$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:363: DATASIZE = DEVICEDESC.bLength;
	mov	dptr,#_DEVICEDESC
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DATASIZE,r7
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$364$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:364: break;
	ljmp	00118$
	C$F3xx_USB0_Standard_Requests.c$366$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:366: case DSC_CONFIG:
00102$:
	C$F3xx_USB0_Standard_Requests.c$367$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:367: DATAPTR = (unsigned char*) &ConfigDesc;
	mov	_DATAPTR,#_HIDCONFIGDESC
	mov	(_DATAPTR + 1),#(_HIDCONFIGDESC >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$371$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:371: DATASIZE = ConfigDesc.wTotalLength.U8[MSB] +
	mov	dptr,#(_HIDCONFIGDESC + 0x0003)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	C$F3xx_USB0_Standard_Requests.c$372$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:372: 256*ConfigDesc.wTotalLength.U8[LSB];
	mov	dptr,#(_HIDCONFIGDESC + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	a
	mov	r5,a
	add	a,r7
	mov	_DATASIZE,a
	mov	a,r4
	addc	a,r6
	mov	(_DATASIZE + 1),a
	C$F3xx_USB0_Standard_Requests.c$373$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:373: break;
	ljmp	00118$
	C$F3xx_USB0_Standard_Requests.c$375$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:375: case DSC_STRING:
00103$:
	C$F3xx_USB0_Standard_Requests.c$378$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:378: if (SETUP.wValue.U8[LSB] > 2)   // If asking for string that's N/A
	mov	a,(_SETUP + 0x0002)
	mov	r7,a
	add	a,#0xff - 0x02
	jnc	00105$
	C$F3xx_USB0_Standard_Requests.c$380$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:380: Force_Stall();
	lcall	_Force_Stall
	ljmp	00118$
00105$:
	C$F3xx_USB0_Standard_Requests.c$384$3$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:384: DATAPTR = STRINGDESCTABLE[SETUP.wValue.U8[LSB]];
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_STRINGDESCTABLE
	mov	dpl,a
	mov	a,#(_STRINGDESCTABLE >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DATAPTR,r6
	mov	(_DATAPTR + 1),r7
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$386$3$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:386: DATASIZE = *DATAPTR;
	mov	r5,_DATAPTR
	mov	r6,(_DATAPTR + 1)
	mov	r7,(_DATAPTR + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	_DATASIZE,r5
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$388$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:388: break;
	ljmp	00118$
	C$F3xx_USB0_Standard_Requests.c$390$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:390: case DSC_INTERFACE:
00107$:
	C$F3xx_USB0_Standard_Requests.c$391$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:391: DATAPTR = (unsigned char*) &InterfaceDesc;
	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0009)
	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0009) >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$392$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:392: DATASIZE = InterfaceDesc.bLength;
	mov	dptr,#(_HIDCONFIGDESC + 0x0009)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DATASIZE,r7
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$393$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:393: break;
	C$F3xx_USB0_Standard_Requests.c$395$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:395: case DSC_ENDPOINT:
	sjmp	00118$
00108$:
	C$F3xx_USB0_Standard_Requests.c$400$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:400: if ( (SETUP.wValue.U8[LSB] == IN_EP1) )
	mov	r7,(_SETUP + 0x0002)
	cjne	r7,#0x81,00113$
	C$F3xx_USB0_Standard_Requests.c$402$3$64 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:402: DATAPTR = (unsigned char*) &Endpoint1Desc;
	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x001b)
	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x001b) >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$403$3$64 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:403: DATASIZE = Endpoint1Desc.bLength;
	mov	dptr,#(_HIDCONFIGDESC + 0x001b)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	_DATASIZE,r6
	mov	(_DATASIZE + 1),#0x00
	sjmp	00118$
00113$:
	C$F3xx_USB0_Standard_Requests.c$405$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:405: else if ( (SETUP.wValue.U8[LSB] == OUT_EP1) )
	cjne	r7,#0x01,00110$
	C$F3xx_USB0_Standard_Requests.c$407$3$65 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:407: DATAPTR = (unsigned char*) &Endpoint2Desc;
	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0022)
	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0022) >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$408$3$65 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:408: DATASIZE = Endpoint2Desc.bLength;
	mov	dptr,#(_HIDCONFIGDESC + 0x0022)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DATASIZE,r7
	mov	(_DATASIZE + 1),#0x00
	sjmp	00118$
00110$:
	C$F3xx_USB0_Standard_Requests.c$412$3$66 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:412: Force_Stall();
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$414$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:414: break;
	C$F3xx_USB0_Standard_Requests.c$416$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:416: case DSC_HID:                       // HID Specific (HID class descriptor)
	sjmp	00118$
00115$:
	C$F3xx_USB0_Standard_Requests.c$417$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:417: DATAPTR = (unsigned char*)&HidDesc;
	mov	_DATAPTR,#(_HIDCONFIGDESC + 0x0012)
	mov	(_DATAPTR + 1),#((_HIDCONFIGDESC + 0x0012) >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$418$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:418: DATASIZE = HidDesc.bLength;
	mov	dptr,#(_HIDCONFIGDESC + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DATASIZE,r7
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$419$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:419: break;
	C$F3xx_USB0_Standard_Requests.c$421$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:421: case DSC_HID_REPORT:                // HID Specific (HID report descriptor)
	sjmp	00118$
00116$:
	C$F3xx_USB0_Standard_Requests.c$422$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:422: DATAPTR = (unsigned char*)&HIDREPORTDESC;
	mov	_DATAPTR,#_HIDREPORTDESC
	mov	(_DATAPTR + 1),#(_HIDREPORTDESC >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$423$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:423: DATASIZE = HID_REPORT_DESCRIPTOR_SIZE;
	mov	_DATASIZE,#0x20
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$424$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:424: break;
	C$F3xx_USB0_Standard_Requests.c$426$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:426: default:
	sjmp	00118$
00117$:
	C$F3xx_USB0_Standard_Requests.c$427$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:427: Force_Stall ();               // Send Stall if unsupported request
	lcall	_Force_Stall
	C$F3xx_USB0_Standard_Requests.c$429$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:429: }
00118$:
	C$F3xx_USB0_Standard_Requests.c$432$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:432: if (SETUP.wValue.U8[MSB] == DSC_DEVICE ||
	mov	r7,(_SETUP + 0x0003)
	cjne	r7,#0x01,00183$
	sjmp	00122$
00183$:
	C$F3xx_USB0_Standard_Requests.c$433$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:433: SETUP.wValue.U8[MSB] == DSC_CONFIG     ||
	cjne	r7,#0x02,00184$
	sjmp	00122$
00184$:
	C$F3xx_USB0_Standard_Requests.c$434$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:434: SETUP.wValue.U8[MSB] == DSC_STRING     ||
	cjne	r7,#0x03,00185$
	sjmp	00122$
00185$:
	C$F3xx_USB0_Standard_Requests.c$435$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:435: SETUP.wValue.U8[MSB] == DSC_INTERFACE  ||
	cjne	r7,#0x04,00186$
	sjmp	00122$
00186$:
	C$F3xx_USB0_Standard_Requests.c$436$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:436: SETUP.wValue.U8[MSB] == DSC_ENDPOINT)
	cjne	r7,#0x05,00123$
00122$:
	C$F3xx_USB0_Standard_Requests.c$438$2$67 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:438: if ((SETUP.wLength.U8[LSB] < DATASIZE) &&
	mov	r6,(_SETUP + 0x0006)
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,_DATASIZE
	mov	a,r7
	subb	a,(_DATASIZE + 1)
	jnc	00123$
	C$F3xx_USB0_Standard_Requests.c$439$2$67 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:439: (SETUP.wLength.U8[MSB] == 0))
	mov	a,(_SETUP + 0x0007)
	jnz	00123$
	C$F3xx_USB0_Standard_Requests.c$441$3$68 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:441: DATASIZE = SETUP.wLength.U16;   // Send only requested amount of data
	mov	_DATASIZE,(_SETUP + 0x0006)
	mov	(_DATASIZE + 1),((_SETUP + 0x0006) + 1)
00123$:
	C$F3xx_USB0_Standard_Requests.c$444$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:444: if (EP_STATUS[0] != EP_STALL)       // Make sure endpoint not in stall mode
	mov	a,#0x04
	cjne	a,_EP_STATUS,00191$
	sjmp	00133$
00191$:
	C$F3xx_USB0_Standard_Requests.c$446$2$69 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:446: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);// Service SETUP Packet
00128$:
	mov	a,_USB0ADR
	jb	acc.7,00128$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$447$2$69 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:447: EP_STATUS[0] = EP_TX;             // Put endpoint in transmit mode
	mov	_EP_STATUS,#0x01
	C$F3xx_USB0_Standard_Requests.c$448$2$69 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:448: DATASENT = 0;                     // Reset Data Sent counter
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00133$:
	C$F3xx_USB0_Standard_Requests.c$450$1$60 ==.
	XG$Get_Descriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Configuration'
;------------------------------------------------------------
	G$Get_Configuration$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$462$1$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:462: void Get_Configuration (void)          // This routine returns current
;	-----------------------------------------
;	 function Get_Configuration
;	-----------------------------------------
_Get_Configuration:
	C$F3xx_USB0_Standard_Requests.c$465$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:465: if ( (SETUP.bmRequestType != OUT_DEVICE)    ||
	mov	a,#0x80
	cjne	a,_SETUP,00105$
	C$F3xx_USB0_Standard_Requests.c$467$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:467: SETUP.wValue.U8[MSB]  || SETUP.wValue.U8[LSB]||
	mov	a,(_SETUP + 0x0003)
	jnz	00105$
	mov	a,(_SETUP + 0x0002)
	jnz	00105$
	C$F3xx_USB0_Standard_Requests.c$469$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:469: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
	mov	a,(_SETUP + 0x0005)
	jnz	00105$
	mov	a,(_SETUP + 0x0004)
	jnz	00105$
	C$F3xx_USB0_Standard_Requests.c$471$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:471: SETUP.wLength.U8[MSB] || (SETUP.wLength.U8[LSB] != 1) )
	mov	a,(_SETUP + 0x0007)
	jnz	00105$
	mov	a,#0x01
	cjne	a,(_SETUP + 0x0006),00148$
	sjmp	00106$
00148$:
00105$:
	C$F3xx_USB0_Standard_Requests.c$473$2$72 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:473: Force_Stall ();                  // Otherwise send a stall to host
	lcall	_Force_Stall
	sjmp	00107$
00106$:
	C$F3xx_USB0_Standard_Requests.c$478$2$73 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:478: if (USB0_STATE == DEV_CONFIGURED)// If the device is configured, then
	mov	a,#0x04
	cjne	a,_USB0_STATE,00102$
	C$F3xx_USB0_Standard_Requests.c$481$3$74 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:481: DATAPTR = (unsigned char*)&ONES_PACKET;
	mov	_DATAPTR,#_ONES_PACKET
	mov	(_DATAPTR + 1),#(_ONES_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$482$3$74 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:482: DATASIZE = 1;
	mov	_DATASIZE,#0x01
	mov	(_DATASIZE + 1),#0x00
00102$:
	C$F3xx_USB0_Standard_Requests.c$484$2$73 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:484: if (USB0_STATE == DEV_ADDRESS)   // If the device is in address state, it
	mov	a,#0x03
	cjne	a,_USB0_STATE,00107$
	C$F3xx_USB0_Standard_Requests.c$486$3$75 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:486: DATAPTR = (unsigned char*)&ZERO_PACKET;
	mov	_DATAPTR,#_ZERO_PACKET
	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$487$3$75 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:487: DATASIZE = 1;
	mov	_DATASIZE,#0x01
	mov	(_DATASIZE + 1),#0x00
00107$:
	C$F3xx_USB0_Standard_Requests.c$490$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:490: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00153$
	sjmp	00119$
00153$:
	C$F3xx_USB0_Standard_Requests.c$493$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:493: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
00114$:
	mov	a,_USB0ADR
	jb	acc.7,00114$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$494$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:494: EP_STATUS[0] = EP_TX;            // Put endpoint into transmit mode
	mov	_EP_STATUS,#0x01
	C$F3xx_USB0_Standard_Requests.c$495$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:495: DATASENT = 0;                    // Reset Data Sent counter to zero
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00119$:
	C$F3xx_USB0_Standard_Requests.c$497$1$71 ==.
	XG$Get_Configuration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Configuration'
;------------------------------------------------------------
	G$Set_Configuration$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$509$1$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:509: void Set_Configuration (void)          // This routine allows host to change
;	-----------------------------------------
;	 function Set_Configuration
;	-----------------------------------------
_Set_Configuration:
	C$F3xx_USB0_Standard_Requests.c$513$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:513: if ((USB0_STATE == DEV_DEFAULT) ||
	mov	a,#0x02
	cjne	a,_USB0_STATE,00162$
	sjmp	00113$
00162$:
	C$F3xx_USB0_Standard_Requests.c$515$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:515: (SETUP.bmRequestType != IN_DEVICE) ||
	mov	a,_SETUP
	jnz	00113$
	C$F3xx_USB0_Standard_Requests.c$517$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:517: SETUP.wIndex.U8[MSB]  || SETUP.wIndex.U8[LSB]||
	mov	a,(_SETUP + 0x0005)
	jnz	00113$
	mov	a,(_SETUP + 0x0004)
	jnz	00113$
	C$F3xx_USB0_Standard_Requests.c$518$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:518: SETUP.wLength.U8[MSB] || SETUP.wLength.U8[LSB] ||
	mov	a,(_SETUP + 0x0007)
	jnz	00113$
	mov	a,(_SETUP + 0x0006)
	jnz	00113$
	C$F3xx_USB0_Standard_Requests.c$519$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:519: SETUP.wValue.U8[MSB]  || (SETUP.wValue.U8[LSB] > 1))
	mov	a,(_SETUP + 0x0003)
	jnz	00113$
	mov	a,(_SETUP + 0x0002)
	mov	r7,a
	add	a,#0xff - 0x01
	jnc	00114$
00113$:
	C$F3xx_USB0_Standard_Requests.c$522$2$79 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:522: Force_Stall ();                  // Send stall if SETUP data is invalid
	lcall	_Force_Stall
	sjmp	00115$
00114$:
	C$F3xx_USB0_Standard_Requests.c$527$2$80 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:527: if (SETUP.wValue.U8[LSB] > 0)     // Any positive configuration request
	mov	a,r7
	jz	00111$
	C$F3xx_USB0_Standard_Requests.c$530$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:530: USB0_STATE = DEV_CONFIGURED;
	mov	_USB0_STATE,#0x04
	C$F3xx_USB0_Standard_Requests.c$531$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:531: EP_STATUS[1] = EP_IDLE;       // Set endpoint status to idle (enabled)
	mov	(_EP_STATUS + 0x0001),#0x00
	C$F3xx_USB0_Standard_Requests.c$533$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:533: POLL_WRITE_BYTE (INDEX, 1);   // Change index to endpoint 1
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_Standard_Requests.c$535$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:535: POLL_WRITE_BYTE (EINCSR2, rbInSPLIT);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x04
	C$F3xx_USB0_Standard_Requests.c$536$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:536: POLL_WRITE_BYTE (INDEX, 0);   // Set index back to endpoint 0
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_Standard_Requests.c$538$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:538: Handle_In1();
	lcall	_Handle_In1
	sjmp	00115$
00111$:
	C$F3xx_USB0_Standard_Requests.c$542$3$82 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:542: USB0_STATE = DEV_ADDRESS;     // Unconfigures device by setting state
	mov	_USB0_STATE,#0x03
	C$F3xx_USB0_Standard_Requests.c$543$3$82 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:543: EP_STATUS[1] = EP_HALT;       // to address, and changing endpoint
	mov	(_EP_STATUS + 0x0001),#0x03
00115$:
	C$F3xx_USB0_Standard_Requests.c$547$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:547: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00174$
	sjmp	00128$
00174$:
	C$F3xx_USB0_Standard_Requests.c$549$2$83 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:549: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00128$:
	C$F3xx_USB0_Standard_Requests.c$553$1$78 ==.
	XG$Set_Configuration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Interface'
;------------------------------------------------------------
	G$Get_Interface$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$565$1$78 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:565: void Get_Interface (void)              // This routine returns 0x00, since
;	-----------------------------------------
;	 function Get_Interface
;	-----------------------------------------
_Get_Interface:
	C$F3xx_USB0_Standard_Requests.c$570$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:570: if ((USB0_STATE != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB0_STATE,00101$
	C$F3xx_USB0_Standard_Requests.c$572$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:572: (SETUP.bmRequestType != OUT_INTERFACE) ||
	mov	a,#0x81
	cjne	a,_SETUP,00101$
	C$F3xx_USB0_Standard_Requests.c$574$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:574: SETUP.wValue.U8[MSB]  ||SETUP.wValue.U8[LSB] ||
	mov	a,(_SETUP + 0x0003)
	jnz	00101$
	mov	a,(_SETUP + 0x0002)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$576$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:576: SETUP.wIndex.U8[MSB]  ||SETUP.wIndex.U8[LSB] ||
	mov	a,(_SETUP + 0x0005)
	jnz	00101$
	mov	a,(_SETUP + 0x0004)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$577$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:577: SETUP.wLength.U8[MSB] ||(SETUP.wLength.U8[LSB] != 1))
	mov	a,(_SETUP + 0x0007)
	jnz	00101$
	mov	a,#0x01
	cjne	a,(_SETUP + 0x0006),00145$
	sjmp	00102$
00145$:
00101$:
	C$F3xx_USB0_Standard_Requests.c$579$2$86 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:579: Force_Stall ();                  // Then return stall due to invalid
	lcall	_Force_Stall
	sjmp	00103$
00102$:
	C$F3xx_USB0_Standard_Requests.c$586$2$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:586: DATAPTR = (unsigned char*)&ZERO_PACKET;
	mov	_DATAPTR,#_ZERO_PACKET
	mov	(_DATAPTR + 1),#(_ZERO_PACKET >> 8)
	mov	(_DATAPTR + 2),#0x80
	C$F3xx_USB0_Standard_Requests.c$587$2$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:587: DATASIZE = 1;
	mov	_DATASIZE,#0x01
	mov	(_DATASIZE + 1),#0x00
00103$:
	C$F3xx_USB0_Standard_Requests.c$589$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:589: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00146$
	sjmp	00116$
00146$:
	C$F3xx_USB0_Standard_Requests.c$593$2$88 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:593: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
00111$:
	mov	a,_USB0ADR
	jb	acc.7,00111$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$594$2$88 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:594: EP_STATUS[0] = EP_TX;
	mov	_EP_STATUS,#0x01
	C$F3xx_USB0_Standard_Requests.c$595$2$88 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:595: DATASENT = 0;
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00116$:
	C$F3xx_USB0_Standard_Requests.c$597$1$85 ==.
	XG$Get_Interface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Interface'
;------------------------------------------------------------
	G$Set_Interface$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$609$1$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:609: void Set_Interface (void)
;	-----------------------------------------
;	 function Set_Interface
;	-----------------------------------------
_Set_Interface:
	C$F3xx_USB0_Standard_Requests.c$612$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:612: if ((SETUP.bmRequestType != IN_INTERFACE)  ||
	mov	a,#0x01
	cjne	a,_SETUP,00101$
	C$F3xx_USB0_Standard_Requests.c$614$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:614: SETUP.wLength.U8[MSB] ||SETUP.wLength.U8[LSB]||
	mov	a,(_SETUP + 0x0007)
	jnz	00101$
	mov	a,(_SETUP + 0x0006)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$615$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:615: SETUP.wValue.U8[MSB]  ||SETUP.wValue.U8[LSB] ||
	mov	a,(_SETUP + 0x0003)
	jnz	00101$
	mov	a,(_SETUP + 0x0002)
	jnz	00101$
	C$F3xx_USB0_Standard_Requests.c$616$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:616: SETUP.wIndex.U8[MSB]  ||SETUP.wIndex.U8[LSB])
	mov	a,(_SETUP + 0x0005)
	jnz	00101$
	mov	a,(_SETUP + 0x0004)
	jz	00102$
00101$:
	C$F3xx_USB0_Standard_Requests.c$618$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:618: Force_Stall ();                  // Othewise send a stall to host
	lcall	_Force_Stall
00102$:
	C$F3xx_USB0_Standard_Requests.c$620$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:620: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00140$
	sjmp	00114$
00140$:
	C$F3xx_USB0_Standard_Requests.c$622$2$92 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:622: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00109$:
	mov	a,_USB0ADR
	jb	acc.7,00109$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00114$:
	C$F3xx_USB0_Standard_Requests.c$626$1$90 ==.
	XG$Set_Interface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Idle'
;------------------------------------------------------------
	G$Get_Idle$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$634$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:634: void Get_Idle(void) {
;	-----------------------------------------
;	 function Get_Idle
;	-----------------------------------------
_Get_Idle:
	C$F3xx_USB0_Standard_Requests.c$635$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:635: }
	C$F3xx_USB0_Standard_Requests.c$635$1$90 ==.
	XG$Get_Idle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Protocol'
;------------------------------------------------------------
	G$Get_Protocol$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$645$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:645: void Get_Protocol(void) { }
;	-----------------------------------------
;	 function Get_Protocol
;	-----------------------------------------
_Get_Protocol:
	C$F3xx_USB0_Standard_Requests.c$645$1$90 ==.
	XG$Get_Protocol$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Protocol'
;------------------------------------------------------------
	G$Set_Protocol$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$653$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:653: void Set_Protocol (void) { }
;	-----------------------------------------
;	 function Set_Protocol
;	-----------------------------------------
_Set_Protocol:
	C$F3xx_USB0_Standard_Requests.c$653$1$90 ==.
	XG$Set_Protocol$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Idle'
;------------------------------------------------------------
	G$Set_Idle$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$666$1$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:666: void Set_Idle (void)
;	-----------------------------------------
;	 function Set_Idle
;	-----------------------------------------
_Set_Idle:
	C$F3xx_USB0_Standard_Requests.c$669$1$100 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:669: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00112$
	sjmp	00106$
00112$:
	C$F3xx_USB0_Standard_Requests.c$672$2$101 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:672: POLL_WRITE_BYTE (E0CSR, (rbSOPRDY | rbDATAEND));
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
00106$:
	C$F3xx_USB0_Standard_Requests.c$675$1$100 ==.
	XG$Set_Idle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Report'
;------------------------------------------------------------
	G$Get_Report$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$689$1$100 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:689: void Get_Report (void)
;	-----------------------------------------
;	 function Get_Report
;	-----------------------------------------
_Get_Report:
	C$F3xx_USB0_Standard_Requests.c$692$1$103 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:692: ReportHandler_IN_ISR(SETUP.wValue.U8[LSB]);
	mov	dpl,(_SETUP + 0x0002)
	lcall	_ReportHandler_IN_ISR
	C$F3xx_USB0_Standard_Requests.c$694$1$103 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:694: DATAPTR = IN_BUFFER.Ptr;
	mov	_DATAPTR,(_IN_BUFFER + 0x0001)
	mov	(_DATAPTR + 1),((_IN_BUFFER + 0x0001) + 1)
	mov	(_DATAPTR + 2),((_IN_BUFFER + 0x0001) + 2)
	C$F3xx_USB0_Standard_Requests.c$695$1$103 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:695: DATASIZE = IN_BUFFER.Length;
	mov	_DATASIZE,_IN_BUFFER
	mov	(_DATASIZE + 1),#0x00
	C$F3xx_USB0_Standard_Requests.c$697$1$103 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:697: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00112$
	sjmp	00106$
00112$:
	C$F3xx_USB0_Standard_Requests.c$700$2$104 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:700: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$701$2$104 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:701: EP_STATUS[0] = EP_TX;            // Endpoint 0 in transmit mode
	mov	_EP_STATUS,#0x01
	C$F3xx_USB0_Standard_Requests.c$702$2$104 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:702: DATASENT = 0;                    // Reset DATASENT counter
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00106$:
	C$F3xx_USB0_Standard_Requests.c$704$1$103 ==.
	XG$Get_Report$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Report'
;------------------------------------------------------------
	G$Set_Report$0$0 ==.
	C$F3xx_USB0_Standard_Requests.c$718$1$103 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:718: void Set_Report (void)
;	-----------------------------------------
;	 function Set_Report
;	-----------------------------------------
_Set_Report:
	C$F3xx_USB0_Standard_Requests.c$721$1$106 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:721: Setup_OUT_BUFFER ();
	lcall	_Setup_OUT_BUFFER
	C$F3xx_USB0_Standard_Requests.c$724$1$106 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:724: DATAPTR = OUT_BUFFER.Ptr;
	mov	_DATAPTR,(_OUT_BUFFER + 0x0001)
	mov	(_DATAPTR + 1),((_OUT_BUFFER + 0x0001) + 1)
	mov	(_DATAPTR + 2),((_OUT_BUFFER + 0x0001) + 2)
	C$F3xx_USB0_Standard_Requests.c$725$1$106 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:725: DATASIZE = SETUP.wLength.U16;
	mov	_DATASIZE,(_SETUP + 0x0006)
	mov	(_DATASIZE + 1),((_SETUP + 0x0006) + 1)
	C$F3xx_USB0_Standard_Requests.c$727$1$106 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:727: if (EP_STATUS[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_EP_STATUS,00112$
	sjmp	00106$
00112$:
	C$F3xx_USB0_Standard_Requests.c$730$2$107 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:730: POLL_WRITE_BYTE (E0CSR, rbSOPRDY);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$F3xx_USB0_Standard_Requests.c$731$2$107 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:731: EP_STATUS[0] = EP_RX;            // Endpoint 0 in transmit mode
	mov	_EP_STATUS,#0x02
	C$F3xx_USB0_Standard_Requests.c$732$2$107 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_Standard_Requests.c:732: DATASENT = 0;                    // Reset DATASENT counter
	clr	a
	mov	_DATASENT,a
	mov	(_DATASENT + 1),a
00106$:
	C$F3xx_USB0_Standard_Requests.c$734$1$106 ==.
	XG$Set_Report$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$ONES_PACKET$0$0 == .
_ONES_PACKET:
	.db #0x01	; 1
	.db #0x00	; 0
G$ZERO_PACKET$0$0 == .
_ZERO_PACKET:
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
