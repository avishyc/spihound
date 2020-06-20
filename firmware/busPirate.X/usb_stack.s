	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\dp_usb\\usb_stack.c"
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
	.global	_usb_start	; export
	.type	_usb_start,@function
_usb_start:
.LFB1:
	.file 1 "../dp_usb/usb_stack.c"
	.loc 1 109 0
	.set ___PA___,1
	.loc 1 110 0
	btst.b	_U1CONbits,#0
	.set ___BP___,9
	bra	nz,.L2
.L5:
	bset.b	_U1CONbits,#0
	btst.b	_U1CONbits,#0
	.set ___BP___,91
	bra	z,.L5
.L2:
	.loc 1 111 0
	mov.b	#1,w1
	mov	#_usb_device_state,w0
	mov.b	w1,[w0]
	.loc 1 112 0
	mov	#64,w1
.L4:
	mov	_U1CONbits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	nz,.L4
	.loc 1 113 0
	mov.b	#4,w1
	mov	#_usb_device_state,w0
	mov.b	w1,[w0]
	.loc 1 114 0
	return	
	.set ___PA___,0
.LFE1:
	.size	_usb_start, .-_usb_start
	.align	2
	.global	_usb_handle_error	; export
	.type	_usb_handle_error,@function
_usb_handle_error:
.LFB2:
	.loc 1 116 0
	.set ___PA___,1
	.loc 1 118 0
	mov	#255,w0
	mov	w0,_U1EIR
	.loc 1 119 0
	return	
	.set ___PA___,0
.LFE2:
	.size	_usb_handle_error, .-_usb_handle_error
	.align	2
	.global	_ClearUSBtoDefault	; export
	.type	_ClearUSBtoDefault,@function
_ClearUSBtoDefault:
.LFB4:
	.loc 1 133 0
	.set ___PA___,1
	.loc 1 135 0
	clr	w0
	mov	w0,_sof_handler
	.loc 1 136 0
	mov	w0,_class_setup_handler
	.loc 1 137 0
	mov	w0,_vendor_setup_handler
	.loc 1 139 0
	clr	_U1ADDR
	.loc 1 140 0
	bset.b	_U1CONbits,#1
	bclr.b	_U1CONbits,#1
	.loc 1 141 0
	mov	#255,w0
	mov	w0,_U1EIR
	mov	#_endpoints+2,w1
	.loc 1 143 0
	clr	w3
	clr	w0
	.loc 1 144 0
	clr	w2
	.loc 1 146 0
	mov	#_U1EP0,w4
.L10:
	.loc 1 144 0
	mov	w2,[w1]
	.loc 1 145 0
	mov	w2,[w1-2]
	.loc 1 146 0
	add	w3,w3,w3
	add	w4,w3,w3
	mov	w2,[w3]
	.loc 1 143 0
	inc	w0,w0
	mov	w0,w3
	add	w1,#4,w1
	sub	w0,#16,[w15]
	.set ___BP___,94
	bra	nz,.L10
	.loc 1 150 0
	mov	#_usb_bdt+1,w3
	clr.b	w0
	mov.b	w0,[w3]
	add	w3,#4,w2
	mov.b	w0,[w2]
	add	w2,#4,w1
	mov.b	w0,[w1]
	add	w1,#4,w1
	mov.b	w0,[w1]
	add	w1,#4,w1
	mov.b	w0,[w1]
	add	w1,#4,w1
	mov.b	w0,[w1]
	.loc 1 153 0
	mov	#13,w1
	mov	w1,_U1EP0
	.loc 1 166 0
	clr	w1
	mov	w1,_usb_device_status
	.loc 1 168 0
	mov	#_usb_device_state,w4
	mov.b	w1,[w4]
	.loc 1 169 0
	mov	w1,_usb_current_cfg
	.loc 1 170 0
	mov	#_usb_addr_pending,w4
	mov.b	w1,[w4]
	.loc 1 173 0
	mov.b	#8,w4
	sub	w2,#5,w1
	mov.b	w4,[w1]
	.loc 1 174 0
	mov	#_usb_ep0_out_buf,w1
	mov	w1,_usb_bdt+2
	.loc 1 175 0
	mov.b	#-120,w1
	mov.b	w1,[w3]
	.loc 1 176 0
	dec	w2,w1
	mov.b	w0,[w1]
	.loc 1 177 0
	mov	#_usb_ep0_in_buf,w0
	mov	w0,_usb_bdt+6
	.loc 1 178 0
	mov.b	#72,w0
	mov.b	w0,[w2]
	.loc 1 182 0
	return	
	.set ___PA___,0
.LFE4:
	.size	_ClearUSBtoDefault, .-_ClearUSBtoDefault
	.align	2
	.global	_usb_handle_reset	; export
	.type	_usb_handle_reset,@function
_usb_handle_reset:
.LFB3:
	.loc 1 121 0
	.set ___PA___,1
	.loc 1 123 0
	mov	#8,w2
	.loc 1 125 0
	mov	#_usb_device_state,w1
	mov.b	#4,w0
.L13:
	.loc 1 123 0
	mov	w2,_U1IR
	.loc 1 125 0
	mov.b	w0,[w1]
	.loc 1 127 0
	btst.b	_U1IRbits,#3
	.set ___BP___,86
	bra	nz,.L13
	clr	w0
	mov	w0,_usb_current_cfg
	mov	#_usb_addr_pending,w1
	mov.b	w0,[w1]
	.loc 1 129 0
	call	_ClearUSBtoDefault
	.loc 1 130 0
	bclr.b	_U1CONbits,#5
	.loc 1 131 0
	return	
	.set ___PA___,0
.LFE3:
	.size	_usb_handle_reset, .-_usb_handle_reset
	.align	2
	.global	_usb_handle_in	; export
	.type	_usb_handle_in,@function
_usb_handle_in:
.LFB11:
	.loc 1 509 0
	.set ___PA___,1
	.loc 1 510 0
	mov	#_trn_status,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	sl	w0,#2,w0
	mov	#_endpoints,w1
	mov	[w1+w0],w0
	cp0	w0
	.set ___BP___,21
	bra	z,.L15
	.loc 1 511 0
	call	w0
.L15:
	.loc 1 513 0
	return	
	.set ___PA___,0
.LFE11:
	.size	_usb_handle_in, .-_usb_handle_in
	.align	2
	.global	_usb_handle_out	; export
	.type	_usb_handle_out,@function
_usb_handle_out:
.LFB12:
	.loc 1 515 0
	.set ___PA___,1
	.loc 1 516 0
	mov	#_trn_status,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	sl	w0,#2,w0
	inc2	w0,w0
	mov	#_endpoints,w1
	mov	[w1+w0],w0
	cp0	w0
	.set ___BP___,21
	bra	z,.L17
	.loc 1 517 0
	call	w0
.L17:
	.loc 1 519 0
	return	
	.set ___PA___,0
.LFE12:
	.size	_usb_handle_out, .-_usb_handle_out
	.align	2
	.global	_usb_register_sof_handler	; export
	.type	_usb_register_sof_handler,@function
_usb_register_sof_handler:
.LFB13:
	.loc 1 521 0
	.set ___PA___,1
	.loc 1 522 0
	mov	w0,_sof_handler
	.loc 1 523 0
	return	
	.set ___PA___,0
.LFE13:
	.size	_usb_register_sof_handler, .-_usb_register_sof_handler
	.align	2
	.global	_usb_register_class_setup_handler	; export
	.type	_usb_register_class_setup_handler,@function
_usb_register_class_setup_handler:
.LFB14:
	.loc 1 525 0
	.set ___PA___,1
	.loc 1 526 0
	mov	w0,_class_setup_handler
	.loc 1 527 0
	return	
	.set ___PA___,0
.LFE14:
	.size	_usb_register_class_setup_handler, .-_usb_register_class_setup_handler
	.align	2
	.global	_usb_register_vendor_setup_handler	; export
	.type	_usb_register_vendor_setup_handler,@function
