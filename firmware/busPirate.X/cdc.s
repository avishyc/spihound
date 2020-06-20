	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\dp_usb\\cdc.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.global	_cdc_set_control_line_state_status	; export
	.type	_cdc_set_control_line_state_status,@function
_cdc_set_control_line_state_status:
.LFB6:
	.file 1 "../dp_usb/cdc.c"
	.loc 1 230 0
	.set ___PA___,1
	.loc 1 231 0
	mul.uu	w0, #0, w0
	call	_usb_set_in_handler
	.loc 1 232 0
	return	
	.set ___PA___,0
.LFE6:
	.size	_cdc_set_control_line_state_status, .-_cdc_set_control_line_state_status
	.align	2
	.global	_cdc_set_line_coding_status	; export
	.type	_cdc_set_line_coding_status,@function
_cdc_set_line_coding_status:
.LFB5:
	.loc 1 226 0
	.set ___PA___,1
	.loc 1 227 0
	mul.uu	w0, #0, w0
	call	_usb_set_in_handler
	.loc 1 228 0
	return	
	.set ___PA___,0
.LFE5:
	.size	_cdc_set_line_coding_status, .-_cdc_set_line_coding_status
	.align	2
	.global	_cdc_get_line_coding	; export
	.type	_cdc_get_line_coding,@function
_cdc_get_line_coding:
.LFB3:
	.loc 1 191 0
	.set ___PA___,1
	.loc 1 192 0
	mul.uu	w0, #0, w0
	call	_usb_set_in_handler
	.loc 1 193 0
	return	
	.set ___PA___,0
.LFE3:
	.size	_cdc_get_line_coding, .-_cdc_get_line_coding
	.align	2
	.global	_cdc_set_line_coding_data	; export
	.type	_cdc_set_line_coding_data,@function
_cdc_set_line_coding_data:
.LFB4:
	.loc 1 195 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	.loc 1 198 0
	mov	#_linecodeing,w0
	mov	_EP0_Outbdp,w1
	mov	[w1+2],w1
	repeat	#10-1
	mov.b	[w1++],[w0++]
	sub	#10, w0
	sub	#10, w1
	.loc 1 200 0
	mov.d	[w0],w8
	mov.d	w8,w2
	mov	#9216,w0
	mov	#244,w1
	call	___udivsi3
	mov.d	w0,w10
	.loc 1 201 0
	mov.d	w8,w2
	mov	#9216,w0
	mov	#244,w1
	call	___umodsi3
	.loc 1 202 0
	add	w0,w0,w2
	addc	w1,w1,w3
	sub	w8,w2,[w15]
	subb	w9,w3,[w15]
	.set ___BP___,39
	bra	leu,.L5
	.loc 1 203 0
	sub	w10,#1,w10
	subb	w11,#0,w11
.L5:
	.loc 1 205 0
	mov	w10,_U1BRG
	.loc 1 207 0
	mul.uu	w0, #0, w0
	call	_usb_set_out_handler
	.loc 1 208 0
	mov	#handle(_cdc_set_line_coding_status),w1
	clr	w0
	call	_usb_set_in_handler
	.loc 1 209 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 222 0
	mov.b	#8,w1
	mov	_EP0_Outbdp,w0
	mov.b	w1,[w0]
	.loc 1 223 0
	mov.b	#-120,w1
	mov	_EP0_Outbdp,w0
	mov.b	w1,[w0+1]
	.loc 1 224 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE4:
	.size	_cdc_set_line_coding_data, .-_cdc_set_line_coding_data
	.align	2
	.global	_cdc_setup	; export
	.type	_cdc_setup,@function
_cdc_setup:
.LFB2:
	.loc 1 132 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI2:
	.loc 1 135 0
	mov	_EP0_Outbdp,w0
	mov	[w0+2],w0
	.loc 1 137 0
	ze	[w0],w2
	and	#99,w2
	mov	#33,w1
	sub	w2,w1,[w15]
	.set ___BP___,71
	bra	nz,.L19
	.loc 1 139 0
	mov.b	[w0+1],w1
	sub.b	w1,#4,[w15]
	.set ___BP___,50
	bra	gtu,.L16
	sub.b	w1,#2,[w15]
	.set ___BP___,50
	bra	geu,.L12
	cp0.b	w1
	.set ___BP___,50
	bra	z,.L10
	sub.b	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L9
	bra	.L20
.L16:
	mov.b	#33,w2
	sub.b	w1,w2,[w15]
	.set ___BP___,29
	bra	z,.L14
	inc.b	w2,w2
	sub.b	w1,w2,[w15]
	.set ___BP___,29
	bra	z,.L15
	mov.b	#32,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,71
	bra	nz,.L9
	bra	.L21
.L10:
	.loc 1 143 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 144 0
	bra	.L6
.L20:
	.loc 1 149 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 150 0
	bra	.L6
.L12:
	.loc 1 155 0
	call	_usb_RequestError
	.loc 1 156 0
	bra	.L6
.L21:
	.loc 1 159 0
	mov	#handle(_cdc_set_line_coding_data),w1
	clr	w0
	call	_usb_set_out_handler
	.loc 1 160 0
	bra	.L6
.L14:
	.loc 1 165 0
	mov	[w0+6],w8
	sub	w8,#10,[w15]
	.set ___BP___,50
	bra	leu,.L18
	mov	#10,w8
.L18:
	.loc 1 169 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	mov	w8,w2
	mov	#_linecodeing,w1
	call	_memcpy
	.loc 1 170 0
	mov	w8,w0
	call	_usb_ack_dat1
	.loc 1 171 0
	mov	#handle(_cdc_get_line_coding),w1
	clr	w0
	call	_usb_set_in_handler
	.loc 1 172 0
	bra	.L6
