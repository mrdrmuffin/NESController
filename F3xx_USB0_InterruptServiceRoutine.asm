;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Wed Jan 30 20:10:35 2013
;--------------------------------------------------------
	.module F3xx_USB0_InterruptServiceRoutine
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Fifo_Write_InterruptServiceRoutine_PARM_3
	.globl _Fifo_Write_InterruptServiceRoutine_PARM_2
	.globl _Fifo_Write_Foreground_PARM_3
	.globl _Fifo_Write_Foreground_PARM_2
	.globl _Fifo_Read_PARM_3
	.globl _Fifo_Read_PARM_2
	.globl _Usb_ISR
	.globl _Setup_OUT_BUFFER
	.globl _ReportHandler_OUT
	.globl _ReportHandler_IN_Foreground
	.globl _Set_Protocol
	.globl _Get_Protocol
	.globl _Set_Idle
	.globl _Get_Idle
	.globl _Set_Report
	.globl _Get_Report
	.globl _Set_Interface
	.globl _Get_Interface
	.globl _Set_Configuration
	.globl _Get_Configuration
	.globl _Get_Descriptor
	.globl _Set_Address
	.globl _Set_Feature
	.globl _Clear_Feature
	.globl _Get_Status
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
	.globl _EP_STATUS
	.globl _DATAPTR
	.globl _DATASENT
	.globl _DATASIZE
	.globl _SETUP
	.globl _USB0_STATE
	.globl _Usb_Reset
	.globl _Usb_Resume
	.globl _Handle_Control
	.globl _Handle_In1
	.globl _Handle_Out1
	.globl _Usb_Suspend
	.globl _Fifo_Read
	.globl _Fifo_Write_Foreground
	.globl _Fifo_Write_InterruptServiceRoutine
	.globl _Force_Stall
	.globl _SendPacket
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$USB0_STATE$0$0==.
_USB0_STATE::
	.ds 1
G$SETUP$0$0==.
_SETUP::
	.ds 8
G$DATASIZE$0$0==.
_DATASIZE::
	.ds 2
G$DATASENT$0$0==.
_DATASENT::
	.ds 2
G$DATAPTR$0$0==.
_DATAPTR::
	.ds 3
G$EP_STATUS$0$0==.
_EP_STATUS::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LF3xx_USB0_InterruptServiceRoutine.Usb_Resume$k$1$44==.
_Usb_Resume_k_1_44:
	.ds 2
	.area	OSEG    (OVR,DATA)
LF3xx_USB0_InterruptServiceRoutine.Usb_Suspend$k$1$73==.
_Usb_Suspend_k_1_73:
	.ds 2
	.area	OSEG    (OVR,DATA)
LF3xx_USB0_InterruptServiceRoutine.Fifo_Read$uNumBytes$1$74==.
_Fifo_Read_PARM_2:
	.ds 2
LF3xx_USB0_InterruptServiceRoutine.Fifo_Read$pData$1$74==.
_Fifo_Read_PARM_3:
	.ds 3
	.area	OSEG    (OVR,DATA)
LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_Foreground$uNumBytes$1$78==.
_Fifo_Write_Foreground_PARM_2:
	.ds 2
LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_Foreground$pData$1$78==.
_Fifo_Write_Foreground_PARM_3:
	.ds 3
	.area	OSEG    (OVR,DATA)
LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_InterruptServiceRoutine$uNumBytes$1$82==.
_Fifo_Write_InterruptServiceRoutine_PARM_2:
	.ds 2
LF3xx_USB0_InterruptServiceRoutine.Fifo_Write_InterruptServiceRoutine$pData$1$82==.
_Fifo_Write_InterruptServiceRoutine_PARM_3:
	.ds 3
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
LF3xx_USB0_InterruptServiceRoutine.SendPacket$EAState$1$89==.
_SendPacket_EAState_1_89:
	.ds 1
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
	C$F3xx_USB0_InterruptServiceRoutine.c$59$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:59: U8 EP_STATUS[3] = {EP_IDLE, EP_HALT, EP_HALT};
	mov	_EP_STATUS,#0x00
	mov	(_EP_STATUS + 0x0001),#0x03
	mov	(_EP_STATUS + 0x0002),#0x03
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
;Allocation info for local variables in function 'Usb_ISR'
;------------------------------------------------------------
;bCommon                   Allocated to registers r7 
;bIn                       Allocated to registers r6 
;bOut                      Allocated to registers r5 
;------------------------------------------------------------
	G$Usb_ISR$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$94$0$0 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:94: void Usb_ISR (void) interrupt 8        // Top-level USB ISR
;	-----------------------------------------
;	 function Usb_ISR
;	-----------------------------------------
_Usb_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$98$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:98: POLL_READ_BYTE (CMINT, bCommon);    // Read all interrupt registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x86
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	r7,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$99$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:99: POLL_READ_BYTE (IN1INT, bIn);       // this read also clears the register
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x82
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	r6,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$100$1$33 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:100: POLL_READ_BYTE (OUT1INT, bOut);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x84
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	r5,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$102$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:102: if (bCommon & rbRSUINT)          // Handle Resume interrupt
	mov	a,r7
	jnb	acc.1,00120$
	C$F3xx_USB0_InterruptServiceRoutine.c$104$3$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:104: Usb_Resume ();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Usb_Resume
	pop	ar5
	pop	ar6
	pop	ar7
00120$:
	C$F3xx_USB0_InterruptServiceRoutine.c$106$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:106: if (bCommon & rbRSTINT)          // Handle Reset interrupt
	mov	a,r7
	jnb	acc.2,00122$
	C$F3xx_USB0_InterruptServiceRoutine.c$108$3$36 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:108: Usb_Reset ();
	push	ar7
	push	ar6
	push	ar5
	lcall	_Usb_Reset
	pop	ar5
	pop	ar6
	pop	ar7