_usb_register_vendor_setup_handler:
.LFB15:
	.loc 1 529 0
	.set ___PA___,1
	.loc 1 530 0
	mov	w0,_vendor_setup_handler
	.loc 1 531 0
	return	
	.set ___PA___,0
.LFE15:
	.size	_usb_register_vendor_setup_handler, .-_usb_register_vendor_setup_handler
	.align	2
	.global	_usb_set_in_handler	; export
	.type	_usb_set_in_handler,@function
_usb_set_in_handler:
.LFB16:
	.loc 1 533 0
	.set ___PA___,1
	.loc 1 534 0
	sl	w0,#2,w0
	mov	#_endpoints,w2
	mov	w1,[w2+w0]
	.loc 1 535 0
	return	
	.set ___PA___,0
.LFE16:
	.size	_usb_set_in_handler, .-_usb_set_in_handler
	.align	2
	.global	_usb_send_rom	; export
	.type	_usb_send_rom,@function
_usb_send_rom:
.LFB21:
	.loc 1 577 0
	.set ___PA___,1
	.loc 1 581 0
	mov	_usb_rom_len,w3
	cp0	w3
	.set ___BP___,29
	bra	z,.L24
	.loc 1 582 0
	sub	w3,#8,[w15]
	.set ___BP___,50
	bra	leu,.L25
	mov	#8,w3
.L25:
	.loc 1 584 0
	cp0	w3
	.set ___BP___,9
	bra	z,.L26
	clr	w0
.L27:
	.loc 1 585 0
	mov	_EP0_Inbdp,w1
	mov	[w1+2],w1
	mov	_usb_rom_ptr,w2
	mov.b	[w2+w0],[w1+w0]
	.loc 1 584 0
	inc	w0,w0
	sub	w3,w0,[w15]
	.set ___BP___,91
	bra	gtu,.L27
	bra	.L26
.L24:
	.loc 1 589 0
	mul.uu	w0, #0, w0
	call	_usb_set_in_handler
	.loc 1 588 0
	clr	w3
.L26:
	.loc 1 592 0
	mov	_EP0_Inbdp,w0
	mov.b	w3,[w0]
	.loc 1 593 0
	mov	_EP0_Inbdp,w0
	mov.b	[w0+1],w2
	com.b	w2,w2
	and.b	#64,w2
	mov.b	#-120,w1
	ior.b	w2,w1,w1
	mov.b	w1,[w0+1]
	.loc 1 595 0
	mov	_usb_rom_ptr,w0
	add	w0,w3,w0
	mov	w0,_usb_rom_ptr
	.loc 1 596 0
	mov	_usb_rom_len,w0
	sub	w0,w3,w3
	mov	w3,_usb_rom_len
	.loc 1 597 0
	return	
	.set ___PA___,0
.LFE21:
	.size	_usb_send_rom, .-_usb_send_rom
	.align	2
	.global	_usb_set_address	; export
	.type	_usb_set_address,@function
_usb_set_address:
.LFB20:
	.loc 1 566 0
	.set ___PA___,1
	.loc 1 567 0
	mov	#_usb_addr_pending,w0
	mov.b	[w0],w0
	cp0.b	w0
	.set ___BP___,61
	bra	nz,.L30
	.loc 1 568 0
	mov.b	#4,w2
	mov	#_usb_device_state,w1
	mov.b	w2,[w1]
	bra	.L31
.L30:
	.loc 1 570 0
	mov.b	#16,w2
	mov	#_usb_device_state,w1
	mov.b	w2,[w1]
.L31:
	.loc 1 572 0
	ze	w0,w0
	mov	w0,_U1ADDR
	.loc 1 573 0
	mov	#_usb_addr_pending,w0
	setm.b	[w0]
	.loc 1 574 0
	mul.uu	w0, #0, w0
	call	_usb_set_in_handler
	.loc 1 575 0
	return	
	.set ___PA___,0
.LFE20:
	.size	_usb_set_address, .-_usb_set_address
	.align	2
	.global	_usb_set_out_handler	; export
	.type	_usb_set_out_handler,@function
_usb_set_out_handler:
.LFB17:
	.loc 1 537 0
	.set ___PA___,1
	.loc 1 538 0
	sl	w0,#2,w0
	mov	#_endpoints+2,w2
	mov	w1,[w0+w2]
	.loc 1 539 0
	return	
	.set ___PA___,0
.LFE17:
	.size	_usb_set_out_handler, .-_usb_set_out_handler
	.align	2
	.global	_usb_init	; export
	.type	_usb_init,@function
_usb_init:
.LFB0:
	.loc 1 93 0
	.set ___PA___,1
	.loc 1 95 0
	mov	w0,_usb_device_descriptor
	.loc 1 96 0
	mov	w1,_usb_config_descriptor
	.loc 1 97 0
	mov	w2,_usb_string_descriptor
	.loc 1 98 0
	mov	w3,_usb_num_string_descriptors
	.loc 1 99 0
	clr	w0
	mov	w0,_sof_handler
	.loc 1 100 0
	mov	w0,_class_setup_handler
	.loc 1 101 0
	mov	w0,_vendor_setup_handler
	.loc 1 102 0
	clr	w1
	call	_usb_set_in_handler
	.loc 1 103 0
	mul.uu	w0, #0, w0
	call	_usb_set_out_handler
	.loc 1 104 0
	call	_ClearUSBtoDefault
	.loc 1 105 0
	clr	_U1CNFG1
	clr	_U1CNFG2
	mov	#_usb_bdt,w0
	lsr	w0,#8,w0
	mov	w0,_U1BDTP1
	mov	#128,w0
	mov	w0,_U1OTGCON
	bset.b	_U1PWRCbits,#0
	.loc 1 106 0
	bclr.b	_U1CONbits,#5
	.loc 1 107 0
	return	
	.set ___PA___,0
.LFE0:
	.size	_usb_init, .-_usb_init
	.align	2
	.global	_usb_ack_dat1	; export
	.type	_usb_ack_dat1,@function
_usb_ack_dat1:
.LFB18:
	.loc 1 547 0
	.set ___PA___,1
	.loc 1 548 0
	mov	_EP0_Inbdp,w1
	mov.b	w0,[w1]
	.loc 1 549 0
	mov.b	#-56,w1
	mov	_EP0_Inbdp,w0
	mov.b	w1,[w0+1]
	.loc 1 550 0
	return	
	.set ___PA___,0
.LFE18:
	.size	_usb_ack_dat1, .-_usb_ack_dat1
	.align	2
	.global	_usb_RequestError	; export
	.type	_usb_RequestError,@function
_usb_RequestError:
.LFB19:
	.loc 1 552 0
	.set ___PA___,1
	.loc 1 554 0
	mov.b	#8,w1
	mov	#_usb_bdt,w0
	mov.b	w1,[w0]
	.loc 1 557 0
	mov.b	#-124,w0
	mov	#_usb_bdt+5,w1
	mov.b	w0,[w1]
	.loc 1 558 0
	sub	w1,#4,w1
	mov.b	w0,[w1]
	.loc 1 564 0
	return	
	.set ___PA___,0
.LFE19:
	.size	_usb_RequestError, .-_usb_RequestError
	.align	2
	.global	_usb_handle_StandardEndpointRequest	; export
	.type	_usb_handle_StandardEndpointRequest,@function
_usb_handle_StandardEndpointRequest:
.LFB10:
	.loc 1 439 0
	.set ___PA___,1
	.loc 1 446 0
	mov	[w0+2],w1
	.loc 1 448 0
	mov.b	[w1+1],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L39
	.set ___BP___,50
	bra	ltu,.L38
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L45
	bra	.L46
