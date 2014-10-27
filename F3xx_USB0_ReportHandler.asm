;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Wed Jan 30 20:10:35 2013
;--------------------------------------------------------
	.module F3xx_USB0_ReportHandler
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _OUT_BUFFER
	.globl _IN_BUFFER
	.globl _IN_Report
	.globl _OUT_Report
	.globl _Setup_OUT_BUFFER
	.globl _ReportHandler_IN_ISR
	.globl _ReportHandler_IN_Foreground
	.globl _ReportHandler_OUT
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
G$IN_BUFFER$0$0==.
_IN_BUFFER::
	.ds 4
G$OUT_BUFFER$0$0==.
_OUT_BUFFER::
	.ds 4
LF3xx_USB0_ReportHandler.IN_Report$pack$1$28==.
_IN_Report_pack_1_28:
	.ds 1
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
;------------------------------------------------------------
;Allocation info for local variables in function 'IN_Report'
;------------------------------------------------------------
;pack                      Allocated with name '_IN_Report_pack_1_28'
;------------------------------------------------------------
	G$IN_Report$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$107$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:107: static unsigned char pack = 0x01;
	mov	_IN_Report_pack_1_28,#0x01
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
;Allocation info for local variables in function 'IN_Report'
;------------------------------------------------------------
;pack                      Allocated with name '_IN_Report_pack_1_28'
;------------------------------------------------------------
	G$IN_Report$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$105$0$0 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:105: void IN_Report(void){
;	-----------------------------------------
;	 function IN_Report
;	-----------------------------------------
_IN_Report:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$F3xx_USB0_ReportHandler.c$108$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:108: pack = pack << 1;
	mov	a,_IN_Report_pack_1_28
	add	a,_IN_Report_pack_1_28
	C$F3xx_USB0_ReportHandler.c$109$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:109: if(pack == 0) { pack = 0x01; }
	mov	_IN_Report_pack_1_28,a
	jnz	00102$
	mov	_IN_Report_pack_1_28,#0x01
00102$:
	C$F3xx_USB0_ReportHandler.c$111$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:111: IN_PACKET[0] = ~P0;
	mov	a,_P0
	cpl	a
	mov	r7,a
	mov	_IN_PACKET,r7
	C$F3xx_USB0_ReportHandler.c$115$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:115: IN_BUFFER.Ptr = IN_PACKET;
	mov	((_IN_BUFFER + 0x0001) + 0),#_IN_PACKET
	mov	((_IN_BUFFER + 0x0001) + 1),#(_IN_PACKET >> 8)
	mov	((_IN_BUFFER + 0x0001) + 2),#0x40
	C$F3xx_USB0_ReportHandler.c$116$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:116: IN_BUFFER.Length = 1;
	mov	_IN_BUFFER,#0x01
	C$F3xx_USB0_ReportHandler.c$118$1$28 ==.
	XG$IN_Report$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OUT_Report'
;------------------------------------------------------------
	G$OUT_Report$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$130$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:130: void OUT_Report(void)
;	-----------------------------------------
;	 function OUT_Report
;	-----------------------------------------
_OUT_Report:
	C$F3xx_USB0_ReportHandler.c$132$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:132: }
	C$F3xx_USB0_ReportHandler.c$132$1$28 ==.
	XG$OUT_Report$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Setup_OUT_BUFFER'
;------------------------------------------------------------
	G$Setup_OUT_BUFFER$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$150$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:150: void Setup_OUT_BUFFER(void)
;	-----------------------------------------
;	 function Setup_OUT_BUFFER
;	-----------------------------------------
_Setup_OUT_BUFFER:
	C$F3xx_USB0_ReportHandler.c$152$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:152: }
	C$F3xx_USB0_ReportHandler.c$152$1$28 ==.
	XG$Setup_OUT_BUFFER$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReportHandler_IN_ISR'
;------------------------------------------------------------
;R_ID                      Allocated to registers r7 
;index                     Allocated to registers 
;------------------------------------------------------------
	G$ReportHandler_IN_ISR$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$174$1$28 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:174: void ReportHandler_IN_ISR(unsigned char R_ID)
;	-----------------------------------------
;	 function ReportHandler_IN_ISR
;	-----------------------------------------
_ReportHandler_IN_ISR:
	C$F3xx_USB0_ReportHandler.c$180$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:180: if(R_ID == 0)
	mov	a,dpl
	mov	r7,a
	jnz	00103$
	C$F3xx_USB0_ReportHandler.c$182$2$36 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:182: IN_Report();
	lcall	_IN_Report
00103$:
	C$F3xx_USB0_ReportHandler.c$185$1$35 ==.
	XG$ReportHandler_IN_ISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReportHandler_IN_Foreground'
;------------------------------------------------------------
;R_ID                      Allocated to registers r7 
;index                     Allocated to registers 
;------------------------------------------------------------
	G$ReportHandler_IN_Foreground$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$186$1$35 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:186: void ReportHandler_IN_Foreground(unsigned char R_ID)
;	-----------------------------------------
;	 function ReportHandler_IN_Foreground
;	-----------------------------------------
_ReportHandler_IN_Foreground:
	C$F3xx_USB0_ReportHandler.c$192$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:192: if(R_ID == 0)
	mov	a,dpl
	mov	r7,a
	jnz	00103$
	C$F3xx_USB0_ReportHandler.c$194$2$39 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:194: IN_Report();
	lcall	_IN_Report
00103$:
	C$F3xx_USB0_ReportHandler.c$197$1$38 ==.
	XG$ReportHandler_IN_Foreground$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReportHandler_OUT'
;------------------------------------------------------------
;R_ID                      Allocated to registers r7 
;index                     Allocated to registers 
;------------------------------------------------------------
	G$ReportHandler_OUT$0$0 ==.
	C$F3xx_USB0_ReportHandler.c$210$1$38 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:210: void ReportHandler_OUT(unsigned char R_ID){
;	-----------------------------------------
;	 function ReportHandler_OUT
;	-----------------------------------------
_ReportHandler_OUT:
	C$F3xx_USB0_ReportHandler.c$216$1$41 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:216: if(R_ID == 0)
	mov	a,dpl
	mov	r7,a
	jnz	00103$
	C$F3xx_USB0_ReportHandler.c$218$2$42 ==.
;	F:\Dropbox\Dropbox\Personal Projects\Wedding\NES Controller\NES Attempt 3\F3xx_USB0_ReportHandler.c:218: OUT_Report();
	lcall	_OUT_Report
00103$:
	C$F3xx_USB0_ReportHandler.c$220$1$41 ==.
	XG$ReportHandler_OUT$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