.L15:
	.loc 1 175 0
	mov	[w0+2],w0
	mov	w0,_cls
	.loc 1 176 0
	mov	#handle(_cdc_set_control_line_state_status),w1
	clr	w0
	call	_usb_set_in_handler
	.loc 1 177 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 178 0
	mov.b	#1,w1
	mov	#_LineStateUpdated,w0
	mov.b	w1,[w0]
	.loc 1 179 0
	bra	.L6
.L9:
	.loc 1 183 0
	call	_usb_RequestError
	bra	.L6
.L19:
	.loc 1 187 0
	call	_usb_RequestError
.L6:
	.loc 1 189 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE2:
	.size	_cdc_setup, .-_cdc_setup
	.align	2
	.global	_initCDC	; export
	.type	_initCDC,@function
_initCDC:
.LFB0:
	.loc 1 68 0
	.set ___PA___,1
	.loc 1 76 0
	mov	#49664,w0
	mov	#1,w1
	mov	w0,_linecodeing
	mov	w1,_linecodeing+2
	.loc 1 77 0
	clr	w0
	mov	w0,_linecodeing+4
	.loc 1 78 0
	mov	w0,_linecodeing+6
	.loc 1 79 0
	mov.b	#8,w1
	mov	#_linecodeing+8,w0
	mov.b	w1,[w0]
	.loc 1 80 0
	mov	_cls,w0
	bclr	w0,#0
	.loc 1 81 0
	bclr	w0,#1
	mov	w0,_cls
	.loc 1 82 0
	mov	#handle(_cdc_setup),w0
	call	_usb_register_class_setup_handler
	.loc 1 83 0
	return	
	.set ___PA___,0
.LFE0:
	.size	_initCDC, .-_initCDC
	.align	2
	.global	_user_configured_init	; export
	.type	_user_configured_init,@function
_user_configured_init:
.LFB1:
	.loc 1 85 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	.loc 1 94 0
	clr	w1
	mov	#1,w0
	call	_usb_set_in_handler
	.loc 1 95 0
	clr	w1
	mov	#2,w0
	call	_usb_set_in_handler
	.loc 1 96 0
	clr	w1
	mov	#2,w0
	call	_usb_set_out_handler
	.loc 1 98 0
	mov	#21,w0
	mov	w0,_U1EP1
	.loc 1 99 0
	mov	#29,w0
	mov	w0,_U1EP2
	.loc 1 104 0
	clr.b	w8
	mov	#_usb_bdt+12,w0
	mov.b	w8,[w0]
	.loc 1 105 0
	mov	#_cdc_acm_in_buffer,w0
	mov	w0,_usb_bdt+14
	.loc 1 106 0
	mov.b	#72,w9
	mov	#_usb_bdt+13,w0
	mov.b	w9,[w0]
	.loc 1 112 0
	mov	#handle(_cdc_setup),w0
	call	_usb_register_class_setup_handler
	.loc 1 113 0
	mov	#_cdc_trf_state,w0
	mov.b	w8,[w0]
	.loc 1 114 0
	mov	#_usb_bdt+16,w0
	mov	w0,_CDC_Outbdp
	.loc 1 115 0
	add	w0,#4,w2
	mov	w2,_CDC_Inbdp
	.loc 1 117 0
	setm.b	w1
	mov	#_IsInBufferA,w3
	mov.b	w1,[w3]
	.loc 1 118 0
	mov	#_cdc_In_bufferA,w3
	mov	w3,_InPtr
	.loc 1 119 0
	mov	#_cdc_In_len,w4
	mov.b	w8,[w4]
	.loc 1 120 0
	mov	w3,_usb_bdt+22
	.loc 1 121 0
	mov.b	w8,[w2]
	.loc 1 122 0
	inc	w2,w2
	mov.b	w9,[w2]
	.loc 1 124 0
	mov	#_cdc_Out_len,w2
	mov.b	w8,[w2]
	.loc 1 125 0
	mov	#_IsOutBufferA,w2
	mov.b	w1,[w2]
	.loc 1 126 0
	mov	#_cdc_Out_bufferA,w1
	mov	w1,_OutPtr
	.loc 1 127 0
	mov.b	#64,w2
	mov.b	w2,[w0]
	.loc 1 128 0
	mov	w1,[w0+2]
	.loc 1 129 0
	mov.b	#-120,w1
	mov.b	w1,[w0+1]
	.loc 1 130 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE1:
	.size	_user_configured_init, .-_user_configured_init
	.align	2
	.global	_WaitOutReady	; export
	.type	_WaitOutReady,@function
_WaitOutReady:
.LFB7:
	.loc 1 234 0
	.set ___PA___,1
	.loc 1 235 0
	mov	_CDC_Outbdp,w1
.L25:
	mov.b	[w1+1],w0
	cp0.b	w0
	.set ___BP___,86
	bra	lt,.L25
	.loc 1 236 0
	return	
	.set ___PA___,0
.LFE7:
	.size	_WaitOutReady, .-_WaitOutReady
	.align	2
	.global	_WaitInReady	; export
	.type	_WaitInReady,@function
_WaitInReady:
.LFB8:
	.loc 1 238 0
	.set ___PA___,1
	.loc 1 239 0
	mov	_CDC_Inbdp,w1
.L28:
	mov.b	[w1+1],w0
	cp0.b	w0
	.set ___BP___,86
	bra	lt,.L28
	.loc 1 240 0
	return	
	.set ___PA___,0