.L38:
	.loc 1 450 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w2
	clr.b	w0
	mov.b	w0,[w2]
	.loc 1 451 0
	mov	_EP0_Inbdp,w2
	mov	[w2+2],w2
	mov.b	w0,[w2+1]
	.loc 1 452 0
	mov.b	[w1+4],w1
	.loc 1 454 0
	and	w1,#15,w0
	add	w0,w0,w0
	.loc 1 453 0
	ze	w1,w1
	.loc 1 454 0
	lsr	w1,#7,w1
	add	w0,w1,w0
	.loc 1 455 0
	sl	w0,#2,w0
	mov	#_usb_bdt,w1
	add	w1,w0,w0
	mov.b	[w0+1],w1
	bclr.b	w1,#2
	mov.b	w1,[w0+1]
	mov.b	[w0+1],w0
	cp0.b	w0
	.set ___BP___,39
	bra	z,.L41
	.loc 1 456 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	mov.b	#1,w1
	mov.b	w1,[w0]
.L41:
	.loc 1 460 0
	mov	#2,w0
	call	_usb_ack_dat1
	.loc 1 461 0
	bra	.L36
.L39:
	.loc 1 469 0
	add	w1,#4,w1
	mov.b	[w1],w2
	and.b	w2,#15,w0
	.loc 1 471 0
	ze	w0,w0
	add	w0,w0,w0
	mov	#_U1EP0,w2
	add	w0,w2,w2
	.loc 1 472 0
	bclr	[w2],#1
	.loc 1 474 0
	ze	[w1],w1
	lsr	w1,#7,w1
	.loc 1 475 0
	ze	w1,w2
	add	w0,w2,w0
	.loc 1 476 0
	sl	w0,#2,w2
	mov	#_usb_bdt,w3
	add	w3,w2,w2
	mov.b	[w2+1],w3
	bclr.b	w3,#2
	mov.b	w3,[w2+1]
	.loc 1 477 0
	cp0.b	w1
	.set ___BP___,50
	bra	z,.L43
	mov	w2,w0
	mov.b	[w0+1],w1
	bset.b	w1,#6
	mov.b	w1,[w0+1]
	bra	.L44
.L43:
	.loc 1 478 0
	sl	w0,#2,w0
	mov	#_usb_bdt,w1
	add	w1,w0,w0
	mov.b	[w0+1],w1
	bclr.b	w1,#6
	mov.b	w1,[w0+1]
.L44:
	.loc 1 490 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 491 0
	bra	.L36
.L46:
	.loc 1 495 0
	mov.b	[w1+4],w1
	.loc 1 497 0
	and	w1,#15,w0
	add	w0,w0,w0
	.loc 1 496 0
	ze	w1,w1
	.loc 1 497 0
	lsr	w1,#7,w1
	add	w0,w1,w0
	.loc 1 498 0
	sl	w0,#2,w0
	mov	#_usb_bdt,w1
	add	w1,w0,w0
	mov.b	[w0+1],w1
	bset.b	w1,#2
	mov.b	w1,[w0+1]
	.loc 1 501 0
	clr	w0
	call	_usb_ack_dat1
	.loc 1 502 0
	bra	.L36
.L45:
	.loc 1 505 0
	call	_usb_RequestError
.L36:
	.loc 1 507 0
	return	
	.set ___PA___,0
.LFE10:
	.size	_usb_handle_StandardEndpointRequest, .-_usb_handle_StandardEndpointRequest
	.align	2
	.global	_usb_handle_StandardInterfaceRequest	; export
	.type	_usb_handle_StandardInterfaceRequest,@function
_usb_handle_StandardInterfaceRequest:
.LFB9:
	.loc 1 408 0
	.set ___PA___,1
	.loc 1 409 0
	mov	[w0+2],w1
	.loc 1 411 0
	mov.b	[w1+1],w0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L49
	sub.b	w0,#10,[w15]
	.set ___BP___,29
	bra	z,.L50
	sub.b	w0,#11,[w15]
	.set ___BP___,71
	bra	nz,.L55
	bra	.L56
.L49:
	.loc 1 413 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w1
	clr.b	w0
	mov.b	w0,[w1]
	.loc 1 414 0
	mov	_EP0_Inbdp,w1
	mov	[w1+2],w1
	mov.b	w0,[w1+1]
	.loc 1 415 0
	mov	#2,w0
	call	_usb_ack_dat1
	.loc 1 416 0
	bra	.L47
.L50:
	.loc 1 418 0
	mov.b	[w1+4],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L53
	.loc 1 420 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	clr.b	[w0]
	.loc 1 421 0
	mov	#1,w0
	call	_usb_ack_dat1
	bra	.L47
.L53:
	.loc 1 423 0
	call	_usb_RequestError
	bra	.L47
.L56:
	.loc 1 426 0
	mov.b	[w1+4],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,41
	bra	gtu,.L54
	mov.b	[w1+2],w0
	cp0.b	w0
	.set ___BP___,71
	bra	nz,.L54
	.loc 1 428 0
	clr	w0
	call	_usb_ack_dat1
	bra	.L47
.L54:
	.loc 1 430 0
	call	_usb_RequestError
	bra	.L47
.L55:
	.loc 1 435 0
	call	_usb_RequestError
.L47:
	.loc 1 437 0
	return	
	.set ___PA___,0
.LFE9:
	.size	_usb_handle_StandardInterfaceRequest, .-_usb_handle_StandardInterfaceRequest
	.align	2
	.global	_usb_handle_StandardDeviceRequest	; export
	.type	_usb_handle_StandardDeviceRequest,@function
_usb_handle_StandardDeviceRequest:
.LFB8:
	.loc 1 287 0
	.set ___PA___,1
	.loc 1 288 0
	mov	[w0+2],w1
	.loc 1 291 0
	mov.b	[w1+1],w0
	sub.b	w0,#5,[w15]
	.set ___BP___,29
	bra	z,.L62
	.set ___BP___,50
	bra	gtu,.L66
	sub.b	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L60
	.set ___BP___,50
	bra	ltu,.L59
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L58
	bra	.L90
.L66:
	sub.b	w0,#8,[w15]
	.set ___BP___,29
	bra	z,.L64
	sub.b	w0,#9,[w15]
	.set ___BP___,29
	bra	z,.L65
	sub.b	w0,#6,[w15]
	.set ___BP___,71
	bra	nz,.L58
	bra	.L91
.L59:
	.loc 1 293 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	mov	_usb_device_status,w1
	mov.b	w1,[w0]
	.loc 1 294 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	mov	_usb_device_status,w1
	lsr	w1,#8,w1
	mov.b	w1,[w0+1]
	.loc 1 295 0
	mov	#2,w0
	call	_usb_ack_dat1
	.loc 1 296 0
	bra	.L57
.L60:
	.loc 1 298 0
	mov.b	[w1+2],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,72
	bra	nz,.L68
	.loc 1 299 0
	mov	_usb_device_status,w0
	bclr	w0,#1
	mov	w0,_usb_device_status
	.loc 1 300 0
	clr	w0
	call	_usb_ack_dat1
	bra	.L57
.L68:
	.loc 1 302 0
	call	_usb_RequestError
	bra	.L57
.L90:
	.loc 1 305 0
	mov.b	[w1+2],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,72
	bra	nz,.L69
	.loc 1 306 0
	mov	_usb_device_status,w0
	bset	w0,#1
	mov	w0,_usb_device_status
	.loc 1 307 0
	clr	w0
	call	_usb_ack_dat1
	bra	.L57
.L69:
	.loc 1 309 0
	call	_usb_RequestError
	bra	.L57
.L62:
	.loc 1 312 0
	mov.b	[w1+3],w0
	cp0.b	w0
	.set ___BP___,20
	bra	nz,.L70
	mov.b	[w1+2],w0
	cp0.b	w0
	.set ___BP___,47
	bra	lt,.L70
	.loc 1 313 0
	mov	#_usb_addr_pending,w1
	mov.b	w0,[w1]
	.loc 1 314 0
	mov	#handle(_usb_set_address),w1
	clr	w0
	call	_usb_set_in_handler
	.loc 1 315 0
	clr	w0
	call	_usb_ack_dat1
	bra	.L57
