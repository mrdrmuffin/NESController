;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Wed Jan 30 20:10:35 2013
;--------------------------------------------------------
	.module F326_USB0_Mouse
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Timer1_ISR
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
	.globl _TOGGLE2
	.globl _TOGGLE1
	.globl _SWITCH_2_STATE
	.globl _SWITCH_1_STATE
	.globl _IN_PACKET
	.globl _MOUSE_BUTTON
	.globl _MOUSE_AXIS
	.globl _MOUSE_VECTOR
	.globl _System_Init
	.globl _USB0_Init
	.globl _Sysclk_Init
	.globl _Port_Init
	.globl _Timer_Init
	.globl _Delay
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
G$MOUSE_VECTOR$0$0==.
_MOUSE_VECTOR::
	.ds 1
G$MOUSE_AXIS$0$0==.
_MOUSE_AXIS::
	.ds 1
G$MOUSE_BUTTON$0$0==.
_MOUSE_BUTTON::
	.ds 1
G$IN_PACKET$0$0==.
_IN_PACKET::
	.ds 2
G$SWITCH_1_STATE$0$0==.
_SWITCH_1_STATE::
	.ds 1
G$SWITCH_2_STATE$0$0==.
_SWITCH_2_STATE::
	.ds 1
G$TOGGLE1$0$0==.
_TOGGLE1::
	.ds 1
G$TOGGLE2$0$0==.
_TOGGLE2::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
	C$F326_USB0_Mouse.c$86$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:86: unsigned char SWITCH_1_STATE = 0;      // Indicate status of switch
	mov	_SWITCH_1_STATE,#0x00
	C$F326_USB0_Mouse.c$87$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:87: unsigned char SWITCH_2_STATE = 0;      // starting at 0 == off
	mov	_SWITCH_2_STATE,#0x00
	C$F326_USB0_Mouse.c$89$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:89: unsigned char TOGGLE1 = 0;             // Variable to make sure each button
	mov	_TOGGLE1,#0x00
	C$F326_USB0_Mouse.c$90$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:90: unsigned char TOGGLE2 = 0;             // press and release toggles switch
	mov	_TOGGLE2,#0x00
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
;Allocation info for local variables in function 'Timer1_ISR'
;------------------------------------------------------------
	G$Timer1_ISR$0$0 ==.
	C$F326_USB0_Mouse.c$115$0$0 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:115: void Timer1_ISR(void) interrupt 3
;	-----------------------------------------
;	 function Timer1_ISR
;	-----------------------------------------
_Timer1_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	C$F326_USB0_Mouse.c$117$1$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:117: if (!(P2 & Sw1))                    // Check for switch #1 pressed
	mov	a,_P2
	jb	acc.0,00104$
	C$F326_USB0_Mouse.c$119$2$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:119: if (TOGGLE1 == 0)                // Toggle is used to debounce switch
	mov	a,_TOGGLE1
	jnz	00105$
	C$F326_USB0_Mouse.c$122$3$29 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:122: SWITCH_1_STATE = ~SWITCH_1_STATE;
	mov	a,_SWITCH_1_STATE
	cpl	a
	mov	_SWITCH_1_STATE,a
	C$F326_USB0_Mouse.c$123$3$29 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:123: TOGGLE1 = 1;                  // to the host
	mov	_TOGGLE1,#0x01
	sjmp	00105$
00104$:
	C$F326_USB0_Mouse.c$126$1$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:126: else TOGGLE1 = 0;                   // Reset toggle variable
	mov	_TOGGLE1,#0x00
00105$:
	C$F326_USB0_Mouse.c$128$1$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:128: SWITCH_2_STATE = (P2 & Sw2);
	mov	a,#0x02
	anl	a,_P2
	mov	_SWITCH_2_STATE,a
	C$F326_USB0_Mouse.c$130$1$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:130: TF1 = 0;                              // Clear Timer2 interrupt flag
	clr	_TF1
	pop	acc
	C$F326_USB0_Mouse.c$131$1$27 ==.
	XG$Timer1_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'System_Init'
;------------------------------------------------------------
	G$System_Init$0$0 ==.
	C$F326_USB0_Mouse.c$147$1$27 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:147: void System_Init(void)
;	-----------------------------------------
;	 function System_Init
;	-----------------------------------------
_System_Init:
	C$F326_USB0_Mouse.c$150$1$31 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:150: Sysclk_Init ();                     // initialize system clock
	lcall	_Sysclk_Init
	C$F326_USB0_Mouse.c$151$1$31 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:151: Port_Init ();                       // configure cross bar
	lcall	_Port_Init
	C$F326_USB0_Mouse.c$152$1$31 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:152: Timer_Init ();                      // configure timer
	lcall	_Timer_Init
	C$F326_USB0_Mouse.c$153$1$31 ==.
	XG$System_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB0_Init'
;------------------------------------------------------------
	G$USB0_Init$0$0 ==.
	C$F326_USB0_Mouse.c$166$1$31 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:166: void USB0_Init(void)