00122$:
	C$F3xx_USB0_InterruptServiceRoutine.c$110$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:110: if (bIn & rbEP0)                 // Handle SETUP packet received
	mov	a,r6
	jnb	acc.0,00124$
	C$F3xx_USB0_InterruptServiceRoutine.c$112$3$37 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:112: Handle_Control ();            // is in transmit mode
	push	ar7
	push	ar6
	push	ar5
	lcall	_Handle_Control
	pop	ar5
	pop	ar6
	pop	ar7
00124$:
	C$F3xx_USB0_InterruptServiceRoutine.c$114$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:114: if (bIn & rbIN1)                 // Handle In Packet sent, put new data
	mov	a,r6
	jnb	acc.1,00126$
	C$F3xx_USB0_InterruptServiceRoutine.c$116$3$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:116: Handle_In1 ();
	push	ar7
	push	ar5
	lcall	_Handle_In1
	pop	ar5
	pop	ar7
00126$:
	C$F3xx_USB0_InterruptServiceRoutine.c$118$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:118: if (bOut & rbOUT1)               // Handle Out packet received, take
	mov	a,r5
	jnb	acc.1,00128$
	C$F3xx_USB0_InterruptServiceRoutine.c$120$3$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:120: Handle_Out1 ();
	push	ar7
	lcall	_Handle_Out1
	pop	ar7
00128$:
	C$F3xx_USB0_InterruptServiceRoutine.c$122$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:122: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
	mov	a,r7
	jnb	acc.0,00131$
	C$F3xx_USB0_InterruptServiceRoutine.c$124$3$40 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:124: Usb_Suspend ();
	lcall	_Usb_Suspend
00131$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$F3xx_USB0_InterruptServiceRoutine.c$127$2$34 ==.
	XG$Usb_ISR$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Reset'
;------------------------------------------------------------
	G$Usb_Reset$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$145$2$34 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:145: void Usb_Reset (void)
;	-----------------------------------------
;	 function Usb_Reset
;	-----------------------------------------
_Usb_Reset:
	C$F3xx_USB0_InterruptServiceRoutine.c$147$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:147: USB0_STATE = DEV_DEFAULT;           // Set device state to default
	mov	_USB0_STATE,#0x02
	C$F3xx_USB0_InterruptServiceRoutine.c$149$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:149: POLL_WRITE_BYTE (POWER, 0x01);      // Clear usb inhibit bit to enable USB
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_InterruptServiceRoutine.c$152$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:152: EP_STATUS[0] = EP_IDLE;             // Set default Endpoint Status
	mov	_EP_STATUS,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$153$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:153: EP_STATUS[1] = EP_HALT;
	mov	(_EP_STATUS + 0x0001),#0x03
	C$F3xx_USB0_InterruptServiceRoutine.c$154$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:154: EP_STATUS[2] = EP_HALT;
	mov	(_EP_STATUS + 0x0002),#0x03
	C$F3xx_USB0_InterruptServiceRoutine.c$155$1$42 ==.
	XG$Usb_Reset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Resume'
;------------------------------------------------------------
;k                         Allocated with name '_Usb_Resume_k_1_44'
;------------------------------------------------------------
	G$Usb_Resume$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$170$1$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:170: void Usb_Resume(void)