.L70:
	.loc 1 317 0
	call	_usb_RequestError
	bra	.L57
.L91:
	.loc 1 322 0
	mov.b	[w1+3],w0
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L73
	sub.b	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L74
	sub.b	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L89
	.loc 1 324 0
	mov	_usb_device_descriptor,w0
	mov	w0,_usb_rom_ptr
	.loc 1 325 0
	ze	[w0],w2
	mov	w2,_usb_rom_len
	.loc 1 326 0
	mov.b	[w1+7],w2
	cp0.b	w2
	.set ___BP___,50
	bra	nz,.L75
	mov.b	[w1+6],w1
	sub.b	w1,[w0],[w15]
	.set ___BP___,50
	bra	geu,.L75
	.loc 1 327 0
	ze	w1,w1
	mov	w1,_usb_rom_len
	bra	.L75
.L73:
	.loc 1 331 0
	inc2	w1,w4
	mov	_usb_device_descriptor,w0
	mov.b	[w0+17],w0
	subr.b	w0,[w4],[w15]
	.set ___BP___,50
	bra	ltu,.L76
	.loc 1 332 0
	mov.b	#1,w1
	mov	#_usbrequesterrorflag,w0
	mov.b	w1,[w0]
	.loc 1 333 0
	bra	.L75
.L76:
	.loc 1 336 0
	mov	_usb_config_descriptor,w0
	mov	w0,_usb_rom_ptr
	.loc 1 337 0
	mov.b	[w0+3],w2
	sl	w2,#8,w2
	mov.b	[w0+2],w0
	ze	w0,w0
	add	w2,w0,w0
	mov	w0,_usb_rom_len
	.loc 1 338 0
	cp0.b	[w4]
	.set ___BP___,9
	bra	z,.L77
	clr	w2
.L78:
	.loc 1 339 0
	mov	_usb_rom_len,w0
	mov	_usb_rom_ptr,w3
	add	w3,w0,w0
	mov	w0,_usb_rom_ptr
	.loc 1 340 0
	mov.b	[w0+3],w3
	sl	w3,#8,w3
	mov.b	[w0+2],w0
	ze	w0,w0
	add	w3,w0,w0
	mov	w0,_usb_rom_len
	.loc 1 338 0
	inc	w2,w2
	ze	[w4],w0
	sub	w0,w2,[w15]
	.set ___BP___,91
	bra	gt,.L78
.L77:
	.loc 1 342 0
	mov.b	[w1+7],w0
	mov	_usb_rom_ptr,w3
	mov.b	[w3+3],w2
	sub.b	w0,w2,[w15]
	.set ___BP___,50
	bra	ltu,.L79
	.set ___BP___,72
	bra	nz,.L75
	.loc 1 343 0
	mov.b	[w1+6],w4
	mov.b	[w3+2],w2
	sub.b	w4,w2,[w15]
	.set ___BP___,50
	bra	geu,.L75
.L79:
	.loc 1 344 0
	sl	w0,#8,w0
	mov.b	[w1+6],w1
	ze	w1,w1
	add	w0,w1,w0
	mov	w0,_usb_rom_len
	bra	.L75
.L74:
	.loc 1 348 0
	inc2	w1,w4
	ze	[w4],w2
	mov	_usb_num_string_descriptors,w0
	sub	w2,w0,[w15]
	.set ___BP___,50
	bra	lt,.L80
	.loc 1 349 0
	mov.b	#1,w1
	mov	#_usbrequesterrorflag,w0
	mov.b	w1,[w0]
	.loc 1 350 0
	bra	.L75
.L80:
	.loc 1 352 0
	mov	_usb_string_descriptor,w0
	mov	w0,_usb_rom_ptr
	.loc 1 353 0
	ze	[w0],w0
	mov	w0,_usb_rom_len
	.loc 1 354 0
	cp0.b	[w4]
	.set ___BP___,9
	bra	z,.L81
	clr	w0
.L82:
	.loc 1 355 0
	mov	_usb_rom_len,w2
	mov	_usb_rom_ptr,w3
	add	w3,w2,w2
	mov	w2,_usb_rom_ptr
	.loc 1 356 0
	ze	[w2],w2
	mov	w2,_usb_rom_len
	.loc 1 354 0
	inc	w0,w0
	ze	[w4],w2
	sub	w2,w0,[w15]
	.set ___BP___,91
	bra	gt,.L82
.L81:
	.loc 1 358 0
	mov.b	[w1+7],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L75
	mov.b	[w1+6],w0
	mov	_usb_rom_ptr,w1
	sub.b	w0,[w1],[w15]
	.set ___BP___,50
	bra	geu,.L75
	.loc 1 359 0
	ze	w0,w0
	mov	w0,_usb_rom_len
	bra	.L75
.L89:
	.loc 1 364 0
	mov.b	#1,w1
	mov	#_usbrequesterrorflag,w0
	mov.b	w1,[w0]
.L75:
	.loc 1 366 0
	mov	#_usbrequesterrorflag,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L83
	.loc 1 367 0
	call	_usb_send_rom
	.loc 1 368 0
	mov	#handle(_usb_send_rom),w1
	clr	w0
	call	_usb_set_in_handler
	bra	.L57
.L83:
	.loc 1 370 0
	call	_usb_RequestError
	bra	.L57
.L64:
	.loc 1 375 0
	mov	_EP0_Inbdp,w0
	mov	[w0+2],w0
	mov	_usb_current_cfg,w1
	mov.b	w1,[w0]
	.loc 1 376 0
	mov	#1,w0
	call	_usb_ack_dat1
	.loc 1 377 0
	bra	.L57
.L65:
	.loc 1 380 0
	mov.b	[w1+2],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,41
	bra	gtu,.L84
	.loc 1 383 0
	ze	w0,w0
	mov	w0,_usb_current_cfg
	.loc 1 384 0
	.set ___BP___,71
	bra	z,.L85
	.loc 1 390 0
	mov.b	#32,w1
	mov	#_usb_device_state,w0
	mov.b	w1,[w0]
	.loc 1 391 0
	call	_user_configured_init
	bra	.L86
.L85:
	.loc 1 393 0
	mov.b	#16,w1
	mov	#_usb_device_state,w0
	mov.b	w1,[w0]
.L86:
	.loc 1 396 0
	clr	w0
	call	_usb_ack_dat1
	bra	.L57
.L84:
	.loc 1 399 0
	call	_usb_RequestError
	bra	.L57
.L58:
	.loc 1 404 0
	call	_usb_RequestError
.L57:
	.loc 1 406 0
	return	
	.set ___PA___,0
.LFE8:
	.size	_usb_handle_StandardDeviceRequest, .-_usb_handle_StandardDeviceRequest
	.align	2
	.global	_usb_handle_setup	; export
	.type	_usb_handle_setup,@function
_usb_handle_setup:
.LFB7:
	.loc 1 240 0
	.set ___PA___,1
	.loc 1 242 0
	mov.b	#8,w1
	mov	_EP0_Inbdp,w0
	mov.b	w1,[w0+1]
	.loc 1 244 0
	bclr.b	_U1CONbits,#5
	.loc 1 246 0
	mov	_EP0_Outbdp,w0
	mov	[w0+2],w1
	ze	[w1],w2
	mov	w2,w1
	and	#96,w1
	mov	#32,w3
	sub	w1,w3,[w15]
	.set ___BP___,29
	bra	z,.L95
	mov	#64,w3
	sub	w1,w3,[w15]
	.set ___BP___,29
	bra	z,.L96
	cp0	w1
	.set ___BP___,50
	bra	nz,.L106
	.loc 1 248 0
	and	w2,#3,w2
	sub	w2,#1,[w15]
	.set ___BP___,29
	bra	z,.L99
	sub	w2,#2,[w15]
	.set ___BP___,29
	bra	z,.L100
	cp0	w2
	.set ___BP___,50
	bra	nz,.L107
	.loc 1 250 0
	call	_usb_handle_StandardDeviceRequest
	.loc 1 251 0
	bra	.L101