.LFE8:
	.size	_WaitInReady, .-_WaitInReady
	.align	2
	.global	_getOutReady	; export
	.type	_getOutReady,@function
_getOutReady:
.LFB9:
	.loc 1 243 0
	.set ___PA___,1
	.loc 1 244 0
	mov	_CDC_Outbdp,w0
	mov.b	[w0+1],w0
	com.b	w0,w0
	ze	w0,w0
	lsr	w0,#7,w0
	.loc 1 245 0
	return	
	.set ___PA___,0
.LFE9:
	.size	_getOutReady, .-_getOutReady
	.align	2
	.global	_getInReady	; export
	.type	_getInReady,@function
_getInReady:
.LFB10:
	.loc 1 248 0
	.set ___PA___,1
	.loc 1 250 0
	mov	_CDC_Inbdp,w0
	mov.b	[w0+1],w0
	com.b	w0,w0
	ze	w0,w0
	lsr	w0,#7,w0
	.loc 1 251 0
	return	
	.set ___PA___,0
.LFE10:
	.size	_getInReady, .-_getInReady
	.align	2
	.global	_getda_cdc	; export
	.type	_getda_cdc,@function
_getda_cdc:
.LFB11:
	.loc 1 254 0
	.set ___PA___,1
	.loc 1 256 0
	mov	#_CDCFunctionError,w0
	clr.b	[w0]
	.loc 1 258 0
	call	_WaitOutReady
	.loc 1 260 0
	mov	#_IsOutBufferA,w0
	ze	[w0],w0
	btst	w0,#0
	.set ___BP___,61
	bra	z,.L33
	.loc 1 261 0
	mov	#_cdc_Out_bufferA,w0
	mov	w0,_OutPtr
	.loc 1 262 0
	mov	#_cdc_Out_bufferB,w1
	mov	_CDC_Outbdp,w0
	mov	w1,[w0+2]
	bra	.L34
.L33:
	.loc 1 264 0
	mov	#_cdc_Out_bufferB,w0
	mov	w0,_OutPtr
	.loc 1 265 0
	mov	#_cdc_Out_bufferA,w1
	mov	_CDC_Outbdp,w0
	mov	w1,[w0+2]
.L34:
	.loc 1 267 0
	mov	#_IsOutBufferA,w0
	com.b	[w0],[w0]
	.loc 1 268 0
	mov	_CDC_Outbdp,w1
	mov	#_cdc_Out_len,w0
	mov.b	[w1],[w0]
	.loc 1 269 0
	mov.b	#64,w2
	mov.b	w2,[w1]
	.loc 1 270 0
	mov	_CDC_Outbdp,w1
	mov.b	[w1+1],w2
	com.b	w2,w2
	and.b	#64,w2
	mov.b	#-120,w3
	ior.b	w2,w3,w2
	mov.b	w2,[w1+1]
	.loc 1 274 0
	mov.b	[w0],w0
	.loc 1 275 0
	return	
	.set ___PA___,0
.LFE11:
	.size	_getda_cdc, .-_getda_cdc
	.align	2
	.global	_putda_cdc	; export
	.type	_putda_cdc,@function
_putda_cdc:
.LFB12:
	.loc 1 277 0
	.set ___PA___,1
	.loc 1 281 0
	mov	_CDC_Inbdp,w2
.L36:
	mov.b	[w2+1],w1
	cp0.b	w1
	.set ___BP___,86
	bra	lt,.L36
	.loc 1 282 0
	mov	#_IsInBufferA,w1
	cp0.b	[w1]
	.set ___BP___,61
	bra	z,.L37
	.loc 1 283 0
	mov	#_cdc_In_bufferA,w1
	mov	w1,[w2+2]
	.loc 1 284 0
	mov	#_cdc_In_bufferB,w1
	mov	w1,_InPtr
	bra	.L38
.L37:
	.loc 1 286 0
	mov	#_cdc_In_bufferB,w1
	mov	w1,[w2+2]
	.loc 1 287 0
	mov	#_cdc_In_bufferA,w1
	mov	w1,_InPtr
.L38:
	.loc 1 289 0
	mov	_CDC_Inbdp,w1
	mov.b	w0,[w1]
	.loc 1 290 0
	mov	_CDC_Inbdp,w0
	mov.b	[w0+1],w1
	com.b	w1,w1
	and.b	#64,w1
	mov.b	#-120,w2
	ior.b	w1,w2,w1
	mov.b	w1,[w0+1]
	.loc 1 291 0
	mov	#_IsInBufferA,w0
	com.b	[w0],[w0]
	.loc 1 296 0
	clr.b	w0
	return	
	.set ___PA___,0
.LFE12:
	.size	_putda_cdc, .-_putda_cdc
	.align	2
	.global	_SendZLP	; export
	.type	_SendZLP,@function
_SendZLP:
.LFB13:
	.loc 1 298 0
	.set ___PA___,1
	.loc 1 299 0
	clr.b	w0
	call	_putda_cdc
	.loc 1 300 0
	return	
	.set ___PA___,0
.LFE13:
	.size	_SendZLP, .-_SendZLP
	.align	2
	.global	_CDC_Flush_In_Now	; export
	.type	_CDC_Flush_In_Now,@function
_CDC_Flush_In_Now:
.LFB14:
	.loc 1 303 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	.loc 1 304 0
	mov	#_cdc_In_len,w0
	mov.b	[w0],w8
	cp0.b	w8
	.set ___BP___,39
	bra	z,.L41
	.loc 1 305 0
	call	_getInReady
	cp0.b	w0
	.set ___BP___,0
	bra	z,.L43
	.loc 1 306 0
	mov.b	w8,w0
	call	_putda_cdc
	.loc 1 307 0
	mov.b	#64,w0
	mov	#_cdc_In_len,w1
	subr.b	w0,[w1],[w15]
	.set ___BP___,72
	bra	nz,.L44
	.loc 1 308 0
	mov.b	#1,w1
	mov	#_ZLPpending,w0
	mov.b	w1,[w0]
	bra	.L45