;	-----------------------------------------
;	 function USB0_Init
;	-----------------------------------------
_USB0_Init:
	C$F326_USB0_Mouse.c$169$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:169: POLL_WRITE_BYTE(POWER,  0x08);      // Force Asynchronous USB Reset
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x08
	C$F326_USB0_Mouse.c$170$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:170: POLL_WRITE_BYTE(IN1IE,  0x03);      // Enable Endpoint 0-1 in interrupts
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x07
	mov	_USB0DAT,#0x03
	C$F326_USB0_Mouse.c$171$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:171: POLL_WRITE_BYTE(OUT1IE, 0x02);      // Enable Endpoint 0-1 out interrupts
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x09
	mov	_USB0DAT,#0x02
	C$F326_USB0_Mouse.c$172$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:172: POLL_WRITE_BYTE(CMIE,   0x07);      // Enable Reset, Resume, and Suspend
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x0B
	mov	_USB0DAT,#0x07
	C$F326_USB0_Mouse.c$174$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:174: USB0XCN = 0xE0;                     // Enable transceiver; select full speed
	mov	_USB0XCN,#0xE0
	C$F326_USB0_Mouse.c$175$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:175: POLL_WRITE_BYTE(CLKREC, 0x89);      // Enable clock recovery, single-step
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x0F
	mov	_USB0DAT,#0x89
	C$F326_USB0_Mouse.c$178$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:178: EIE1 |= 0x02;                       // Enable USB0 Interrupts
	orl	_EIE1,#0x02
	C$F326_USB0_Mouse.c$179$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:179: EA = 1;                             // Global Interrupt enable
	setb	_EA
	C$F326_USB0_Mouse.c$181$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:181: POLL_WRITE_BYTE(POWER,  0x01);      // Inhibit Bit and enable suspend
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
	C$F326_USB0_Mouse.c$184$1$33 ==.
	XG$USB0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sysclk_Init'
;------------------------------------------------------------
	G$Sysclk_Init$0$0 ==.
	C$F326_USB0_Mouse.c$198$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:198: void Sysclk_Init(void)
;	-----------------------------------------
;	 function Sysclk_Init
;	-----------------------------------------
_Sysclk_Init:
	C$F326_USB0_Mouse.c$201$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:201: OSCICN |= 0x82;
	orl	_OSCICN,#0x82
	C$F326_USB0_Mouse.c$202$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:202: CLKMUL  = 0x00;
	mov	_CLKMUL,#0x00
	C$F326_USB0_Mouse.c$203$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:203: CLKMUL |= 0x80;                     // Enable clock multiplier
	orl	_CLKMUL,#0x80
	C$F326_USB0_Mouse.c$205$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:205: Delay();
	lcall	_Delay
	C$F326_USB0_Mouse.c$207$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:207: CLKMUL |= 0xC0;                     // Initialize the clock multiplier
	orl	_CLKMUL,#0xC0
	C$F326_USB0_Mouse.c$209$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:209: while(!(CLKMUL & 0x20));            // Wait for multiplier to lock
00101$:
	mov	a,_CLKMUL
	jnb	acc.5,00101$
	C$F326_USB0_Mouse.c$211$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:211: CLKSEL = 0x02;                      // Use Clock Multiplier/2 as system clock
	mov	_CLKSEL,#0x02
	C$F326_USB0_Mouse.c$213$1$35 ==.
	XG$Sysclk_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$F326_USB0_Mouse.c$225$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:225: void Port_Init(void)
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$F326_USB0_Mouse.c$227$1$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:227: P0MDOUT |= 0xFF;                    // Port 0 pins 0-3 set high impedence
	mov	a,_P0MDOUT
	mov	_P0MDOUT,#0xFF
	C$F326_USB0_Mouse.c$228$1$37 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$F326_USB0_Mouse.c$243$1$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:243: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$F326_USB0_Mouse.c$246$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:246: TCON      = 0x40;
	mov	_TCON,#0x40
	C$F326_USB0_Mouse.c$247$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:247: TMOD      = 0x20;
	mov	_TMOD,#0x20
	C$F326_USB0_Mouse.c$248$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:248: CKCON     = 0x02;
	mov	_CKCON,#0x02
	C$F326_USB0_Mouse.c$250$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:250: TH1       = 0x00;                   // set reload value
	mov	_TH1,#0x00
	C$F326_USB0_Mouse.c$251$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:251: IE        = 0x08;                   // enable timer interrupt
	mov	_IE,#0x08
	C$F326_USB0_Mouse.c$253$1$39 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Delay$0$0 ==.
	C$F326_USB0_Mouse.c$268$1$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:268: void Delay(void)
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	C$F326_USB0_Mouse.c$271$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:271: for(x = 0;x < 500;x)
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0xF4
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jnc	00105$
	C$F326_USB0_Mouse.c$272$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:272: x++;
	inc	r6
	C$F326_USB0_Mouse.c$271$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F326_USB0_Mouse.c:271: for(x = 0;x < 500;x)
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$F326_USB0_Mouse.c$273$1$41 ==.
	XG$Delay$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