.L99:
	.loc 1 253 0
	call	_usb_handle_StandardInterfaceRequest
	.loc 1 254 0
	bra	.L101
.L100:
	.loc 1 256 0
	call	_usb_handle_StandardEndpointRequest
	.loc 1 257 0
	bra	.L101
.L107:
	.loc 1 259 0
	call	_usb_RequestError
	bra	.L101
.L95:
	.loc 1 263 0
	mov	_class_setup_handler,w0
	cp0	w0
	.set ___BP___,30
	bra	z,.L101
	call	w0
	bra	.L101
.L96:
	.loc 1 268 0
	mov	_vendor_setup_handler,w0
	cp0	w0
	.set ___BP___,30
	bra	z,.L101
	call	w0
	bra	.L101
.L106:
	.loc 1 271 0
	call	_usb_RequestError
.L101:
	.loc 1 275 0
	mov.b	#8,w1
	mov	_EP0_Outbdp,w0
	mov.b	w1,[w0]
	.loc 1 283 0
	mov	_EP0_Outbdp,w2
	mov	[w2+2],w1
	mov.b	#-120,w0
	cp0.b	[w1]
	.set ___BP___,19
	bra	lt,.L102
	mov.b	[w1+6],w3
	mov.b	#-56,w0
	cp0.b	w3
	.set ___BP___,39
	bra	nz,.L102
	.loc 1 284 0
	mov.b	[w1+7],w1
	cp0.b	w1
	.set ___BP___,61
	bra	nz,.L102
	.loc 1 283 0
	mov.b	#-120,w0
.L102:
	mov.b	w0,[w2+1]
	.loc 1 285 0
	return	
	.set ___PA___,0
.LFE7:
	.size	_usb_handle_setup, .-_usb_handle_setup
	.align	2
	.global	_usb_handle_transaction	; export
	.type	_usb_handle_transaction,@function
_usb_handle_transaction:
.LFB6:
	.loc 1 217 0
	.set ___PA___,1
	.loc 1 219 0
	mov	#_usbrequesterrorflag,w0
	clr.b	[w0]
	.loc 1 221 0
	mov	_U1STAT,w0
	mov.b	w0,w2
	mov	#_trn_status,w1
	mov.b	w0,[w1]
	.loc 1 222 0
	lsr	w2,w0
	and	#124,w0
	mov	#_usb_bdt,w1
	add	w0,w1,w0
	mov	w0,_EP0_Outbdp
	.loc 1 223 0
	bset.b	w2,#3
	lsr	w2,w2
	and	#124,w2
	add	w2,w1,w1
	mov	w1,_EP0_Inbdp
	.loc 1 225 0
	mov.b	[w0+1],w0
	and	#60,w0
	mov	#36,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L111
	add	w1,#16,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L112
	sub	w0,#4,[w15]
	.set ___BP___,71
	bra	nz,.L108
	bra	.L113
.L112:
	.loc 1 227 0
	call	_usb_handle_setup
	.loc 1 228 0
	bra	.L108
.L113:
	.loc 1 230 0
	call	_usb_handle_out
	.loc 1 231 0
	bra	.L108
.L111:
	.loc 1 233 0
	call	_usb_handle_in
.L108:
	.loc 1 238 0
	return	
	.set ___PA___,0
.LFE6:
	.size	_usb_handle_transaction, .-_usb_handle_transaction
	.align	2
	.global	_usb_handler	; export
	.type	_usb_handler,@function
_usb_handler:
.LFB5:
	.loc 1 184 0
	.set ___PA___,1
	.loc 1 186 0
	btst.b	_U1IRbits,#4
	.set ___BP___,71
	bra	z,.L115
	.loc 1 188 0
	call	_usb_suspend
	.loc 1 189 0
	mov	#16,w0
	mov	w0,_U1IR
.L115:
	.loc 1 192 0
	btst.b	_U1IRbits,#0
	.set ___BP___,71
	bra	z,.L116
	.loc 1 193 0
	call	_usb_handle_reset
	.loc 1 194 0
	mov	#1,w0
	mov	w0,_U1IR
.L116:
	.loc 1 196 0
	btst.b	_U1IRbits,#1
	.set ___BP___,50
	bra	z,.L117
	.loc 1 198 0
	mov	#255,w0
	mov	w0,_U1EIR
	.loc 1 199 0
	mov	#2,w0
	mov	w0,_U1IR
.L117:
	.loc 1 201 0
	btst.b	_U1IRbits,#7
	.set ___BP___,50
	bra	z,.L118
	.loc 1 202 0
	mov	#128,w0
	mov	w0,_U1IR
.L118:
	.loc 1 204 0
	btst.b	_U1IRbits,#2
	.set ___BP___,50
	bra	z,.L119
	.loc 1 206 0
	mov	_sof_handler,w0
	cp0	w0
	.set ___BP___,30
	bra	z,.L120
	call	w0
.L120:
	.loc 1 207 0
	mov	#4,w0
	mov	w0,_U1IR
.L119:
	.loc 1 210 0
	btst.b	_U1IRbits,#3
	.set ___BP___,39
	bra	z,.L114
	.loc 1 211 0
	mov	_U1STAT,w0
	lsr	w0,#4,w0
	and	w0,#15,w0
	.set ___BP___,71
	bra	nz,.L122
	.loc 1 212 0
	call	_usb_handle_transaction
.L122:
	.loc 1 213 0
	mov	#8,w0
	mov	w0,_U1IR
.L114:
	.loc 1 215 0
	return	
	.set ___PA___,0
.LFE5:
	.size	_usb_handler, .-_usb_handler
	.global	_IsSuspended	; export
	.section	.bss,bss
	.type	_IsSuspended,@object
	.size	_IsSuspended, 1
_IsSuspended:
	.skip	1
	.global	_usb_bdt	; export
	.section	usb_bdt,bss
	.align	512
	.type	_usb_bdt,@object
	.size	_usb_bdt, 24
_usb_bdt:
	.skip	24
	.section	.bss,bss
	.type	_trn_status,@object
	.global	_trn_status
_trn_status:	.space	1
	.type	_EP0_Outbdp,@object
	.global	_EP0_Outbdp
	.align	2
_EP0_Outbdp:	.space	2
	.type	_EP0_Inbdp,@object
	.global	_EP0_Inbdp
	.align	2
_EP0_Inbdp:	.space	2
	.type	_usb_device_descriptor,@object
	.global	_usb_device_descriptor
	.align	2
_usb_device_descriptor:	.space	2
	.type	_usb_config_descriptor,@object
	.global	_usb_config_descriptor
	.align	2
_usb_config_descriptor:	.space	2
	.type	_usb_string_descriptor,@object
	.global	_usb_string_descriptor
	.align	2
_usb_string_descriptor:	.space	2
	.type	_usb_num_string_descriptors,@object
	.global	_usb_num_string_descriptors
	.align	2
_usb_num_string_descriptors:	.space	2
	.type	_sof_handler,@object
	.global	_sof_handler
	.align	2
_sof_handler:	.space	2
	.type	_class_setup_handler,@object
	.global	_class_setup_handler
	.align	2
_class_setup_handler:	.space	2
	.type	_vendor_setup_handler,@object
	.global	_vendor_setup_handler
	.align	2
_vendor_setup_handler:	.space	2
	.type	_endpoints,@object
	.global	_endpoints
	.align	2
_endpoints:	.space	64
	.global	_usb_ep0_out_buf	; export
	.section	usb_bdt,bss
	.type	_usb_ep0_out_buf,@object
	.size	_usb_ep0_out_buf, 8