;	-----------------------------------------
;	 function Usb_Resume
;	-----------------------------------------
_Usb_Resume:
	C$F3xx_USB0_InterruptServiceRoutine.c$174$1$44 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:174: k++;
	mov	a,#0x01
	add	a,_Usb_Resume_k_1_44
	mov	_Usb_Resume_k_1_44,a
	clr	a
	addc	a,(_Usb_Resume_k_1_44 + 1)
	mov	(_Usb_Resume_k_1_44 + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$177$1$44 ==.
	XG$Usb_Resume$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_Control'
;------------------------------------------------------------
;ControlReg                Allocated to registers r7 
;------------------------------------------------------------
	G$Handle_Control$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$192$1$44 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:192: void Handle_Control (void)
;	-----------------------------------------
;	 function Handle_Control
;	-----------------------------------------
_Handle_Control:
	C$F3xx_USB0_InterruptServiceRoutine.c$197$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:197: POLL_WRITE_BYTE (INDEX, 0);         // Set Index to Endpoint Zero
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$198$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:198: POLL_READ_BYTE (E0CSR, ControlReg); // Read control register
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r7,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$200$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:200: if (EP_STATUS[0] == EP_ADDRESS)     // Handle Status Phase of Set Address
	mov	a,#0x05
	cjne	a,_EP_STATUS,00114$
	C$F3xx_USB0_InterruptServiceRoutine.c$203$2$47 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:203: POLL_WRITE_BYTE (FADDR, SETUP.wValue.U8[LSB]);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x00
	mov	_USB0DAT,(_SETUP + 0x0002)
	C$F3xx_USB0_InterruptServiceRoutine.c$204$2$47 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:204: EP_STATUS[0] = EP_IDLE;
	mov	_EP_STATUS,#0x00
00114$:
	C$F3xx_USB0_InterruptServiceRoutine.c$207$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:207: if (ControlReg & rbSTSTL)           // If last packet was a sent stall,
	mov	a,r7
	jnb	acc.2,00119$
	C$F3xx_USB0_InterruptServiceRoutine.c$210$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:210: POLL_WRITE_BYTE (E0CSR, 0);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$211$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:211: EP_STATUS[0] = EP_IDLE;
	mov	_EP_STATUS,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$212$2$48 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:212: return;
	ljmp	00198$
00119$:
	C$F3xx_USB0_InterruptServiceRoutine.c$215$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:215: if (ControlReg & rbSUEND)           // If last SETUP transaction was
	mov	a,r7
	jnb	acc.4,00127$
	C$F3xx_USB0_InterruptServiceRoutine.c$217$2$49 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:217: POLL_WRITE_BYTE (E0CSR, rbDATAEND);
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x08
	C$F3xx_USB0_InterruptServiceRoutine.c$219$2$49 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:219: POLL_WRITE_BYTE (E0CSR, rbSSUEND);
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x80
	C$F3xx_USB0_InterruptServiceRoutine.c$220$2$49 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:220: EP_STATUS[0] = EP_IDLE;          // to idle state
	mov	_EP_STATUS,#0x00
00127$:
	C$F3xx_USB0_InterruptServiceRoutine.c$223$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:223: if (EP_STATUS[0] == EP_IDLE)        // If Endpoint 0 is in idle mode
	mov	a,_EP_STATUS
	jz	00299$
	ljmp	00153$
00299$:
	C$F3xx_USB0_InterruptServiceRoutine.c$225$2$50 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:225: if (ControlReg & rbOPRDY)        // Make sure that EP 0 has an Out Packet
	mov	a,r7
	jb	acc.0,00300$
	ljmp	00153$
00300$:
	C$F3xx_USB0_InterruptServiceRoutine.c$229$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:229: Fifo_Read (FIFO_EP0, 8, (unsigned char *)&SETUP);
	mov	r6,#_SETUP
	mov	_Fifo_Read_PARM_3,r6
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x08
	mov	(_Fifo_Read_PARM_2 + 1),#0x00
	mov	dpl,#0x20
	push	ar7
	lcall	_Fifo_Read
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$238$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:238: SETUP.wValue.U16 = SETUP.wValue.U8[MSB] + 256*SETUP.wValue.U8[LSB];
	mov	r5,(_SETUP + 0x0003)
	mov	r6,#0x00
	mov	r3,(_SETUP + 0x0002)
	mov	ar4,r3
	clr	a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	((_SETUP + 0x0002) + 0),r5
	mov	((_SETUP + 0x0002) + 1),r6
	C$F3xx_USB0_InterruptServiceRoutine.c$239$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:239: SETUP.wIndex.U16 = SETUP.wIndex.U8[MSB] + 256*SETUP.wIndex.U8[LSB];
	mov	r5,(_SETUP + 0x0005)
	mov	r6,#0x00
	mov	r3,(_SETUP + 0x0004)
	mov	ar4,r3
	clr	a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	((_SETUP + 0x0004) + 0),r5
	mov	((_SETUP + 0x0004) + 1),r6
	C$F3xx_USB0_InterruptServiceRoutine.c$240$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:240: SETUP.wLength.U16 = SETUP.wLength.U8[MSB] + 256*SETUP.wLength.U8[LSB];
	mov	r5,(_SETUP + 0x0007)
	mov	r6,#0x00
	mov	r3,(_SETUP + 0x0006)
	mov	ar4,r3
	clr	a
	mov	r3,a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	((_SETUP + 0x0006) + 0),r5
	mov	((_SETUP + 0x0006) + 1),r6
	C$F3xx_USB0_InterruptServiceRoutine.c$243$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:243: if( (SETUP.bmRequestType & ~0x80) == DSC_HID) {
	mov	r5,_SETUP
	mov	r6,#0x00
	anl	ar5,#0x7F
	cjne	r5,#0x21,00148$
	cjne	r6,#0x00,00148$
	C$F3xx_USB0_InterruptServiceRoutine.c$244$4$52 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:244: switch (SETUP.bRequest) {
	mov	r6,(_SETUP + 0x0001)
	cjne	r6,#0x01,00303$
	sjmp	00128$
00303$:
	cjne	r6,#0x02,00304$
	sjmp	00130$
00304$:
	cjne	r6,#0x03,00305$
	sjmp	00132$
00305$:
	cjne	r6,#0x09,00306$
	sjmp	00129$
00306$:
	cjne	r6,#0x0A,00307$
	sjmp	00131$
00307$:
	C$F3xx_USB0_InterruptServiceRoutine.c$245$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:245: case GET_REPORT:
	cjne	r6,#0x0B,00134$
	sjmp	00133$
00128$:
	C$F3xx_USB0_InterruptServiceRoutine.c$246$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:246: Get_Report ();
	push	ar7
	lcall	_Get_Report
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$247$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:247: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$248$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:248: case SET_REPORT:
00129$:
	C$F3xx_USB0_InterruptServiceRoutine.c$249$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:249: Set_Report ();
	push	ar7
	lcall	_Set_Report
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$250$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:250: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$251$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:251: case GET_IDLE:
00130$:
	C$F3xx_USB0_InterruptServiceRoutine.c$252$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:252: Get_Idle ();
	push	ar7
	lcall	_Get_Idle
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$253$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:253: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$254$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:254: case SET_IDLE:
00131$:
	C$F3xx_USB0_InterruptServiceRoutine.c$255$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:255: Set_Idle ();
	push	ar7
	lcall	_Set_Idle
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$256$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:256: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$257$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:257: case GET_PROTOCOL:
00132$:
	C$F3xx_USB0_InterruptServiceRoutine.c$258$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:258: Get_Protocol ();
	push	ar7
	lcall	_Get_Protocol
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$259$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:259: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$260$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:260: case SET_PROTOCOL:
00133$:
	C$F3xx_USB0_InterruptServiceRoutine.c$261$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:261: Set_Protocol ();
	push	ar7
	lcall	_Set_Protocol
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$262$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:262: break;
	ljmp	00153$
	C$F3xx_USB0_InterruptServiceRoutine.c$263$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:263: default:
00134$:
	C$F3xx_USB0_InterruptServiceRoutine.c$264$5$53 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:264: Force_Stall ();      // Send stall to host if invalid
	push	ar7
	lcall	_Force_Stall
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$266$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:266: }
	ljmp	00153$
00148$:
	C$F3xx_USB0_InterruptServiceRoutine.c$269$3$51 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:269: switch (SETUP.bRequest)       // Call correct subroutine to handle
	mov	a,(_SETUP + 0x0001)
	mov	r6,a
	add	a,#0xff - 0x0B
	jnc	00309$
	ljmp	00145$
00309$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00310$
	jmp	@a+dptr
00310$:
	ljmp	00136$
	ljmp	00137$
	ljmp	00145$
	ljmp	00138$
	ljmp	00145$
	ljmp	00139$
	ljmp	00140$
	ljmp	00145$
	ljmp	00141$
	ljmp	00142$
	ljmp	00143$
	ljmp	00144$
	C$F3xx_USB0_InterruptServiceRoutine.c$271$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:271: case GET_STATUS:
00136$:
	C$F3xx_USB0_InterruptServiceRoutine.c$272$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:272: Get_Status ();
	push	ar7
	lcall	_Get_Status
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$273$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:273: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$274$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:274: case CLEAR_FEATURE:
	sjmp	00153$
00137$:
	C$F3xx_USB0_InterruptServiceRoutine.c$275$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:275: Clear_Feature ();
	push	ar7
	lcall	_Clear_Feature
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$276$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:276: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$277$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:277: case SET_FEATURE:
	sjmp	00153$
00138$:
	C$F3xx_USB0_InterruptServiceRoutine.c$278$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:278: Set_Feature ();
	push	ar7
	lcall	_Set_Feature
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$279$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:279: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$280$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:280: case SET_ADDRESS:
	sjmp	00153$
00139$:
	C$F3xx_USB0_InterruptServiceRoutine.c$281$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:281: Set_Address ();
	push	ar7
	lcall	_Set_Address
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$282$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:282: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$283$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:283: case GET_DESCRIPTOR:
	sjmp	00153$
00140$:
	C$F3xx_USB0_InterruptServiceRoutine.c$284$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:284: Get_Descriptor ();
	push	ar7
	lcall	_Get_Descriptor
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$285$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:285: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$286$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:286: case GET_CONFIGURATION:
	sjmp	00153$
00141$:
	C$F3xx_USB0_InterruptServiceRoutine.c$287$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:287: Get_Configuration ();
	push	ar7
	lcall	_Get_Configuration
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$288$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:288: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$289$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:289: case SET_CONFIGURATION:
	sjmp	00153$
00142$:
	C$F3xx_USB0_InterruptServiceRoutine.c$290$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:290: Set_Configuration ();
	push	ar7
	lcall	_Set_Configuration
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$291$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:291: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$292$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:292: case GET_INTERFACE:
	sjmp	00153$
00143$:
	C$F3xx_USB0_InterruptServiceRoutine.c$293$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:293: Get_Interface ();
	push	ar7
	lcall	_Get_Interface
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$294$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:294: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$295$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:295: case SET_INTERFACE:
	sjmp	00153$
00144$:
	C$F3xx_USB0_InterruptServiceRoutine.c$296$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:296: Set_Interface ();
	push	ar7
	lcall	_Set_Interface
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$297$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:297: break;
	C$F3xx_USB0_InterruptServiceRoutine.c$298$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:298: default:
	sjmp	00153$
00145$:
	C$F3xx_USB0_InterruptServiceRoutine.c$299$4$54 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:299: Force_Stall ();         // Send stall to host if invalid request
	push	ar7
	lcall	_Force_Stall
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$301$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:301: }
00153$:
	C$F3xx_USB0_InterruptServiceRoutine.c$305$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:305: if (EP_STATUS[0] == EP_TX)          // See if endpoint should transmit
	mov	a,#0x01
	cjne	a,_EP_STATUS,00311$
	sjmp	00312$
00311$:
	ljmp	00174$
00312$:
	C$F3xx_USB0_InterruptServiceRoutine.c$307$2$55 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:307: if (!(ControlReg & rbINPRDY) )   // Don't overwrite last packet
	mov	a,r7
	jnb	acc.1,00313$
	ljmp	00174$
00313$:
	C$F3xx_USB0_InterruptServiceRoutine.c$310$3$56 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:310: POLL_READ_BYTE (E0CSR, ControlReg);
00154$:
	mov	a,_USB0ADR
	jb	acc.7,00154$
	mov	_USB0ADR,#0x91
00157$:
	mov	a,_USB0ADR
	jb	acc.7,00157$
	C$F3xx_USB0_InterruptServiceRoutine.c$314$3$56 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:314: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
	mov	a,_USB0DAT
	mov	r7,a
	jnb	acc.4,00168$
	mov	a,r7
	jnb	acc.0,00317$
	ljmp	00174$
00317$:
00168$:
	C$F3xx_USB0_InterruptServiceRoutine.c$317$4$57 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:317: ControlReg = rbINPRDY;
	mov	r7,#0x02
	C$F3xx_USB0_InterruptServiceRoutine.c$318$4$57 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:318: if (DATASIZE >= EP0_PACKET_SIZE)
	clr	c
	mov	a,_DATASIZE
	subb	a,#0x40
	mov	a,(_DATASIZE + 1)
	subb	a,#0x00
	jc	00161$
	C$F3xx_USB0_InterruptServiceRoutine.c$322$5$58 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:322: (unsigned char*)DATAPTR);
	mov	_Fifo_Write_InterruptServiceRoutine_PARM_2,#0x40
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1),#0x00
	mov	_Fifo_Write_InterruptServiceRoutine_PARM_3,_DATAPTR
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1),(_DATAPTR + 1)
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2),(_DATAPTR + 2)
	mov	dpl,#0x20
	push	ar7
	lcall	_Fifo_Write_InterruptServiceRoutine
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$324$5$58 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:324: DATAPTR  += EP0_PACKET_SIZE;
	mov	a,#0x40
	add	a,_DATAPTR
	mov	_DATAPTR,a
	clr	a
	addc	a,(_DATAPTR + 1)
	mov	(_DATAPTR + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$326$5$58 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:326: DATASIZE -= EP0_PACKET_SIZE;
	mov	a,_DATASIZE
	add	a,#0xC0
	mov	_DATASIZE,a
	mov	a,(_DATASIZE + 1)
	addc	a,#0xFF
	mov	(_DATASIZE + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$328$5$58 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:328: DATASENT += EP0_PACKET_SIZE;
	mov	a,#0x40
	add	a,_DATASENT
	mov	_DATASENT,a
	clr	a
	addc	a,(_DATASENT + 1)
	mov	(_DATASENT + 1),a
	sjmp	00162$
00161$:
	C$F3xx_USB0_InterruptServiceRoutine.c$334$5$59 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:334: (unsigned char*)DATAPTR);
	mov	_Fifo_Write_InterruptServiceRoutine_PARM_2,_DATASIZE
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1),(_DATASIZE + 1)
	mov	_Fifo_Write_InterruptServiceRoutine_PARM_3,_DATAPTR
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1),(_DATAPTR + 1)
	mov	(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2),(_DATAPTR + 2)
	mov	dpl,#0x20
	lcall	_Fifo_Write_InterruptServiceRoutine
	C$F3xx_USB0_InterruptServiceRoutine.c$335$5$59 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:335: ControlReg |= rbDATAEND;// Add Data End bit to bitmask
	mov	r7,#0x0A
	C$F3xx_USB0_InterruptServiceRoutine.c$336$5$59 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:336: EP_STATUS[0] = EP_IDLE; // Return EP 0 to idle state
	mov	_EP_STATUS,#0x00