.L44:
	.loc 1 310 0
	mov	#_ZLPpending,w0
	clr.b	[w0]
.L45:
	.loc 1 312 0
	clr.b	w0
	mov	#_cdc_In_len,w1
	mov.b	w0,[w1]
	.loc 1 313 0
	mov	#_cdc_timeout_count,w1
	mov.b	w0,[w1]
	bra	.L41
.L43:
.L46:
	bra	.L46
.L41:
	.loc 1 315 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE14:
	.size	_CDC_Flush_In_Now, .-_CDC_Flush_In_Now
	.align	2
	.global	_CDCFlushOnTimeout	; export
	.type	_CDCFlushOnTimeout,@function
_CDCFlushOnTimeout:
.LFB15:
	.loc 1 318 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI5:
	.loc 1 320 0
	mov	#_cdc_timeout_count,w0
	mov.b	[w0],w0
	sub.b	w0,#3,[w15]
	.set ___BP___,50
	bra	leu,.L48
	.loc 1 322 0
	mov	#_cdc_In_len,w0
	mov.b	[w0],w8
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L49
	.loc 1 323 0
	mov	#_lock,w0
	cp0.b	[w0]
	.set ___BP___,39
	bra	nz,.L47
	call	_getInReady
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L47
	.loc 1 324 0
	mov.b	w8,w0
	call	_putda_cdc
	.loc 1 325 0
	mov.b	#64,w0
	mov	#_cdc_In_len,w1
	subr.b	w0,[w1],[w15]
	.set ___BP___,72
	bra	nz,.L51
	.loc 1 326 0
	mov.b	#1,w1
	mov	#_ZLPpending,w0
	mov.b	w1,[w0]
	bra	.L52
.L51:
	.loc 1 328 0
	mov	#_ZLPpending,w0
	clr.b	[w0]
.L52:
	.loc 1 330 0
	clr.b	w0
	mov	#_cdc_In_len,w1
	mov.b	w0,[w1]
	.loc 1 331 0
	mov	#_cdc_timeout_count,w1
	mov.b	w0,[w1]
	bra	.L47
.L49:
	.loc 1 333 0
	mov	#_ZLPpending,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	z,.L47
	.loc 1 334 0
	clr.b	w0
	call	_putda_cdc
	.loc 1 335 0
	clr.b	w0
	mov	#_ZLPpending,w1
	mov.b	w0,[w1]
	.loc 1 336 0
	mov	#_cdc_timeout_count,w1
	mov.b	w0,[w1]
	bra	.L47
.L48:
	.loc 1 339 0
	mov	#_cdc_timeout_count,w1
	inc.b	w0,[w1]
.L47:
	.loc 1 341 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE15:
	.size	_CDCFlushOnTimeout, .-_CDCFlushOnTimeout
	.align	2
	.global	_putc_cdc	; export
	.type	_putc_cdc,@function
_putc_cdc:
.LFB16:
	.loc 1 344 0
	.set ___PA___,1
	.loc 1 345 0
	mov.b	#1,w2
	mov	#_lock,w1
	mov.b	w2,[w1]
	.loc 1 346 0
	mov	_InPtr,w1
	mov.b	w0,[w1]
	.loc 1 347 0
	mov	_InPtr,w0
	inc	w0,w0
	mov	w0,_InPtr
	.loc 1 348 0
	mov	#_cdc_In_len,w1
	inc.b	[w1],w0
	mov.b	w0,[w1]
	.loc 1 349 0
	mov	#_ZLPpending,w1
	clr.b	[w1]
	.loc 1 350 0
	mov.b	#64,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L54
	.loc 1 351 0
	mov.b	w1,w0
	call	_putda_cdc
	.loc 1 352 0
	mov	#_cdc_In_len,w0
	clr.b	[w0]
	.loc 1 353 0
	mov.b	#1,w1
	mov	#_ZLPpending,w0
	mov.b	w1,[w0]
.L54:
	.loc 1 355 0
	clr.b	w0
	mov	#_lock,w1
	mov.b	w0,[w1]
	.loc 1 356 0
	mov	#_cdc_timeout_count,w1
	mov.b	w0,[w1]
	.loc 1 357 0
	return	
	.set ___PA___,0
.LFE16:
	.size	_putc_cdc, .-_putc_cdc
	.align	2
	.global	_getc_cdc	; export
	.type	_getc_cdc,@function
_getc_cdc:
.LFB17:
	.loc 1 364 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI6:
	.loc 1 367 0
	mov	#_cdc_Out_len,w0
	cp0.b	[w0]
	.set ___BP___,39
	bra	nz,.L56
	.loc 1 369 0
	mov	w0,w8
.L58:
	call	_getda_cdc
	mov.b	w0,[w8]
	.loc 1 370 0
	cp0.b	[w8]
	.set ___BP___,86
	bra	z,.L58
.L56:
	.loc 1 372 0
	mov	_OutPtr,w1
	mov.b	[w1++],w0
	.loc 1 373 0
	mov	w1,_OutPtr
	.loc 1 374 0
	mov	#_cdc_Out_len,w1
	dec.b	[w1],[w1]
	.loc 1 376 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE17:
	.size	_getc_cdc, .-_getc_cdc
	.align	2
	.global	_poll_getc_cdc	; export
	.type	_poll_getc_cdc,@function