_usb_ep0_out_buf:
	.skip	8
	.global	_usb_ep0_in_buf	; export
	.type	_usb_ep0_in_buf,@object
	.size	_usb_ep0_in_buf, 8
_usb_ep0_in_buf:
	.skip	8
	.section	.bss,bss
	.type	_usb_device_status,@object
	.global	_usb_device_status
	.align	2
_usb_device_status:	.space	2
	.type	_usb_current_cfg,@object
	.global	_usb_current_cfg
	.align	2
_usb_current_cfg:	.space	2
	.type	_usb_device_state,@object
	.global	_usb_device_state
_usb_device_state:	.space	1
	.type	_usb_addr_pending,@object
	.global	_usb_addr_pending
_usb_addr_pending:	.space	1
	.type	_usb_rom_ptr,@object
	.global	_usb_rom_ptr
	.align	2
_usb_rom_ptr:	.space	2
	.type	_usb_rom_len,@object
	.global	_usb_rom_len
	.align	2
_usb_rom_len:	.space	2
	.type	_usbrequesterrorflag,@object
	.global	_usbrequesterrorflag
_usbrequesterrorflag:	.space	1
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE42:
	.section	.text,code
.Letext0:
	.file 2 "../dp_usb/../dp_usb/usb_stack_globals.h"
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 4 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 5 "../dp_usb/../dp_usb/../dp_usb/picusb.h"
	.file 6 "../dp_usb/../dp_usb/usb_stack.h"
	.file 7 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.section	.debug_info,info
	.4byte	0xf57
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../dp_usb/usb_stack.c"
	.asciz	"C:\\\\Users\\\\avish\\\\Workspace\\\\Firmware\\\\busPirate.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.asciz	"BYTE"
	.byte	0x2
	.byte	0x6
	.4byte	0xae
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
	.4byte	0x102
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
	.byte	0x2
	.byte	0x4
	.2byte	0xfc3
	.4byte	0x1a3
	.uleb128 0x5
	.asciz	"USBPWR"
	.byte	0x4
	.2byte	0xfc4
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"USUSPEND"
	.byte	0x4
	.2byte	0xfc5
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"USLPGRD"
	.byte	0x4
	.2byte	0xfc7
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UACTPND"
	.byte	0x4
	.2byte	0xfc9
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0xfcb
	.4byte	0x1c3
	.uleb128 0x5
	.asciz	"USUSPND"
	.byte	0x4
	.2byte	0xfcd
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0xfc2
	.4byte	0x1d7
	.uleb128 0x7
	.4byte	0x141
	.uleb128 0x7
	.4byte	0x1a3
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1PWRCBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xfc1
	.4byte	0x1f7
	.uleb128 0x9
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1PWRCBITS"
	.byte	0x4
	.2byte	0xfd0
	.4byte	0x1d7
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0xfd7
	.4byte	0x2bf
	.uleb128 0x5
	.asciz	"URSTIF"
	.byte	0x4
	.2byte	0xfd8
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UERRIF"
	.byte	0x4
	.2byte	0xfd9
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SOFIF"
	.byte	0x4
	.2byte	0xfda
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRNIF"
	.byte	0x4
	.2byte	0xfdb
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IDLEIF"
	.byte	0x4
	.2byte	0xfdc
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RESUMEIF"
	.byte	0x4
	.2byte	0xfdd
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ATTACHIF"
	.byte	0x4
	.2byte	0xfde
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"STALLIF"
	.byte	0x4
	.2byte	0xfdf
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0xfe1
	.4byte	0x2e0
	.uleb128 0x5
	.asciz	"DETACHIF"
	.byte	0x4
	.2byte	0xfe2
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0xfd6
	.4byte	0x2f4
	.uleb128 0x7
	.4byte	0x20a
	.uleb128 0x7
	.4byte	0x2bf
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1IRBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xfd5
	.4byte	0x312
	.uleb128 0x9
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1IRBITS"
	.byte	0x4
	.2byte	0xfe5
	.4byte	0x2f4
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x1042
	.4byte	0x3d0
	.uleb128 0x5
	.asciz	"USBEN"
	.byte	0x4
	.2byte	0x1043
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PPBRST"
	.byte	0x4
	.2byte	0x1044
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RESUME"
	.byte	0x4
	.2byte	0x1045
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"HOSTEN"
	.byte	0x4
	.2byte	0x1046
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RESET"
	.byte	0x4
	.2byte	0x1047
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PKTDIS"
	.byte	0x4
	.2byte	0x1048
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SE0"
	.byte	0x4
	.2byte	0x1049
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"JSTATE"
	.byte	0x4
	.2byte	0x104a
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x104c
	.4byte	0x419
	.uleb128 0x5
	.asciz	"SOFEN"
	.byte	0x4
	.2byte	0x104d
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"USBRST"
	.byte	0x4
	.2byte	0x104f
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TOKBUSY"
	.byte	0x4
	.2byte	0x1050
	.4byte	0xf2
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0x1041
	.4byte	0x42d
	.uleb128 0x7
	.4byte	0x323
	.uleb128 0x7
	.4byte	0x3d0
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1CONBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1040
	.4byte	0x44c
	.uleb128 0x9
	.4byte	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1CONBITS"
	.byte	0x4
	.2byte	0x1053
	.4byte	0x42d
	.uleb128 0xa
	.asciz	"usb_uep_t"
	.byte	0x5
	.2byte	0x157
	.4byte	0x102
	.uleb128 0x8
	.asciz	"BDENTRY"
	.byte	0x4
	.byte	0x5
	.2byte	0x209
	.4byte	0x4b7
	.uleb128 0xb
	.asciz	"BDCNT"
	.byte	0x5
	.2byte	0x20a
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.asciz	"BDSTAT"
	.byte	0x5
	.2byte	0x20c
	.4byte	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.asciz	"BDADDR"
	.byte	0x5
	.2byte	0x20d
	.4byte	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	0xae
	.uleb128 0xd
	.byte	0x2
	.4byte	0xae
	.uleb128 0xa
	.asciz	"BDentry"
	.byte	0x5
	.2byte	0x20e
	.4byte	0x470
	.uleb128 0xe
	.byte	0x2
	.byte	0x6
	.byte	0x5a
	.4byte	0x554
	.uleb128 0xf
	.asciz	"DETACHED_STATE"
	.sleb128 0
	.uleb128 0xf
	.asciz	"ATTACHED_STATE"
	.sleb128 1
	.uleb128 0xf
	.asciz	"POWERED_STATE"
	.sleb128 2
	.uleb128 0xf
	.asciz	"DEFAULT_STATE"
	.sleb128 4
	.uleb128 0xf
	.asciz	"ADR_PENDING_STATE"
	.sleb128 8
	.uleb128 0xf
	.asciz	"ADDRESS_STATE"
	.sleb128 16
	.uleb128 0xf
	.asciz	"CONFIGURED_STATE"
	.sleb128 32
	.byte	0x0
	.uleb128 0x2
	.asciz	"usb_handler_t"
	.byte	0x6
	.byte	0x67
	.4byte	0x569
	.uleb128 0xd
	.byte	0x2
	.4byte	0x56f
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x11
	.asciz	"USB_EP_TYPE"
	.byte	0x4
	.byte	0x6
	.byte	0x69
	.4byte	0x5a2
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x6
	.byte	0x6d
	.4byte	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x6
	.byte	0x6d
	.4byte	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x2
	.asciz	"usb_ep_t"
	.byte	0x6
	.byte	0x6e
	.4byte	0x571
	.uleb128 0x2
	.asciz	"size_t"
	.byte	0x7
	.byte	0x5
	.4byte	0x102
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_start"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_handle_error"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.byte	0x1
	.asciz	"ClearUSBtoDefault"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x640
	.uleb128 0x15
	.asciz	"i"
	.byte	0x1
	.byte	0x86
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_handle_reset"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"usb_handle_in"
	.byte	0x1
	.2byte	0x1fd
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"usb_handle_out"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_register_sof_handler"
	.byte	0x1
	.2byte	0x209
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5f
	.4byte	0x6d9
	.uleb128 0x18
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x209
	.4byte	0x554
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_register_class_setup_handler"
	.byte	0x1
	.2byte	0x20d
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5f
	.4byte	0x71d
	.uleb128 0x18
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x20d
	.4byte	0x554
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_register_vendor_setup_handler"
	.byte	0x1
	.2byte	0x211
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x5f
	.4byte	0x762
	.uleb128 0x18
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x211
	.4byte	0x554
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_set_in_handler"
	.byte	0x1
	.2byte	0x215
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x5f
	.4byte	0x7a5
	.uleb128 0x19
	.asciz	"ep"
	.byte	0x1
	.2byte	0x215
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x215
	.4byte	0x554
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_send_rom"
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x5f
	.4byte	0x7e8
	.uleb128 0x1a
	.asciz	"i"
	.byte	0x1
	.2byte	0x243
	.4byte	0x102
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.asciz	"packet_len"
	.byte	0x1
	.2byte	0x244
	.4byte	0x5b2
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"usb_set_address"
	.byte	0x1
	.2byte	0x236
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_set_out_handler"
	.byte	0x1
	.2byte	0x219
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x5f
	.4byte	0x84c
	.uleb128 0x19
	.asciz	"ep"
	.byte	0x1
	.2byte	0x219
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x219
	.4byte	0x554
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"usb_init"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x8da
	.uleb128 0x1b
	.asciz	"device_descriptor"
	.byte	0x1
	.byte	0x5a
	.4byte	0x8da
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.asciz	"config_descriptor"
	.byte	0x1
	.byte	0x5b
	.4byte	0x8da
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.asciz	"string_descriptor"
	.byte	0x1
	.byte	0x5c
	.4byte	0x8da
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.asciz	"num_string_descriptors"
	.byte	0x1
	.byte	0x5d
	.4byte	0xce
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0xd
	.byte	0x2
	.4byte	0x8e0
	.uleb128 0x1c
	.4byte	0xa2
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_ack_dat1"
	.byte	0x1
	.2byte	0x223
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x5f
	.4byte	0x917
	.uleb128 0x19
	.asciz	"bdcnt"
	.byte	0x1
	.2byte	0x223
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"usb_RequestError"
	.byte	0x1
	.2byte	0x228
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_handle_StandardEndpointRequest"
	.byte	0x1
	.2byte	0x1b7
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5f
	.4byte	0x9c2
	.uleb128 0x19
	.asciz	"bdp"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x9c2
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x9c8
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.asciz	"epnum"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xa2
	.uleb128 0x1e
	.asciz	"dir"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xa2
	.uleb128 0x1e
	.asciz	"epbd"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x9c2
	.uleb128 0x1a
	.asciz	"pUEP"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x9ce
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0xd
	.byte	0x2
	.4byte	0x4c2
	.uleb128 0xd
	.byte	0x2
	.4byte	0xa2
	.uleb128 0xd
	.byte	0x2
	.4byte	0x45e
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_handle_StandardInterfaceRequest"
	.byte	0x1
	.2byte	0x198
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.4byte	0xa29
	.uleb128 0x19
	.asciz	"bdp"
	.byte	0x1
	.2byte	0x198
	.4byte	0x9c2
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x199
	.4byte	0x9c8
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"usb_handle_StandardDeviceRequest"
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.4byte	0xa85
	.uleb128 0x19
	.asciz	"bdp"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x9c2
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x120
	.4byte	0x9c8
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.asciz	"i"
	.byte	0x1
	.2byte	0x121
	.4byte	0xce
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_handle_setup"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_handle_transaction"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.byte	0x1
	.asciz	"usb_handler"
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xfb2
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xf2
	.uleb128 0x1f
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xfd1
	.4byte	0xb07
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x1f7
	.uleb128 0x20
	.asciz	"U1IR"
	.byte	0x4
	.2byte	0xfd4
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xfe6
	.4byte	0xb29
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x312
	.uleb128 0x20
	.asciz	"U1EIR"
	.byte	0x4
	.2byte	0xffe
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1STAT"
	.byte	0x4
	.2byte	0x102a
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x1054
	.4byte	0xb5d
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x44c
	.uleb128 0x20
	.asciz	"U1ADDR"
	.byte	0x4
	.2byte	0x1057
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1BDTP1"
	.byte	0x4
	.2byte	0x1076
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1CNFG1"
	.byte	0x4
	.2byte	0x10b7
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1CNFG2"
	.byte	0x4
	.2byte	0x10cb
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1EP0"
	.byte	0x4
	.2byte	0x10d5
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	0x4c2
	.4byte	0xbc9
	.uleb128 0x22
	.4byte	0x102
	.byte	0x5
	.byte	0x0
	.uleb128 0x23
	.asciz	"usb_bdt"
	.byte	0x6
	.byte	0x7c
	.4byte	0xbb9
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF8
	.byte	0x6
	.byte	0x86
	.4byte	0xa2
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF9
	.byte	0x6
	.byte	0x87
	.4byte	0x9c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF10
	.byte	0x6
	.byte	0x87
	.4byte	0x9c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1e
	.4byte	0x8da
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1f
	.4byte	0x8da
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF13
	.byte	0x1
	.byte	0x20
	.4byte	0x8da
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF15
	.byte	0x1
	.byte	0x23
	.4byte	0x554
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.4byte	0x554
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF17
	.byte	0x1
	.byte	0x24
	.4byte	0x554
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	0x5a2
	.4byte	0xc6c
	.uleb128 0x22
	.4byte	0x102
	.byte	0xf
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF18
	.byte	0x1
	.byte	0x27
	.4byte	0xc5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	0xa2
	.4byte	0xc89
	.uleb128 0x22
	.4byte	0x102
	.byte	0x7
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF19
	.byte	0x1
	.byte	0x47
	.4byte	0xc79
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.4byte	0xc79
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4f
	.4byte	0x102
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF22
	.byte	0x1
	.byte	0x50
	.4byte	0x102
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0xcca
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xa2
	.uleb128 0x24
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.4byte	0xa2
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0x8da
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF26
	.byte	0x1
	.byte	0x57
	.4byte	0x5b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF27
	.byte	0x1
	.byte	0x58
	.4byte	0xcca
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xfb2
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xfd1
	.4byte	0xb07
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1IR"
	.byte	0x4
	.2byte	0xfd4
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xfe6
	.4byte	0xb29
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1EIR"
	.byte	0x4
	.2byte	0xffe
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1STAT"
	.byte	0x4
	.2byte	0x102a
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x1054
	.4byte	0xb5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1ADDR"
	.byte	0x4
	.2byte	0x1057
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1BDTP1"
	.byte	0x4
	.2byte	0x1076
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1CNFG1"
	.byte	0x4
	.2byte	0x10b7
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1CNFG2"
	.byte	0x4
	.2byte	0x10cb
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1EP0"
	.byte	0x4
	.2byte	0x10d5
	.4byte	0xaf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.asciz	"usb_bdt"
	.byte	0x1
	.byte	0x45
	.4byte	0xbb9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_bdt
	.uleb128 0x26
	.4byte	.LASF8
	.byte	0x1
	.byte	0x53
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_trn_status
	.uleb128 0x26
	.4byte	.LASF9
	.byte	0x1
	.byte	0x54
	.4byte	0x9c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_EP0_Outbdp
	.uleb128 0x26
	.4byte	.LASF10
	.byte	0x1
	.byte	0x54
	.4byte	0x9c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_EP0_Inbdp
	.uleb128 0x26
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1e
	.4byte	0x8da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_device_descriptor
	.uleb128 0x26
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1f
	.4byte	0x8da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_config_descriptor
	.uleb128 0x26
	.4byte	.LASF13
	.byte	0x1
	.byte	0x20
	.4byte	0x8da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_string_descriptor
	.uleb128 0x26
	.4byte	.LASF14
	.byte	0x1
	.byte	0x21
	.4byte	0xce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_num_string_descriptors
	.uleb128 0x26
	.4byte	.LASF15
	.byte	0x1
	.byte	0x23
	.4byte	0x554
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sof_handler
	.uleb128 0x26
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.4byte	0x554
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_class_setup_handler
	.uleb128 0x26
	.4byte	.LASF17
	.byte	0x1
	.byte	0x24
	.4byte	0x554
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vendor_setup_handler
	.uleb128 0x26
	.4byte	.LASF18
	.byte	0x1
	.byte	0x27
	.4byte	0xc5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_endpoints
	.uleb128 0x26
	.4byte	.LASF19
	.byte	0x1
	.byte	0x47
	.4byte	0xc79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_ep0_out_buf
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.4byte	0xc79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_ep0_in_buf
	.uleb128 0x26
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4f
	.4byte	0x102
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_device_status
	.uleb128 0x26
	.4byte	.LASF22
	.byte	0x1
	.byte	0x50
	.4byte	0x102
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_current_cfg
	.uleb128 0x26
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0xcca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_device_state
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_addr_pending
	.uleb128 0x25
	.asciz	"IsSuspended"
	.byte	0x1
	.byte	0x55
	.4byte	0xa2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_IsSuspended
	.uleb128 0x26
	.4byte	.LASF25
	.byte	0x1
	.byte	0x56
	.4byte	0x8da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_rom_ptr
	.uleb128 0x26
	.4byte	.LASF26
	.byte	0x1
	.byte	0x57
	.4byte	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usb_rom_len
	.uleb128 0x26
	.4byte	.LASF27
	.byte	0x1
	.byte	0x58
	.4byte	0xcca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_usbrequesterrorflag
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
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	0x3db
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf5b
	.4byte	0x5d6
	.asciz	"usb_start"
	.4byte	0x5ef
	.asciz	"usb_handle_error"
	.4byte	0x60f
	.asciz	"ClearUSBtoDefault"
	.4byte	0x640
	.asciz	"usb_handle_reset"
	.4byte	0x660
	.asciz	"usb_handle_in"
	.4byte	0x67e
	.asciz	"usb_handle_out"
	.4byte	0x69d
	.asciz	"usb_register_sof_handler"
	.4byte	0x6d9
	.asciz	"usb_register_class_setup_handler"
	.4byte	0x71d
	.asciz	"usb_register_vendor_setup_handler"
	.4byte	0x762
	.asciz	"usb_set_in_handler"
	.4byte	0x7a5
	.asciz	"usb_send_rom"
	.4byte	0x7e8
	.asciz	"usb_set_address"
	.4byte	0x808
	.asciz	"usb_set_out_handler"
	.4byte	0x84c
	.asciz	"usb_init"
	.4byte	0x8e5
	.asciz	"usb_ack_dat1"
	.4byte	0x917
	.asciz	"usb_RequestError"
	.4byte	0x938
	.asciz	"usb_handle_StandardEndpointRequest"
	.4byte	0x9d4
	.asciz	"usb_handle_StandardInterfaceRequest"
	.4byte	0xa29
	.asciz	"usb_handle_StandardDeviceRequest"
	.4byte	0xa85
	.asciz	"usb_handle_setup"
	.4byte	0xaa5
	.asciz	"usb_handle_transaction"
	.4byte	0xacb
	.asciz	"usb_handler"
	.4byte	0xdc2
	.asciz	"usb_bdt"
	.4byte	0xdd8
	.asciz	"trn_status"
	.4byte	0xdea
	.asciz	"EP0_Outbdp"
	.4byte	0xdfc
	.asciz	"EP0_Inbdp"
	.4byte	0xe0e
	.asciz	"usb_device_descriptor"
	.4byte	0xe20
	.asciz	"usb_config_descriptor"
	.4byte	0xe32
	.asciz	"usb_string_descriptor"
	.4byte	0xe44
	.asciz	"usb_num_string_descriptors"
	.4byte	0xe56
	.asciz	"sof_handler"
	.4byte	0xe68
	.asciz	"class_setup_handler"
	.4byte	0xe7a
	.asciz	"vendor_setup_handler"
	.4byte	0xe8c
	.asciz	"endpoints"
	.4byte	0xe9e
	.asciz	"usb_ep0_out_buf"
	.4byte	0xeb0
	.asciz	"usb_ep0_in_buf"
	.4byte	0xec2
	.asciz	"usb_device_status"
	.4byte	0xed4
	.asciz	"usb_current_cfg"
	.4byte	0xee6
	.asciz	"usb_device_state"
	.4byte	0xef8
	.asciz	"usb_addr_pending"
	.4byte	0xf0a
	.asciz	"IsSuspended"
	.4byte	0xf24
	.asciz	"usb_rom_ptr"
	.4byte	0xf36
	.asciz	"usb_rom_len"
	.4byte	0xf48
	.asciz	"usbrequesterrorflag"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xe1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf5b
	.4byte	0xa2
	.asciz	"BYTE"
	.4byte	0xf2
	.asciz	"uint16_t"
	.4byte	0x1d7
	.asciz	"tagU1PWRCBITS"
	.4byte	0x1f7
	.asciz	"U1PWRCBITS"
	.4byte	0x2f4
	.asciz	"tagU1IRBITS"
	.4byte	0x312
	.asciz	"U1IRBITS"
	.4byte	0x42d
	.asciz	"tagU1CONBITS"
	.4byte	0x44c
	.asciz	"U1CONBITS"
	.4byte	0x45e
	.asciz	"usb_uep_t"
	.4byte	0x470
	.asciz	"BDENTRY"
	.4byte	0x4c2
	.asciz	"BDentry"
	.4byte	0x554
	.asciz	"usb_handler_t"
	.4byte	0x571
	.asciz	"USB_EP_TYPE"
	.4byte	0x5a2
	.asciz	"usb_ep_t"
	.4byte	0x5b2
	.asciz	"size_t"
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
.LASF18:
	.asciz	"endpoints"