00162$:
	C$F3xx_USB0_InterruptServiceRoutine.c$338$4$57 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:338: if (DATASENT == SETUP.wLength.U16)
	mov	a,(_SETUP + 0x0006)
	cjne	a,_DATASENT,00165$
	mov	a,((_SETUP + 0x0006) + 1)
	cjne	a,(_DATASENT + 1),00165$
	C$F3xx_USB0_InterruptServiceRoutine.c$343$5$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:343: ControlReg |= rbDATAEND;// Add Data End bit to mask
	orl	ar7,#0x08
	C$F3xx_USB0_InterruptServiceRoutine.c$344$5$60 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:344: EP_STATUS[0] = EP_IDLE; // Return EP 0 to idle state
	mov	_EP_STATUS,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$347$4$57 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:347: POLL_WRITE_BYTE(E0CSR, ControlReg);
00165$:
	mov	a,_USB0ADR
	jb	acc.7,00165$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r7
00174$:
	C$F3xx_USB0_InterruptServiceRoutine.c$352$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:352: if (EP_STATUS[0] == EP_RX)          // See if endpoint should transmit
	mov	a,#0x02
	cjne	a,_EP_STATUS,00322$
	sjmp	00323$
00322$:
	ljmp	00198$
00323$:
	C$F3xx_USB0_InterruptServiceRoutine.c$355$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:355: POLL_READ_BYTE (E0CSR, ControlReg);