_poll_getc_cdc:
.LFB18:
	.loc 1 385 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI7:
	mov	w0,w8
	.loc 1 387 0
	mov	#_cdc_Out_len,w0
	cp0.b	[w0]
	.set ___BP___,61
	bra	z,.L61
	.loc 1 388 0
	mov	_OutPtr,w0
	mov.b	[w0],[w8]
	.loc 1 389 0
	mov	_OutPtr,w0
	inc	w0,w0
	mov	w0,_OutPtr
	.loc 1 390 0
	mov	#_cdc_Out_len,w0
	dec.b	[w0],[w0]
	.loc 1 391 0
	mov.b	#1,w0
	bra	.L62
.L61:
	.loc 1 393 0
	call	_getOutReady
	mov.b	w0,w1
	.loc 1 402 0
	clr.b	w0
	.loc 1 393 0
	cp0.b	w1
	.set ___BP___,61
	bra	z,.L62
	.loc 1 394 0
	call	_getda_cdc
	mov	#_cdc_Out_len,w1
	mov.b	w0,[w1]
	.loc 1 402 0
	clr.b	w0
	.loc 1 395 0
	cp0.b	[w1]
	.set ___BP___,39
	bra	z,.L62
	.loc 1 396 0
	mov	_OutPtr,w0
	mov.b	[w0],[w8]
	.loc 1 397 0
	mov	_OutPtr,w0
	inc	w0,w0
	mov	w0,_OutPtr
	.loc 1 398 0
	mov	w1,w0
	dec.b	[w0],[w0]
	.loc 1 399 0
	mov.b	#1,w0
.L62:
	.loc 1 403 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE18:
	.size	_poll_getc_cdc, .-_poll_getc_cdc
	.align	2
	.global	_peek_getc_cdc	; export
	.type	_peek_getc_cdc,@function
_peek_getc_cdc:
.LFB19:
	.loc 1 413 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI8:
	mov	w0,w8
	.loc 1 415 0
	mov	#_cdc_Out_len,w0
	cp0.b	[w0]
	.set ___BP___,61
	bra	z,.L66
	.loc 1 416 0
	mov	_OutPtr,w0
	mov.b	[w0],[w8]
	.loc 1 417 0
	mov.b	#1,w0
	bra	.L67
.L66:
	.loc 1 419 0
	call	_getOutReady
	mov.b	w0,w1
	.loc 1 426 0
	clr.b	w0
	.loc 1 419 0
	cp0.b	w1
	.set ___BP___,61
	bra	z,.L67
	.loc 1 420 0
	call	_getda_cdc
	mov	#_cdc_Out_len,w1
	mov.b	w0,[w1]
	.loc 1 426 0
	clr.b	w0
	.loc 1 421 0
	cp0.b	[w1]
	.set ___BP___,39
	bra	z,.L67
	.loc 1 422 0
	mov	_OutPtr,w0
	mov.b	[w0],[w8]
	.loc 1 423 0
	mov.b	#1,w0
.L67:
	.loc 1 427 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE19:
	.size	_peek_getc_cdc, .-_peek_getc_cdc
	.global	_parity_str	; export
	.section	.const,psv,page
	.type	_parity_str,@object
	.size	_parity_str, 5
_parity_str:
	.byte 78
	.byte 79
	.byte 69
	.byte 77
	.byte 83
	.global	_LineStateUpdated	; export
	.section	.bss,bss
	.type	_LineStateUpdated,@object
	.size	_LineStateUpdated, 1
_LineStateUpdated:
	.skip	1
	.global	_cdc_timeout_count	; export
	.type	_cdc_timeout_count,@object
	.size	_cdc_timeout_count, 1
_cdc_timeout_count:
	.skip	1
	.global	_ZLPpending	; export
	.type	_ZLPpending,@object
	.size	_ZLPpending, 1
_ZLPpending:
	.skip	1
	.global	_lock	; export
	.type	_lock,@object
	.size	_lock, 1
_lock:
	.skip	1
	.type	_linecodeing,@object
	.global	_linecodeing
	.align	2
_linecodeing:	.space	10
	.global	_cdc_acm_in_buffer	; export
	.section	usb_data,bss
	.type	_cdc_acm_in_buffer,@object
	.size	_cdc_acm_in_buffer, 10
_cdc_acm_in_buffer:
	.skip	10
	.global	_cdc_In_bufferA	; export
	.section	usb_data3,bss
	.type	_cdc_In_bufferA,@object
	.size	_cdc_In_bufferA, 64
_cdc_In_bufferA:
	.skip	64
	.global	_cdc_In_bufferB	; export
	.type	_cdc_In_bufferB,@object
	.size	_cdc_In_bufferB, 64
_cdc_In_bufferB:
	.skip	64
	.global	_cdc_Out_bufferA	; export
	.type	_cdc_Out_bufferA,@object
	.size	_cdc_Out_bufferA, 64
_cdc_Out_bufferA:
	.skip	64
	.global	_cdc_Out_bufferB	; export
	.type	_cdc_Out_bufferB,@object
	.size	_cdc_Out_bufferB, 64
_cdc_Out_bufferB:
	.skip	64
	.section	.bss,bss
	.type	_cls,@object
	.global	_cls
	.align	2
_cls:	.space	2
	.type	_cdc_In_len,@object
	.global	_cdc_In_len
_cdc_In_len:	.space	1
	.type	_cdc_Out_len,@object
	.global	_cdc_Out_len
_cdc_Out_len:	.space	1
	.type	_IsInBufferA,@object
	.global	_IsInBufferA