.LASF25:
	.asciz	"usb_rom_ptr"
.LASF22:
	.asciz	"usb_current_cfg"
.LASF8:
	.asciz	"trn_status"
.LASF20:
	.asciz	"usb_ep0_in_buf"
.LASF21:
	.asciz	"usb_device_status"
.LASF1:
	.asciz	"out_handler"
.LASF0:
	.asciz	"in_handler"
.LASF24:
	.asciz	"usb_addr_pending"
.LASF15:
	.asciz	"sof_handler"
.LASF16:
	.asciz	"class_setup_handler"
.LASF3:
	.asciz	"packet"
.LASF12:
	.asciz	"usb_config_descriptor"
.LASF2:
	.asciz	"handler"
.LASF26:
	.asciz	"usb_rom_len"
.LASF14:
	.asciz	"usb_num_string_descriptors"
.LASF7:
	.asciz	"U1CONbits"
.LASF13:
	.asciz	"usb_string_descriptor"
.LASF10:
	.asciz	"EP0_Inbdp"
.LASF27:
	.asciz	"usbrequesterrorflag"
.LASF6:
	.asciz	"U1IRbits"
.LASF19:
	.asciz	"usb_ep0_out_buf"
.LASF23:
	.asciz	"usb_device_state"
.LASF17:
	.asciz	"vendor_setup_handler"
.LASF9:
	.asciz	"EP0_Outbdp"
.LASF5:
	.asciz	"U1PWRCbits"
.LASF11:
	.asciz	"usb_device_descriptor"
.LASF4:
	.asciz	"U1OTGCON"
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0001
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