00175$:
	mov	a,_USB0ADR
	jb	acc.7,00175$
	mov	_USB0ADR,#0x91
00178$:
	mov	a,_USB0ADR
	jb	acc.7,00178$
	C$F3xx_USB0_InterruptServiceRoutine.c$356$2$61 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:356: if (ControlReg & rbOPRDY)        // Verify packet was received
	mov	a,_USB0DAT
	mov	r7,a
	jb	acc.0,00326$
	ljmp	00198$
00326$:
	C$F3xx_USB0_InterruptServiceRoutine.c$358$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:358: ControlReg = rbSOPRDY;
	mov	r7,#0x40
	C$F3xx_USB0_InterruptServiceRoutine.c$359$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:359: if (DATASIZE >= EP0_PACKET_SIZE)
	clr	c
	mov	a,_DATASIZE
	subb	a,#0x40
	mov	a,(_DATASIZE + 1)
	subb	a,#0x00
	jc	00182$
	C$F3xx_USB0_InterruptServiceRoutine.c$361$4$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:361: Fifo_Read(FIFO_EP0, EP0_PACKET_SIZE, (unsigned char*)DATAPTR);
	mov	_Fifo_Read_PARM_2,#0x40
	mov	(_Fifo_Read_PARM_2 + 1),#0x00
	mov	_Fifo_Read_PARM_3,_DATAPTR
	mov	(_Fifo_Read_PARM_3 + 1),(_DATAPTR + 1)
	mov	(_Fifo_Read_PARM_3 + 2),(_DATAPTR + 2)
	mov	dpl,#0x20
	push	ar7
	lcall	_Fifo_Read
	pop	ar7
	C$F3xx_USB0_InterruptServiceRoutine.c$363$4$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:363: DATAPTR  += EP0_PACKET_SIZE;
	mov	a,#0x40
	add	a,_DATAPTR
	mov	_DATAPTR,a
	clr	a
	addc	a,(_DATAPTR + 1)
	mov	(_DATAPTR + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$365$4$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:365: DATASIZE -= EP0_PACKET_SIZE;
	mov	a,_DATASIZE
	add	a,#0xC0
	mov	_DATASIZE,a
	mov	a,(_DATASIZE + 1)
	addc	a,#0xFF
	mov	(_DATASIZE + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$367$4$63 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:367: DATASENT += EP0_PACKET_SIZE;
	mov	a,#0x40
	add	a,_DATASENT
	mov	_DATASENT,a
	clr	a
	addc	a,(_DATASENT + 1)
	mov	(_DATASENT + 1),a
	sjmp	00183$
00182$:
	C$F3xx_USB0_InterruptServiceRoutine.c$372$4$64 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:372: Fifo_Read (FIFO_EP0, DATASIZE, (unsigned char*) DATAPTR);
	mov	_Fifo_Read_PARM_2,_DATASIZE
	mov	(_Fifo_Read_PARM_2 + 1),(_DATASIZE + 1)
	mov	_Fifo_Read_PARM_3,_DATAPTR
	mov	(_Fifo_Read_PARM_3 + 1),(_DATAPTR + 1)
	mov	(_Fifo_Read_PARM_3 + 2),(_DATAPTR + 2)
	mov	dpl,#0x20
	lcall	_Fifo_Read
	C$F3xx_USB0_InterruptServiceRoutine.c$374$4$64 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:374: ControlReg |= rbDATAEND;   // signal end of data
	mov	r7,#0x48
	C$F3xx_USB0_InterruptServiceRoutine.c$375$4$64 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:375: EP_STATUS[0] = EP_IDLE;    // set Endpoint to IDLE
	mov	_EP_STATUS,#0x00
00183$:
	C$F3xx_USB0_InterruptServiceRoutine.c$377$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:377: if (DATASENT == SETUP.wLength.U16)
	mov	a,(_SETUP + 0x0006)
	cjne	a,_DATASENT,00185$
	mov	a,((_SETUP + 0x0006) + 1)
	cjne	a,(_DATASENT + 1),00185$
	C$F3xx_USB0_InterruptServiceRoutine.c$379$4$65 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:379: ControlReg |= rbDATAEND;
	orl	ar7,#0x08
	C$F3xx_USB0_InterruptServiceRoutine.c$380$4$65 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:380: EP_STATUS[0] = EP_IDLE;
	mov	_EP_STATUS,#0x00
00185$:
	C$F3xx_USB0_InterruptServiceRoutine.c$385$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:385: if ( (EP_STATUS[0] == EP_IDLE) && (SETUP.bRequest == SET_REPORT) )
	mov	a,_EP_STATUS
	jnz	00187$
	mov	a,#0x09
	cjne	a,(_SETUP + 0x0001),00187$
	C$F3xx_USB0_InterruptServiceRoutine.c$387$4$66 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:387: ReportHandler_OUT (*DATAPTR);
	mov	r4,_DATAPTR
	mov	r5,(_DATAPTR + 1)
	mov	r6,(_DATAPTR + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_ReportHandler_OUT
	pop	ar7
00187$:
	C$F3xx_USB0_InterruptServiceRoutine.c$390$3$62 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:390: if (EP_STATUS[0] != EP_STALL) POLL_WRITE_BYTE (E0CSR, ControlReg);
	mov	a,#0x04
	cjne	a,_EP_STATUS,00333$
	sjmp	00193$
00333$:
00189$:
	mov	a,_USB0ADR
	jb	acc.7,00189$
00193$:
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r7
00198$:
	C$F3xx_USB0_InterruptServiceRoutine.c$394$1$46 ==.
	XG$Handle_Control$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_In1'
;------------------------------------------------------------
	G$Handle_In1$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$405$1$46 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:405: void Handle_In1 ()
;	-----------------------------------------
;	 function Handle_In1
;	-----------------------------------------
_Handle_In1:
	C$F3xx_USB0_InterruptServiceRoutine.c$407$1$67 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:407: EP_STATUS[1] = EP_IDLE;
	mov	(_EP_STATUS + 0x0001),#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$408$1$67 ==.
	XG$Handle_In1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_Out1'
;------------------------------------------------------------
;Count                     Allocated to registers 
;ControlReg                Allocated to registers r7 
;------------------------------------------------------------
	G$Handle_Out1$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$417$1$67 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:417: void Handle_Out1 ()
;	-----------------------------------------
;	 function Handle_Out1
;	-----------------------------------------
_Handle_Out1:
	C$F3xx_USB0_InterruptServiceRoutine.c$423$1$68 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:423: POLL_WRITE_BYTE (INDEX, 1);         // Set index to endpoint 2 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_InterruptServiceRoutine.c$424$1$68 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:424: POLL_READ_BYTE (EOUTCSR1, ControlReg);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x94
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r7,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$426$1$68 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:426: if (EP_STATUS[1] == EP_HALT)        // If endpoint is halted, send a stall
	mov	a,#0x03
	cjne	a,(_EP_STATUS + 0x0001),00122$
	C$F3xx_USB0_InterruptServiceRoutine.c$428$2$69 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:428: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
	sjmp	00124$
00122$:
	C$F3xx_USB0_InterruptServiceRoutine.c$434$2$70 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:434: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last
	mov	a,r7
	jnb	acc.6,00117$
	C$F3xx_USB0_InterruptServiceRoutine.c$437$3$71 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:437: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
00117$:
	C$F3xx_USB0_InterruptServiceRoutine.c$440$2$70 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:440: Setup_OUT_BUFFER ();             // configure buffer to save
	lcall	_Setup_OUT_BUFFER
	C$F3xx_USB0_InterruptServiceRoutine.c$442$2$70 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:442: Fifo_Read(FIFO_EP1, OUT_BUFFER.Length, OUT_BUFFER.Ptr);
	mov	_Fifo_Read_PARM_2,_OUT_BUFFER
	mov	(_Fifo_Read_PARM_2 + 1),#0x00
	mov	_Fifo_Read_PARM_3,(_OUT_BUFFER + 0x0001)
	mov	(_Fifo_Read_PARM_3 + 1),((_OUT_BUFFER + 0x0001) + 1)
	mov	(_Fifo_Read_PARM_3 + 2),((_OUT_BUFFER + 0x0001) + 2)
	mov	dpl,#0x21
	lcall	_Fifo_Read
	C$F3xx_USB0_InterruptServiceRoutine.c$449$2$70 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:449: ReportHandler_OUT (OUT_BUFFER.Ptr[0]);
	mov	dpl,(_OUT_BUFFER + 0x0001)
	mov	dph,((_OUT_BUFFER + 0x0001) + 1)
	mov	b,((_OUT_BUFFER + 0x0001) + 2)
	lcall	__gptrget
	mov	dpl,a
	lcall	_ReportHandler_OUT
	C$F3xx_USB0_InterruptServiceRoutine.c$451$2$70 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:451: POLL_WRITE_BYTE (EOUTCSR1, 0);   // Clear Out Packet ready bit
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x00
00124$:
	C$F3xx_USB0_InterruptServiceRoutine.c$453$1$68 ==.
	XG$Handle_Out1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Suspend'
;------------------------------------------------------------
;k                         Allocated with name '_Usb_Suspend_k_1_73'
;------------------------------------------------------------
	G$Usb_Suspend$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$460$1$68 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:460: void Usb_Suspend (void)
;	-----------------------------------------
;	 function Usb_Suspend
;	-----------------------------------------
_Usb_Suspend:
	C$F3xx_USB0_InterruptServiceRoutine.c$463$1$73 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:463: k++;
	mov	a,#0x01
	add	a,_Usb_Suspend_k_1_73
	mov	_Usb_Suspend_k_1_73,a
	clr	a
	addc	a,(_Usb_Suspend_k_1_73 + 1)
	mov	(_Usb_Suspend_k_1_73 + 1),a
	C$F3xx_USB0_InterruptServiceRoutine.c$464$1$73 ==.
	XG$Usb_Suspend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Read'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
;pData                     Allocated with name '_Fifo_Read_PARM_3'
;addr                      Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Fifo_Read$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$479$1$73 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:479: void Fifo_Read (unsigned char addr, unsigned int uNumBytes,
;	-----------------------------------------
;	 function Fifo_Read
;	-----------------------------------------
_Fifo_Read:
	mov	r7,dpl
	C$F3xx_USB0_InterruptServiceRoutine.c$484$1$75 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:484: if (uNumBytes)                      // Check if >0 bytes requested,
	mov	a,_Fifo_Read_PARM_2
	orl	a,(_Fifo_Read_PARM_2 + 1)
	jz	00110$
	C$F3xx_USB0_InterruptServiceRoutine.c$486$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:486: USB0ADR = (addr);                // Set address
	mov	_USB0ADR,r7
	C$F3xx_USB0_InterruptServiceRoutine.c$487$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:487: USB0ADR |= 0xC0;                 // Set auto-read and initiate
	orl	_USB0ADR,#0xC0
	C$F3xx_USB0_InterruptServiceRoutine.c$491$1$75 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:491: for(i=0;i< (uNumBytes);i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_Fifo_Read_PARM_2
	mov	a,r5
	subb	a,(_Fifo_Read_PARM_2 + 1)
	jnc	00109$
	C$F3xx_USB0_InterruptServiceRoutine.c$493$3$77 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:493: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$F3xx_USB0_InterruptServiceRoutine.c$494$3$77 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:494: pData[i] = USB0DAT;           // Copy data byte
	mov	a,r6
	add	a,_Fifo_Read_PARM_3
	mov	r3,a
	mov	a,r7
	addc	a,(_Fifo_Read_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_Fifo_Read_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_USB0DAT
	lcall	__gptrput
	C$F3xx_USB0_InterruptServiceRoutine.c$491$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:491: for(i=0;i< (uNumBytes);i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00109$:
	C$F3xx_USB0_InterruptServiceRoutine.c$498$2$76 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:498: USB0ADR = 0;                     // Clear auto-read
	mov	_USB0ADR,#0x00
00110$:
	C$F3xx_USB0_InterruptServiceRoutine.c$500$1$75 ==.
	XG$Fifo_Read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Write_Foreground'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Write_Foreground_PARM_2'
;pData                     Allocated with name '_Fifo_Write_Foreground_PARM_3'
;addr                      Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Fifo_Write_Foreground$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$519$1$75 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:519: void Fifo_Write_Foreground (unsigned char addr, unsigned int uNumBytes,
;	-----------------------------------------
;	 function Fifo_Write_Foreground
;	-----------------------------------------
_Fifo_Write_Foreground:
	mov	r7,dpl
	C$F3xx_USB0_InterruptServiceRoutine.c$525$1$79 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:525: if (uNumBytes)
	mov	a,_Fifo_Write_Foreground_PARM_2
	orl	a,(_Fifo_Write_Foreground_PARM_2 + 1)
	jz	00113$
	C$F3xx_USB0_InterruptServiceRoutine.c$527$2$80 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:527: while (USB0ADR & 0x80);          // Wait for BUSY->'0'
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$F3xx_USB0_InterruptServiceRoutine.c$529$2$80 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:529: USB0ADR = (addr);                // Set address (mask out bits7-6)
	mov	_USB0ADR,r7
	C$F3xx_USB0_InterruptServiceRoutine.c$532$1$79 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:532: for(i=0;i<uNumBytes;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00109$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_Fifo_Write_Foreground_PARM_2
	mov	a,r5
	subb	a,(_Fifo_Write_Foreground_PARM_2 + 1)
	jnc	00113$
	C$F3xx_USB0_InterruptServiceRoutine.c$534$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:534: USB0DAT = pData[i];
	mov	a,r6
	add	a,_Fifo_Write_Foreground_PARM_3
	mov	r3,a
	mov	a,r7
	addc	a,(_Fifo_Write_Foreground_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_Fifo_Write_Foreground_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_USB0DAT,a
	C$F3xx_USB0_InterruptServiceRoutine.c$535$3$81 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:535: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$F3xx_USB0_InterruptServiceRoutine.c$532$2$80 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:532: for(i=0;i<uNumBytes;i++)
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
	sjmp	00109$
00113$:
	C$F3xx_USB0_InterruptServiceRoutine.c$538$1$79 ==.
	XG$Fifo_Write_Foreground$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Write_InterruptServiceRoutine'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Write_InterruptServiceRoutine_PARM_2'
;pData                     Allocated with name '_Fifo_Write_InterruptServiceRoutine_PARM_3'
;addr                      Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Fifo_Write_InterruptServiceRoutine$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$540$1$79 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:540: void Fifo_Write_InterruptServiceRoutine (unsigned char addr,
;	-----------------------------------------
;	 function Fifo_Write_InterruptServiceRoutine
;	-----------------------------------------
_Fifo_Write_InterruptServiceRoutine:
	mov	r7,dpl
	C$F3xx_USB0_InterruptServiceRoutine.c$547$1$83 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:547: if (uNumBytes)
	mov	a,_Fifo_Write_InterruptServiceRoutine_PARM_2
	orl	a,(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1)
	jz	00113$
	C$F3xx_USB0_InterruptServiceRoutine.c$549$2$84 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:549: while (USB0ADR & 0x80);          // Wait for BUSY->'0'
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$F3xx_USB0_InterruptServiceRoutine.c$551$2$84 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:551: USB0ADR = (addr);                // Set address (mask out bits7-6)
	mov	_USB0ADR,r7
	C$F3xx_USB0_InterruptServiceRoutine.c$554$1$83 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:554: for (i=0; i<uNumBytes; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00109$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,r4
	subb	a,_Fifo_Write_InterruptServiceRoutine_PARM_2
	mov	a,r5
	subb	a,(_Fifo_Write_InterruptServiceRoutine_PARM_2 + 1)
	jnc	00113$
	C$F3xx_USB0_InterruptServiceRoutine.c$556$3$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:556: USB0DAT = pData[i];
	mov	a,r6
	add	a,_Fifo_Write_InterruptServiceRoutine_PARM_3
	mov	r3,a
	mov	a,r7
	addc	a,(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_Fifo_Write_InterruptServiceRoutine_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	_USB0DAT,a
	C$F3xx_USB0_InterruptServiceRoutine.c$557$3$85 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:557: while (USB0ADR & 0x80);       // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$F3xx_USB0_InterruptServiceRoutine.c$554$2$84 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:554: for (i=0; i<uNumBytes; i++)
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
	sjmp	00109$
00113$:
	C$F3xx_USB0_InterruptServiceRoutine.c$560$1$83 ==.
	XG$Fifo_Write_InterruptServiceRoutine$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Force_Stall'
;------------------------------------------------------------
	G$Force_Stall$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$573$1$83 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:573: void Force_Stall (void)
;	-----------------------------------------
;	 function Force_Stall
;	-----------------------------------------
_Force_Stall:
	C$F3xx_USB0_InterruptServiceRoutine.c$575$1$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:575: POLL_WRITE_BYTE (INDEX, 0);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$576$1$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:576: POLL_WRITE_BYTE (E0CSR, rbSDSTL);   // Set the send stall bit
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x20
	C$F3xx_USB0_InterruptServiceRoutine.c$577$1$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:577: EP_STATUS[0] = EP_STALL;            // Put the endpoint in stall status
	mov	_EP_STATUS,#0x04
	C$F3xx_USB0_InterruptServiceRoutine.c$578$1$87 ==.
	XG$Force_Stall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendPacket'
;------------------------------------------------------------
;ReportID                  Allocated to registers r7 
;ControlReg                Allocated to registers r6 
;------------------------------------------------------------
	G$SendPacket$0$0 ==.
	C$F3xx_USB0_InterruptServiceRoutine.c$593$1$87 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:593: void SendPacket (unsigned char ReportID)
;	-----------------------------------------
;	 function SendPacket
;	-----------------------------------------
_SendPacket:
	mov	r7,dpl
	C$F3xx_USB0_InterruptServiceRoutine.c$598$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:598: EAState = EA;
	mov	c,_EA
	mov	_SendPacket_EAState_1_89,c
	C$F3xx_USB0_InterruptServiceRoutine.c$599$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:599: EA = 0;
	clr	_EA
	C$F3xx_USB0_InterruptServiceRoutine.c$601$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:601: POLL_WRITE_BYTE (INDEX, 1);         // Set index to endpoint 1 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$F3xx_USB0_InterruptServiceRoutine.c$604$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:604: POLL_READ_BYTE (EINCSR1, ControlReg);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r6,_USB0DAT
	C$F3xx_USB0_InterruptServiceRoutine.c$606$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:606: if (EP_STATUS[1] == EP_HALT)        // If endpoint is currently halted,
	mov	r5,(_EP_STATUS + 0x0001)
	cjne	r5,#0x03,00129$
	C$F3xx_USB0_InterruptServiceRoutine.c$609$2$90 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:609: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
	sjmp	00130$
00129$:
	C$F3xx_USB0_InterruptServiceRoutine.c$612$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:612: else if(EP_STATUS[1] == EP_IDLE)
	mov	a,r5
	jnz	00130$
	C$F3xx_USB0_InterruptServiceRoutine.c$615$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:615: EP_STATUS[1] = EP_TX;
	mov	(_EP_STATUS + 0x0001),#0x01
	C$F3xx_USB0_InterruptServiceRoutine.c$617$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:617: if (ControlReg & rbInSTSTL)      // Clear sent stall if last
	mov	a,r6
	jnb	acc.5,00117$
	C$F3xx_USB0_InterruptServiceRoutine.c$620$3$92 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:620: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00117$:
	C$F3xx_USB0_InterruptServiceRoutine.c$623$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:623: if (ControlReg & rbInUNDRUN)     // Clear underrun bit if it was set
	mov	a,r6
	jnb	acc.2,00122$
	C$F3xx_USB0_InterruptServiceRoutine.c$625$3$93 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:625: POLL_WRITE_BYTE (EINCSR1, 0x00);
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00122$:
	C$F3xx_USB0_InterruptServiceRoutine.c$628$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:628: ReportHandler_IN_Foreground (ReportID);
	mov	dpl,r7
	lcall	_ReportHandler_IN_Foreground
	C$F3xx_USB0_InterruptServiceRoutine.c$631$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:631: Fifo_Write_Foreground (FIFO_EP1, IN_BUFFER.Length,
	mov	_Fifo_Write_Foreground_PARM_2,_IN_BUFFER
	mov	(_Fifo_Write_Foreground_PARM_2 + 1),#0x00
	C$F3xx_USB0_InterruptServiceRoutine.c$632$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:632: (unsigned char *)IN_BUFFER.Ptr);
	mov	_Fifo_Write_Foreground_PARM_3,(_IN_BUFFER + 0x0001)
	mov	(_Fifo_Write_Foreground_PARM_3 + 1),((_IN_BUFFER + 0x0001) + 1)
	mov	(_Fifo_Write_Foreground_PARM_3 + 2),((_IN_BUFFER + 0x0001) + 2)
	mov	dpl,#0x21
	lcall	_Fifo_Write_Foreground
	C$F3xx_USB0_InterruptServiceRoutine.c$633$2$91 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:633: POLL_WRITE_BYTE (EINCSR1, rbInINPRDY);
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x01
00130$:
	C$F3xx_USB0_InterruptServiceRoutine.c$637$1$89 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_InterruptServiceRoutine.c:637: EA = EAState;
	mov	c,_SendPacket_EAState_1_89
	mov	_EA,c
	C$F3xx_USB0_InterruptServiceRoutine.c$638$1$89 ==.
	XG$SendPacket$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