_IsInBufferA:	.space	1
	.type	_IsOutBufferA,@object
	.global	_IsOutBufferA
_IsOutBufferA:	.space	1
	.type	_InPtr,@object
	.global	_InPtr
	.align	2
_InPtr:	.space	2
	.type	_OutPtr,@object
	.global	_OutPtr
	.align	2
_OutPtr:	.space	2
	.type	_CDC_Outbdp,@object
	.global	_CDC_Outbdp
	.align	2
_CDC_Outbdp:	.space	2
	.type	_CDC_Inbdp,@object
	.global	_CDC_Inbdp
	.align	2
_CDC_Inbdp:	.space	2
	.type	_CDCFunctionError,@object
	.global	_CDCFunctionError
_CDCFunctionError:	.space	1
	.type	_cdc_trf_state,@object
	.global	_cdc_trf_state
_cdc_trf_state:	.space	1
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.sleb128 2
	.byte	0x25
	.byte	0x12
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE38:
	.section	.text,code
.Letext0:
	.file 2 "../dp_usb/../dp_usb/usb_stack_globals.h"
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 4 "../dp_usb/../dp_usb/../dp_usb/picusb.h"
	.file 5 "../dp_usb/../dp_usb/usb_stack.h"
	.file 6 "../dp_usb/../dp_usb/cdc.h"
	.file 7 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 8 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.section	.debug_info,info
	.4byte	0x9fb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../dp_usb/cdc.c"
	.asciz	"C:\\\\Users\\\\avish\\\\Workspace\\\\Firmware\\\\busPirate.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x6
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x2
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0x31
	.4byte	0xfc
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x4
	.asciz	"BDENTRY"
	.byte	0x4
	.byte	0x4
	.2byte	0x209
	.4byte	0x182
	.uleb128 0x5
	.asciz	"BDCNT"
	.byte	0x4
	.2byte	0x20a
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"BDSTAT"
	.byte	0x4
	.2byte	0x20c
	.4byte	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.asciz	"BDADDR"
	.byte	0x4
	.2byte	0x20d
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x7
	.byte	0x2
	.4byte	0xa8
	.uleb128 0x8
	.asciz	"BDentry"
	.byte	0x4
	.2byte	0x20e
	.4byte	0x13b
	.uleb128 0x2
	.asciz	"usb_handler_t"
	.byte	0x5
	.byte	0x67
	.4byte	0x1b2
	.uleb128 0x7
	.byte	0x2
	.4byte	0x1b8
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.asciz	"_cdc_ControlLineState"
	.byte	0x2
	.byte	0x6
	.byte	0x28
	.4byte	0x222
	.uleb128 0xb
	.asciz	"DTR"
	.byte	0x6
	.byte	0x29
	.4byte	0xc8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.asciz	"RTS"
	.byte	0x6
	.byte	0x2a
	.4byte	0xc8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.asciz	"unused1"
	.byte	0x6
	.byte	0x2b
	.4byte	0xc8
	.byte	0x2
	.byte	0x6
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"unused2"
	.byte	0x6
	.byte	0x2c
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.asciz	"size_t"
	.byte	0x7
	.byte	0x5
	.4byte	0xfc
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0xd
	.asciz	"stopbits"
	.byte	0x2
	.byte	0x1
	.byte	0x17
	.4byte	0x272
	.uleb128 0xe
	.asciz	"one"
	.sleb128 0
	.uleb128 0xe
	.asciz	"oneandahalf"
	.sleb128 1
	.uleb128 0xe
	.asciz	"two"
	.sleb128 2
	.byte	0x0
	.uleb128 0xd
	.asciz	"parity"
	.byte	0x2
	.byte	0x1
	.byte	0x1b
	.4byte	0x2a5
	.uleb128 0xe
	.asciz	"none"
	.sleb128 0
	.uleb128 0xe
	.asciz	"odd"
	.sleb128 1
	.uleb128 0xe
	.asciz	"even"
	.sleb128 2
	.uleb128 0xe
	.asciz	"mark"
	.sleb128 3
	.uleb128 0xe
	.asciz	"space"
	.sleb128 4
	.byte	0x0
	.uleb128 0xa
	.asciz	"cdc_LineCodeing"
	.byte	0xa
	.byte	0x1
	.byte	0x20
	.4byte	0x312
	.uleb128 0xc
	.asciz	"dwDTERate"
	.byte	0x1
	.byte	0x21
	.4byte	0x10c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"bCharFormat"
	.byte	0x1
	.byte	0x22
	.4byte	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"bParityType"
	.byte	0x1
	.byte	0x23
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"bDataBits"
	.byte	0x1
	.byte	0x24
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.asciz	"cdc_set_control_line_state_status"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"cdc_set_line_coding_status"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"cdc_get_line_coding"
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x10
	.byte	0x1
	.asciz	"cdc_set_line_coding_data"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x3e3
	.uleb128 0x11
	.asciz	"dwBaud"
	.byte	0x1
	.byte	0xc4
	.4byte	0x10c
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x12
	.asciz	"dwBaudrem"
	.byte	0x1
	.byte	0xc4
	.4byte	0x10c
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.asciz	"cdc_setup"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x422
	.uleb128 0x11
	.asciz	"packet"
	.byte	0x1
	.byte	0x85
	.4byte	0x422
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.asciz	"reply_len"
	.byte	0x1
	.byte	0x86
	.4byte	0x222
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.4byte	0x9c
	.uleb128 0xf
	.byte	0x1
	.asciz	"initCDC"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"user_configured_init"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"WaitOutReady"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"WaitInReady"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"getOutReady"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"getInReady"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"getda_cdc"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.byte	0x1
	.asciz	"putda_cdc"
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5f
	.4byte	0x527
	.uleb128 0x15
	.asciz	"count"
	.byte	0x1
	.2byte	0x115
	.4byte	0x9c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"SendZLP"
	.byte	0x1
	.2byte	0x12a
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"CDC_Flush_In_Now"
	.byte	0x1
	.2byte	0x12f
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"CDCFlushOnTimeout"
	.byte	0x1
	.2byte	0x13e
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"putc_cdc"
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x5f
	.4byte	0x5ac
	.uleb128 0x15
	.asciz	"c"
	.byte	0x1
	.2byte	0x158
	.4byte	0x9c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"getc_cdc"
	.byte	0x1
	.2byte	0x16c
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x5f
	.4byte	0x5da
	.uleb128 0x18
	.asciz	"c"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x9c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"poll_getc_cdc"
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x5f
	.4byte	0x60d
	.uleb128 0x15
	.asciz	"c"
	.byte	0x1
	.2byte	0x181
	.4byte	0x422
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"peek_getc_cdc"
	.byte	0x1
	.2byte	0x19d
	.byte	0x1
	.4byte	0x9c
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x5f
	.4byte	0x640
	.uleb128 0x15
	.asciz	"c"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x422
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x19
	.asciz	"U1BRG"
	.byte	0x8
	.2byte	0xada
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xec
	.uleb128 0x19
	.asciz	"U1EP1"
	.byte	0x8
	.2byte	0x10f0
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"U1EP2"
	.byte	0x8
	.2byte	0x1104
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x18d
	.4byte	0x680
	.uleb128 0x1b
	.byte	0x0
	.uleb128 0x1c
	.asciz	"usb_bdt"
	.byte	0x5
	.byte	0x7c
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x5
	.byte	0x87
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x2
	.4byte	0x18d
	.uleb128 0x1d
	.4byte	.LASF1
	.byte	0x5
	.byte	0x87
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF2
	.byte	0x1
	.byte	0x25
	.4byte	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9c
	.4byte	0x6ce
	.uleb128 0x1e
	.4byte	0xfc
	.byte	0x9
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x1
	.byte	0x29
	.4byte	0x6be
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9c
	.4byte	0x6eb
	.uleb128 0x1e
	.4byte	0xfc
	.byte	0x3f
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2c
	.4byte	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF5
	.byte	0x1
	.byte	0x2d
	.4byte	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2e
	.4byte	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2f
	.4byte	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.asciz	"cls"
	.byte	0x1
	.byte	0x33
	.4byte	0x1ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF8
	.byte	0x1
	.byte	0x34
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF9
	.byte	0x1
	.byte	0x35
	.4byte	0x746
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF10
	.byte	0x1
	.byte	0x36
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF11
	.byte	0x1
	.byte	0x37
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.asciz	"InPtr"
	.byte	0x1
	.byte	0x38
	.4byte	0x422
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.asciz	"OutPtr"
	.byte	0x1
	.byte	0x39
	.4byte	0x422
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3a
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3b
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3c
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.asciz	"lock"
	.byte	0x1
	.byte	0x3d
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3f
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3f
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF17
	.byte	0x1
	.byte	0x40
	.4byte	0x9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF18
	.byte	0x1
	.byte	0x42
	.4byte	0x746
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"U1BRG"
	.byte	0x8
	.2byte	0xada
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"U1EP1"
	.byte	0x8
	.2byte	0x10f0
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.asciz	"U1EP2"
	.byte	0x8
	.2byte	0x1104
	.4byte	0x650
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.asciz	"usb_bdt"
	.byte	0x5
	.byte	0x7c
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x5
	.byte	0x87
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF1
	.byte	0x5
	.byte	0x87
	.4byte	0x69e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x858
	.4byte	0x858
	.uleb128 0x1e
	.4byte	0xfc
	.byte	0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x1f
	.asciz	"parity_str"
	.byte	0x1
	.byte	0x1e
	.4byte	0x879
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_parity_str
	.uleb128 0x20
	.4byte	0x848
	.uleb128 0x21
	.4byte	.LASF2
	.byte	0x1
	.byte	0x25
	.4byte	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_linecodeing
	.uleb128 0x21
	.4byte	.LASF3
	.byte	0x1
	.byte	0x29
	.4byte	0x6be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_acm_in_buffer
	.uleb128 0x21
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2c
	.4byte	0x6db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_In_bufferA
	.uleb128 0x21
	.4byte	.LASF5
	.byte	0x1
	.byte	0x2d
	.4byte	0x6db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_In_bufferB
	.uleb128 0x21
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2e
	.4byte	0x6db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_Out_bufferA
	.uleb128 0x21
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2f
	.4byte	0x6db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_Out_bufferB
	.uleb128 0x1f
	.asciz	"cls"
	.byte	0x1
	.byte	0x33
	.4byte	0x1ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cls
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x1
	.byte	0x34
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_In_len
	.uleb128 0x21
	.4byte	.LASF9
	.byte	0x1
	.byte	0x35
	.4byte	0x746
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_Out_len
	.uleb128 0x21
	.4byte	.LASF10
	.byte	0x1
	.byte	0x36
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsInBufferA
	.uleb128 0x21
	.4byte	.LASF11
	.byte	0x1
	.byte	0x37
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsOutBufferA
	.uleb128 0x1f
	.asciz	"InPtr"
	.byte	0x1
	.byte	0x38
	.4byte	0x422
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_InPtr
	.uleb128 0x1f
	.asciz	"OutPtr"
	.byte	0x1
	.byte	0x39
	.4byte	0x422
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_OutPtr
	.uleb128 0x21
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3a
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_LineStateUpdated
	.uleb128 0x21
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3b
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_timeout_count
	.uleb128 0x21
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3c
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_ZLPpending
	.uleb128 0x1f
	.asciz	"lock"
	.byte	0x1
	.byte	0x3d
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_lock
	.uleb128 0x21
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3f
	.4byte	0x69e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_CDC_Outbdp
	.uleb128 0x21
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3f
	.4byte	0x69e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_CDC_Inbdp
	.uleb128 0x21
	.4byte	.LASF17
	.byte	0x1
	.byte	0x40
	.4byte	0x9c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_CDCFunctionError
	.uleb128 0x21
	.4byte	.LASF18
	.byte	0x1
	.byte	0x42
	.4byte	0x746
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cdc_trf_state
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x2f3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9ff
	.4byte	0x312
	.asciz	"cdc_set_control_line_state_status"
	.4byte	0x343
	.asciz	"cdc_set_line_coding_status"
	.4byte	0x36d
	.asciz	"cdc_get_line_coding"
	.4byte	0x390
	.asciz	"cdc_set_line_coding_data"
	.4byte	0x3e3
	.asciz	"cdc_setup"
	.4byte	0x428
	.asciz	"initCDC"
	.4byte	0x43f
	.asciz	"user_configured_init"
	.4byte	0x463
	.asciz	"WaitOutReady"
	.4byte	0x47f
	.asciz	"WaitInReady"
	.4byte	0x49a
	.asciz	"getOutReady"
	.4byte	0x4b9
	.asciz	"getInReady"
	.4byte	0x4d7
	.asciz	"getda_cdc"
	.4byte	0x4f4
	.asciz	"putda_cdc"
	.4byte	0x527
	.asciz	"SendZLP"
	.4byte	0x53f
	.asciz	"CDC_Flush_In_Now"
	.4byte	0x560
	.asciz	"CDCFlushOnTimeout"
	.4byte	0x582
	.asciz	"putc_cdc"
	.4byte	0x5ac
	.asciz	"getc_cdc"
	.4byte	0x5da
	.asciz	"poll_getc_cdc"
	.4byte	0x60d
	.asciz	"peek_getc_cdc"
	.4byte	0x860
	.asciz	"parity_str"
	.4byte	0x87e
	.asciz	"linecodeing"
	.4byte	0x890
	.asciz	"cdc_acm_in_buffer"
	.4byte	0x8a2
	.asciz	"cdc_In_bufferA"
	.4byte	0x8b4
	.asciz	"cdc_In_bufferB"
	.4byte	0x8c6
	.asciz	"cdc_Out_bufferA"
	.4byte	0x8d8
	.asciz	"cdc_Out_bufferB"
	.4byte	0x8ea
	.asciz	"cls"
	.4byte	0x8fc
	.asciz	"cdc_In_len"
	.4byte	0x90e
	.asciz	"cdc_Out_len"
	.4byte	0x920
	.asciz	"IsInBufferA"
	.4byte	0x932
	.asciz	"IsOutBufferA"
	.4byte	0x944
	.asciz	"InPtr"
	.4byte	0x958
	.asciz	"OutPtr"
	.4byte	0x96d
	.asciz	"LineStateUpdated"
	.4byte	0x97f
	.asciz	"cdc_timeout_count"
	.4byte	0x991
	.asciz	"ZLPpending"
	.4byte	0x9a3
	.asciz	"lock"
	.4byte	0x9b6
	.asciz	"CDC_Outbdp"
	.4byte	0x9c8
	.asciz	"CDC_Inbdp"
	.4byte	0x9da
	.asciz	"CDCFunctionError"
	.4byte	0x9ec
	.asciz	"cdc_trf_state"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x9f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9ff
	.4byte	0x9c
	.asciz	"BYTE"
	.4byte	0xec
	.asciz	"uint16_t"
	.4byte	0x13b
	.asciz	"BDENTRY"
	.4byte	0x18d
	.asciz	"BDentry"
	.4byte	0x19d
	.asciz	"usb_handler_t"
	.4byte	0x1ba
	.asciz	"_cdc_ControlLineState"
	.4byte	0x222
	.asciz	"size_t"
	.4byte	0x246
	.asciz	"stopbits"
	.4byte	0x272
	.asciz	"parity"
	.4byte	0x2a5
	.asciz	"cdc_LineCodeing"
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,info
.LASF16:
	.asciz	"CDC_Inbdp"
.LASF6:
	.asciz	"cdc_Out_bufferA"
.LASF1:
	.asciz	"EP0_Inbdp"
.LASF15:
	.asciz	"CDC_Outbdp"
.LASF10:
	.asciz	"IsInBufferA"
.LASF18:
	.asciz	"cdc_trf_state"
.LASF12:
	.asciz	"LineStateUpdated"
.LASF8:
	.asciz	"cdc_In_len"
.LASF17:
	.asciz	"CDCFunctionError"
.LASF0:
	.asciz	"EP0_Outbdp"
.LASF9:
	.asciz	"cdc_Out_len"
.LASF11:
	.asciz	"IsOutBufferA"
.LASF14:
	.asciz	"ZLPpending"
.LASF2:
	.asciz	"linecodeing"
.LASF13:
	.asciz	"cdc_timeout_count"
.LASF3:
	.asciz	"cdc_acm_in_buffer"
.LASF4:
	.asciz	"cdc_In_bufferA"
.LASF5:
	.asciz	"cdc_In_bufferB"
.LASF7:
	.asciz	"cdc_Out_bufferB"
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
