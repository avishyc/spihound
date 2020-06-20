	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\binary_io.c"
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
	.type	_read_and_transmit_adc_measurement,@function
_read_and_transmit_adc_measurement:
.LFB57:
	.file 1 "../binary_io.c"
	.loc 1 1260 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI0:
	.loc 1 1261 0
	mov	#1,w0
	call	_bp_read_adc
	mov	w0,w8
	.loc 1 1262 0
	lsr	w8,#8,w0
	call	_user_serial_transmit_character
	.loc 1 1263 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	.loc 1 1264 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE57:
	.size	_read_and_transmit_adc_measurement, .-_read_and_transmit_adc_measurement
	.align	2
	.type	_send_binary_io_mode_identifier,@function
_send_binary_io_mode_identifier:
.LFB24:
	.loc 1 360 0
	.set ___PA___,1
	.loc 1 360 0
	mov	#tbloffset(_MSG_BBIO_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_BBIO_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	return	
	.set ___PA___,0
.LFE24:
	.size	_send_binary_io_mode_identifier, .-_send_binary_io_mode_identifier
	.align	2
	.type	_pic416_write,@function
_pic416_write:
.LFB38:
	.loc 1 763 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	mov.d	w10,[w15++]
.LCFI2:
	mov	w12,[w15++]
.LCFI3:
	mov.b	w1,w11
	mov.b	w2,w12
	.loc 1 764 0
	ze	w0,w10
	lsr	w10,#6,w10
	.loc 1 765 0
	mov.b	w0,w9
	.loc 1 767 0
	clr	w8
	bra	.L10
.L7:
.LBB199:
	.loc 1 768 0
	sub	w8,#3,[w15]
	.set ___BP___,34
	bra	nz,.L10
	cp0.b	w10
	.set ___BP___,71
	bra	z,.L10
	.loc 1 769 0
	mov.b	#1,w0
	call	_bitbang_set_clk
	.loc 1 770 0
	ze	w10,w0
	call	_bp_delay_ms
	.loc 1 771 0
	clr.b	w0
	call	_bitbang_set_clk
	bra	.L6
.L10:
	.loc 1 775 0
	ze	w9,w9
	and	w9,#1,w0
	call	_bitbang_write_bit
	.loc 1 776 0
	lsr	w9,w9
	.loc 1 767 0
	inc	w8,w8
	sub	w8,#4,[w15]
	.set ___BP___,93
	bra	nz,.L7
.L6:
.LBE199:
	.loc 1 779 0
	ze	w11,w0
	call	_bitbang_write_value
	.loc 1 780 0
	ze	w12,w0
	call	_bitbang_write_value
	.loc 1 781 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE38:
	.size	_pic416_write, .-_pic416_write
	.align	2
	.type	_pic24_send_six_payload,@function
_pic24_send_six_payload:
.LFB39:
	.loc 1 783 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI4:
	mov	w0,w9
	.loc 1 785 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 786 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 787 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 788 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 791 0
	mov	w9,w8
	ze	[w9],w0
	call	_bitbang_write_value
	.loc 1 792 0
	ze	[++w8],w0
	call	_bitbang_write_value
	.loc 1 793 0
	mov.b	[w8+1],w0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 794 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE39:
	.size	_pic24_send_six_payload, .-_pic24_send_six_payload
	.align	2
	.type	_pic424_write,@function
_pic424_write:
.LFB41:
	.loc 1 800 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI5:
	mov	w10,[w15++]
.LCFI6:
	mov	w1,w10
	.loc 1 801 0
	call	_pic24_send_six_payload
.LBB200:
	.loc 1 804 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L12
	clr	w8
.LBB201:
.LBB202:
	.loc 1 797 0
	mov	#_PIC24_NOP_PAYLOAD,w9
.L14:
	mov	w9,w0
	call	_pic24_send_six_payload
.LBE202:
.LBE201:
	.loc 1 804 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L14
.L12:
.LBE200:
	.loc 1 807 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE41:
	.size	_pic424_write, .-_pic424_write
	.align	2
	.type	_send_bits,@function
_send_bits:
.LFB34:
	.loc 1 729 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI7:
	mov	w10,[w15++]
.LCFI8:
	mov	w1,w10
.LBB203:
	.loc 1 732 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L16
	.loc 1 730 0
	mov.b	w0,w9
	.loc 1 732 0
	clr	w8
.L18:
	.loc 1 733 0
	ze	w9,w9
	and	w9,#1,w0
	call	_bitbang_write_bit
	.loc 1 734 0
	lsr	w9,w9
	.loc 1 732 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L18
.L16:
.LBE203:
	.loc 1 736 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE34:
	.size	_send_bits, .-_send_bits
	.align	2
	.type	_pic424_read,@function
_pic424_read:
.LFB42:
	.loc 1 809 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI9:
	.loc 1 811 0
	mov.b	#1,w0
	call	_bitbang_write_bit
	.loc 1 812 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 813 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 814 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 816 0
	clr	w0
	call	_bitbang_write_value
	.loc 1 818 0
	call	_bitbang_read_value
	mov	w0,w8
	.loc 1 819 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 820 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
.LBB204:
.LBB205:
	.loc 1 797 0
	mov	#_PIC24_NOP_PAYLOAD,w0
	call	_pic24_send_six_payload
.LBE205:
.LBE204:
.LBB206:
.LBB207:
	mov	#_PIC24_NOP_PAYLOAD,w0
	call	_pic24_send_six_payload
.LBE207:
.LBE206:
	.loc 1 825 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE42:
	.size	_pic424_read, .-_pic424_read
	.align	2
	.type	_binary_io_self_test,@function
_binary_io_self_test:
.LFB30:
	.loc 1 560 0
	.set ___PA___,1
	lnk	#2
.LCFI10:
	mov.d	w8,[w15++]
.LCFI11:
	.loc 1 561 0
	clr	w1
	mov	w1,[w15-6]
	.loc 1 563 0
	mov.b	w0,w1
	clr.b	w0
	call	_perform_selftest
	mov.b	w0,w8
.LBB208:
.LBB209:
	.file 2 "../hardware.h"
	.loc 2 140 0
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L22
.LBB210:
.LBB211:
	.loc 2 130 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 131 0
	bset.b	_PORTBbits+1,#0
	bra	.L23
.L22:
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	.loc 2 135 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 136 0
	bclr.b	_PORTBbits+1,#0
.L23:
.LBE213:
.LBE212:
.LBE209:
.LBE208:
	.loc 1 565 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	.loc 1 580 0
	setm	w9
.L31:
	.loc 1 568 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L24
.LBB214:
	.loc 1 569 0
	call	_user_serial_read_byte
	.loc 1 570 0
	add.b	w0,#1,[w15]
	.set ___BP___,4
	bra	z,.L25
	.loc 1 571 0
	add.b	w0,w8,w0
	call	_user_serial_transmit_character
	bra	.L24
.L25:
	.loc 1 573 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE214:
	.loc 1 587 0
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.L24:
	.loc 1 578 0
	cp0.b	w8
	.set ___BP___,86
	bra	nz,.L31
	.loc 1 579 0
	mov	[w15-6],w0
	cp0	w0
	.set ___BP___,50
	bra	nz,.L27
	.loc 1 580 0
	mov	w9,[w15-6]
.LBB215:
.LBB216:
	.loc 2 148 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 149 0
	mov	_PORTBbits,w0
	lsr	w0,#8,w0
	com	w0,w0
	and	w0,#1,w0
	sl	w0,#8,w0
	mov	_PORTBbits,w1
	bclr	w1,#8
	ior	w0,w1,w1
	mov	w1,_PORTBbits
.L27:
.LBE216:
.LBE215:
	.loc 1 584 0
	mov	[w15-6],w1
	dec	w1,w1
	mov	w1,[w15-6]
	bra	.L31
.LFE30:
	.size	_binary_io_self_test, .-_binary_io_self_test
	.align	2
	.global	_bitbang_pin_direction_set	; export
	.type	_bitbang_pin_direction_set,@function
_bitbang_pin_direction_set:
.LFB28:
	.loc 1 511 0
	.set ___PA___,1
	.loc 1 515 0
	ze	w0,w1
	sl	w1,w2
	and	#32,w2
	mov	_TRISDbits,w3
	bclr	w3,#5
	ior	w2,w3,w3
	mov	w3,_TRISDbits
	.loc 1 516 0
	lsr	w1,#2,w2
	and	w2,#2,w2
	mov	_TRISDbits,w3
	bclr	w3,#1
	ior	w2,w3,w3
	mov	w3,_TRISDbits
	.loc 1 517 0
	and	w1,#4,w2
	mov	_TRISDbits,w3
	bclr	w3,#2
	ior	w2,w3,w3
	mov	w3,_TRISDbits
	.loc 1 518 0
	sl	w1,#2,w1
	and	w1,#8,w1
	mov	_TRISDbits,w2
	bclr	w2,#3
	ior	w1,w2,w2
	mov	w2,_TRISDbits
	.loc 1 519 0
	and	w0,#1,w0
	sl	w0,#4,w0
	mov	_TRISDbits,w1
	bclr	w1,#4
	ior	w0,w1,w1
	mov	w1,_TRISDbits
	.loc 1 523 0
	mov	#5,w0
	call	_bp_delay_us
	.loc 1 527 0
	clr.b	w2
	btst.b	_PORTDbits,#5
	.set ___BP___,50
	bra	z,.L33
	mov.b	#16,w2
.L33:
	clr.b	w1
	btst.b	_PORTDbits,#1
	.set ___BP___,50
	bra	z,.L34
	mov.b	#8,w1
.L34:
	.loc 1 529 0
	mov	_PORTDbits,w4
	.loc 1 527 0
	and.b	w4,#4,w4
	clr.b	w0
	btst.b	_PORTDbits,#3
	.set ___BP___,61
	bra	z,.L35
	mov.b	#2,w0
.L35:
	.loc 1 531 0
	mov	_PORTDbits,w3
	lsr	w3,#4,w3
	and.b	w3,#1,w3
	.loc 1 527 0
	ior.b	w3,w4,w3
	ior.b	w3,w2,w2
	ior.b	w2,w1,w1
	ior.b	w1,w0,w0
	.loc 1 532 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_bitbang_pin_direction_set, .-_bitbang_pin_direction_set
	.align	2
	.global	_bitbang_pin_state_set	; export
	.type	_bitbang_pin_state_set,@function
_bitbang_pin_state_set:
.LFB29:
	.loc 1 534 0
	.set ___PA___,1
	.loc 1 538 0
	ze	w0,w1
.LBB217:
.LBB218:
	.loc 2 105 0
	btst	w1,#6
	.set ___BP___,50
	bra	z,.L40
.LBB219:
.LBB220:
	.loc 2 91 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 92 0
	bset.b	_PORTBbits+1,#1
	bra	.L41
.L40:
.LBE220:
.LBE219:
.LBB221:
.LBB222:
	.loc 2 96 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 97 0
	bclr.b	_PORTBbits+1,#1
.L41:
.LBE222:
.LBE221:
.LBE218:
.LBE217:
.LBB223:
.LBB224:
	.loc 2 83 0
	btst	w1,#5
	.set ___BP___,50
	bra	z,.L42
.LBB225:
.LBB226:
	.loc 2 73 0
	bset.b	_TRISEbits,#4
	.loc 2 74 0
	bclr.b	_PORTEbits,#4
	bra	.L43
.L42:
.LBE226:
.LBE225:
.LBB227:
.LBB228:
	.loc 2 78 0
	bclr.b	_PORTEbits,#4
	.loc 2 79 0
	bclr.b	_TRISEbits,#4
.L43:
.LBE228:
.LBE227:
.LBE224:
.LBE223:
	.loc 1 541 0
	sl	w1,w2
	and	#32,w2
	mov	_PORTDbits,w3
	bclr	w3,#5
	ior	w2,w3,w3
	mov	w3,_PORTDbits
	.loc 1 542 0
	lsr	w1,#2,w2
	and	w2,#2,w2
	mov	_PORTDbits,w3
	bclr	w3,#1
	ior	w2,w3,w3
	mov	w3,_PORTDbits
	.loc 1 543 0
	and	w1,#4,w2
	mov	_PORTDbits,w3
	bclr	w3,#2
	ior	w2,w3,w3
	mov	w3,_PORTDbits
	.loc 1 544 0
	sl	w1,#2,w1
	and	w1,#8,w1
	mov	_PORTDbits,w2
	bclr	w2,#3
	ior	w1,w2,w2
	mov	w2,_PORTDbits
	.loc 1 545 0
	and	w0,#1,w0
	sl	w0,#4,w0
	mov	_PORTDbits,w1
	bclr	w1,#4
	ior	w0,w1,w1
	mov	w1,_PORTDbits
	.loc 1 549 0
	mov	#5,w0
	call	_bp_delay_us
	.loc 1 553 0
	clr.b	w2
	btst.b	_PORTDbits,#5
	.set ___BP___,50
	bra	z,.L44
	mov.b	#16,w2
.L44:
	clr.b	w1
	btst.b	_PORTDbits,#1
	.set ___BP___,50
	bra	z,.L45
	mov.b	#8,w1
.L45:
	.loc 1 555 0
	mov	_PORTDbits,w4
	.loc 1 553 0
	and.b	w4,#4,w4
	clr.b	w0
	btst.b	_PORTDbits,#3
	.set ___BP___,61
	bra	z,.L46
	mov.b	#2,w0
.L46:
	.loc 1 557 0
	mov	_PORTDbits,w3
	lsr	w3,#4,w3
	and.b	w3,#1,w3
	.loc 1 553 0
	ior.b	w3,w4,w3
	ior.b	w3,w2,w2
	ior.b	w2,w1,w1
	ior.b	w1,w0,w0
	.loc 1 558 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_bitbang_pin_state_set, .-_bitbang_pin_state_set
	.align	2
	.type	_reset_state,@function
_reset_state:
.LFB27:
	.loc 1 505 0
	.set ___PA___,1
.LBB229:
.LBB230:
	.file 3 "../hardwarev4.h"
	.loc 3 210 0
	bset.b	_TRISFbits,#5
	.loc 3 211 0
	bclr.b	_PORTFbits,#4
	.loc 3 212 0
	bset.b	_TRISFbits,#4
.LBE230:
.LBE229:
	.loc 1 507 0
	setm.b	w0
	call	_bitbang_pin_direction_set
	.loc 1 508 0
	clr.b	w0
	call	_bitbang_pin_state_set
	.loc 1 509 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_reset_state, .-_reset_state
	.align	2
	.global	_bp_binary_io_peripherals_set	; export
	.type	_bp_binary_io_peripherals_set,@function
_bp_binary_io_peripherals_set:
.LFB31:
	.loc 1 589 0
	.set ___PA___,1
	.loc 1 590 0
	ze	w0,w0
.LBB231:
.LBB232:
	.loc 2 105 0
	btst	w0,#3
	.set ___BP___,50
	bra	z,.L52
.LBB233:
.LBB234:
	.loc 2 91 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 92 0
	bset.b	_PORTBbits+1,#1
	bra	.L53
.L52:
.LBE234:
.LBE233:
.LBB235:
.LBB236:
	.loc 2 96 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 97 0
	bclr.b	_PORTBbits+1,#1
.L53:
.LBE236:
.LBE235:
.LBE232:
.LBE231:
.LBB237:
.LBB238:
	.loc 2 83 0
	btst	w0,#2
	.set ___BP___,50
	bra	z,.L54
.LBB239:
.LBB240:
	.loc 2 73 0
	bset.b	_TRISEbits,#4
	.loc 2 74 0
	bclr.b	_PORTEbits,#4
	bra	.L55
.L54:
.LBE240:
.LBE239:
.LBB241:
.LBB242:
	.loc 2 78 0
	bclr.b	_PORTEbits,#4
	.loc 2 79 0
	bclr.b	_TRISEbits,#4
.L55:
.LBE242:
.LBE241:
.LBE238:
.LBE237:
	.loc 1 593 0
	bclr.b	_TRISDbits,#5
	.loc 1 594 0
	sl	w0,#4,w1
	and	#32,w1
	mov	_PORTDbits,w2
	bclr	w2,#5
	ior	w1,w2,w2
	mov	w2,_PORTDbits
	.loc 1 597 0
	btst	w0,#0
	.set ___BP___,50
	bra	z,.L56
	.loc 1 598 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w0
	.set ___BP___,50
	bra	z,.L57
	.loc 1 599 0
	bset.b	_TRISD,#4
	bra	.L51
.L57:
	.loc 1 601 0
	bset.b	_LATD,#4
	.loc 1 602 0
	bclr.b	_TRISD,#4
	bra	.L51
.L56:
	.loc 1 605 0
	bclr.b	_LATD,#4
	.loc 1 606 0
	bclr.b	_TRISD,#4
.L51:
	.loc 1 608 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_bp_binary_io_peripherals_set, .-_bp_binary_io_peripherals_set
	.align	2
	.global	_bp_binary_io_pullup_control	; export
	.type	_bp_binary_io_pullup_control,@function
_bp_binary_io_pullup_control:
.LFB32:
	.loc 1 613 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI12:
	mov.b	w0,w8
	.loc 1 615 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w1
	.loc 1 616 0
	clr.b	w0
	.loc 1 615 0
	.set ___BP___,61
	bra	z,.L60
.LBB243:
.LBB244:
	.loc 3 210 0
	bset.b	_TRISFbits,#5
	.loc 3 211 0
	bclr.b	_PORTFbits,#4
	.loc 3 212 0
	bset.b	_TRISFbits,#4
.LBE244:
.LBE243:
	.loc 1 621 0
	mov	#2,w0
	call	_bp_delay_ms
.LBB245:
.LBB246:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE246:
.LBE245:
	.loc 1 627 0
	mov	#5,w0
	call	_bp_read_adc
	mov	w0,w2
.LBB247:
.LBB248:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.LBE248:
.LBE247:
	.loc 1 633 0
	clr.b	w0
	.loc 1 632 0
	mov	#256,w1
	sub	w2,w1,[w15]
	.set ___BP___,39
	bra	gtu,.L60
	.loc 1 636 0
	mov.b	#81,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L62
	inc.b	w0,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L66
	bra	.L67
.L62:
.LBB249:
.LBB250:
	.loc 3 204 0
	bset.b	_TRISFbits,#5
	.loc 3 205 0
	bclr.b	_PORTFbits,#4
	.loc 3 206 0
	bclr.b	_TRISFbits,#4
.LBE250:
.LBE249:
	.loc 1 653 0
	mov.b	#1,w0
	.loc 1 640 0
	bra	.L60
.L67:
.LBB251:
.LBB252:
	.loc 3 224 0
	bset.b	_TRISFbits,#4
	.loc 3 225 0
	bclr.b	_PORTFbits,#5
	.loc 3 226 0
	bclr.b	_TRISFbits,#5
.LBE252:
.LBE251:
	.loc 1 653 0
	mov.b	#1,w0
	.loc 1 645 0
	bra	.L60
.L66:
.LBB253:
.LBB254:
	.loc 3 210 0
	bset.b	_TRISFbits,#5
	.loc 3 211 0
	bclr.b	_PORTFbits,#4
	.loc 3 212 0
	bset.b	_TRISFbits,#4
.LBE254:
.LBE253:
	.loc 1 653 0
	mov.b	#1,w0
.L60:
	.loc 1 654 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE32:
	.size	_bp_binary_io_pullup_control, .-_bp_binary_io_pullup_control
	.align	2
	.type	_binary_io_raw_wire_mode_handler,@function
_binary_io_raw_wire_mode_handler:
.LFB33:
	.loc 1 658 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI13:
	mov.d	w8,[w15++]
.LCFI14:
	mov.d	w10,[w15++]
.LCFI15:
	mov.d	w12,[w15++]
.LCFI16:
	mov	w14,[w15++]
.LCFI17:
	.loc 1 659 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w1
	bset.b	w1,#4
	.loc 1 660 0
	bclr.b	w1,#3
	mov.b	w1,[w0]
	.loc 1 661 0
	mov.b	#1,w8
	dec2	w0,w0
	mov.b	w8,[w0]
	.loc 1 662 0
	mov.b	#8,w1
	inc	w0,w0
	mov.b	w1,[w0]
	.loc 1 664 0
	mov	#_io_state,w0
	mov.b	[w0],w1
	bclr.b	w1,#0
	.loc 1 665 0
	ior.b	w1,#6,[w0]
	.loc 1 667 0
	mov	#3,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 668 0
	bclr.b	_TRISDbits,#1
	.loc 1 669 0
	bclr.b	_TRISDbits,#2
	.loc 1 670 0
	bset.b	_TRISDbits,#3
	.loc 1 671 0
	mov.b	w8,w0
	call	_bitbang_set_cs
	.loc 1 673 0
	mov	#tbloffset(_MSG_RAW_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_RAW_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
.LBB255:
.LBB256:
.LBB257:
	.loc 1 972 0
	mov	#_mode_configuration+2,w12
	.loc 1 973 0
	mov	#_io_state,w14
.LBE257:
.LBE256:
.LBB259:
.LBB260:
	.loc 1 834 0
	mov	#tbloffset(_MSG_RAW_MODE_IDENTIFIER_str),w10
	mov	#tblpage(_MSG_RAW_MODE_IDENTIFIER_str),w11
.L173:
.LBE260:
.LBE259:
	.loc 1 678 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 680 0
	ze	w8,w0
	lsr	w0,#4,w0
	ze	w0,w0
	clr	w1
	bra	w0
	.align	2
	.set	___PA___,0
.L81:
	bra	.L71
	bra	.L72
	bra	.L73
	bra	.L74
	bra	.L75
	bra	.L76
	bra	.L77
	bra	.L70
	bra	.L78
	bra	.L70
	bra	.L79
	bra	.L70
	bra	.L70
	bra	.L70
	bra	.L70
	bra	.L80
	.set	___PA___,1
.L71:
.LBB263:
.LBB262:
	.loc 1 828 0
	ze	w8,w8
	clr	w9
	sub	w8,#13,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L82
	bra	w8
	.align	2
	.set	___PA___,0
.L97:
	bra	.L68
	bra	.L84
	bra	.L85
	bra	.L86
	bra	.L87
	bra	.L88
	bra	.L89
	bra	.L90
	bra	.L91
	bra	.L92
	bra	.L93
	bra	.L94
	bra	.L95
	bra	.L96
	.set	___PA___,1
.L84:
	.loc 1 834 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	bra	.L173
.L85:
	.loc 1 838 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 839 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L86:
	.loc 1 843 0
	call	_bitbang_i2c_stop
	.loc 1 844 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L87:
	.loc 1 848 0
	clr.b	w0
	call	_bitbang_set_cs
	.loc 1 849 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L88:
	.loc 1 853 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 854 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L89:
.LBB261:
	.loc 1 858 0
	mov.b	[w14],w1
	and.b	w1,#1,w0
	.loc 1 860 0
	.set ___BP___,50
	bra	nz,.L99
	call	_bitbang_read_value
	bra	.L100
.L99:
	mov	#255,w0
	call	_bitbang_read_with_write
.L100:
	.loc 1 861 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L101
	.loc 1 862 0
	mov	#_mode_configuration+1,w1
	mov.b	[w1],w1
	call	_bp_reverse_integer
.L101:
	.loc 1 864 0
	call	_user_serial_transmit_character
	bra	.L173
.L90:
.LBE261:
	.loc 1 869 0
	call	_bitbang_read_bit
	call	_user_serial_transmit_character
	bra	.L173
.L91:
	.loc 1 873 0
	call	_bitbang_read_miso
	call	_user_serial_transmit_character
	bra	.L173
.L92:
	.loc 1 877 0
	mov	#1,w0
	call	_bitbang_advance_clock_ticks
	.loc 1 878 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L93:
	.loc 1 882 0
	clr.b	w0
	call	_bitbang_set_clk
	.loc 1 883 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L94:
	.loc 1 887 0
	mov.b	#1,w0
	call	_bitbang_set_clk
	.loc 1 888 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L95:
	.loc 1 892 0
	clr.b	w0
	call	_bitbang_set_mosi
	.loc 1 893 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L96:
	.loc 1 897 0
	mov.b	#1,w0
	call	_bitbang_set_mosi
	.loc 1 898 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L82:
	.loc 1 902 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L72:
.LBE262:
.LBE263:
.LBB264:
.LBB265:
	.loc 1 910 0
	and	w8,#15,w13
	inc	w13,w13
	.loc 1 911 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBB266:
	.loc 1 913 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L173
	clr	w8
.LBB267:
	.loc 1 923 0
	mov	#255,w9
.L107:
	.loc 1 914 0
	call	_user_serial_read_byte
	ze	w0,w0
	.loc 1 915 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L103
	.loc 1 916 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w1
	call	_bp_reverse_integer
.L103:
	.loc 1 919 0
	mov.b	[w14],w2
	and.b	w2,#1,w1
	.set ___BP___,50
	bra	nz,.L104
	.loc 1 920 0
	and	w0,w9,w0
	call	_bitbang_write_value
	.loc 1 921 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L105
.L104:
	.loc 1 923 0
	and	w0,w9,w0
	call	_bitbang_read_with_write
	.loc 1 924 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L106
	.loc 1 925 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w1
	call	_bp_reverse_integer
.L106:
	.loc 1 927 0
	and	w0,w9,w0
	call	_bitbang_write_value
.L105:
.LBE267:
	.loc 1 913 0
	inc	w8,w8
	sub	w13,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L107
	bra	.L173
.L73:
.LBE266:
.LBE265:
.LBE264:
.LBB268:
.LBB269:
	.loc 1 933 0
	and	w8,#15,w0
	inc	w0,w0
	call	_bitbang_advance_clock_ticks
	.loc 1 934 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE269:
.LBE268:
	.loc 1 692 0
	bra	.L173
.L74:
.LBB270:
.LBB271:
	.loc 1 938 0
	and	w8,#15,w13
	inc	w13,w13
	.loc 1 939 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 941 0
	call	_user_serial_read_byte
.LBB272:
	.loc 1 942 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L108
	clr	w9
	.loc 1 943 0
	ze	w8,w8
	lsr	w8,#7,w8
.L109:
	mov.b	w8,w0
	call	_bitbang_write_bit
	.loc 1 942 0
	inc	w9,w9
	sub	w13,w9,[w15]
	.set ___BP___,91
	bra	gtu,.L109
.L108:
.LBE272:
	.loc 1 947 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE271:
.LBE270:
	.loc 1 696 0
	bra	.L173
.L79:
.LBB273:
.LBB274:
	.loc 1 983 0
	mov.b	#-92,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L112
	.set ___BP___,50
	bra	gtu,.L115
	sub.b	w0,#4,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L110
	bra	.L178
.L115:
	mov.b	#-91,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L113
	inc2.b	w0,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L110
	bra	.L179
.L178:
.LBB275:
	.loc 1 986 0
	call	_user_serial_read_byte
	.loc 1 987 0
	dec.b	w0,w1
	sub.b	w1,#2,[w15]
	.set ___BP___,50
	bra	leu,.L116
	.loc 1 989 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L116:
	.loc 1 991 0
	and.b	w0,#3,w0
	add.b	w0,w0,w0
	mov.b	#-7,w1
	and.b	w1,[w14],w1
	ior.b	w1,w0,[w14]
	.loc 1 992 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L112:
.LBE275:
.LBB276:
.LBB277:
	.loc 1 1016 0
	mov.b	[w14],w1
	and.b	w1,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L117
	sub.b	w0,#4,[w15]
	.set ___BP___,48
	bra	z,.L117
	.loc 1 1018 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L117:
	.loc 1 1023 0
	call	_user_serial_read_byte
	ze	w0,w1
	mov.b	[w14],w0
	and.b	w0,#6,w2
	mov	#4,w0
	sub.b	w2,#2,[w15]
	.set ___BP___,72
	bra	nz,.L118
	mov	#3,w0
.L118:
	mul.ss	w0,w1,w0
	mov	w0,w9
.LBB278:
	.loc 1 1024 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L119
	clr	w8
.L120:
	.loc 1 1025 0
	mov	#_bus_pirate_configuration,w1
	add	w8,[w1],w13
	call	_user_serial_read_byte
	mov.b	w0,[w13]
	.loc 1 1024 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L120
.L119:
.LBE278:
	.loc 1 1028 0
	mov.b	[w14],w2
	and.b	w2,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,28
	bra	z,.L121
.LBB279:
	.loc 1 1039 0
	clr	w8
	cp0	w9
	.set ___BP___,91
	bra	nz,.L161
	bra	.L123
.L121:
.LBE279:
.LBB280:
	.loc 1 1029 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L124
	clr	w8
.L125:
	.loc 1 1032 0
	mov	#_bus_pirate_configuration,w1
	mov	[w1],w0
	.loc 1 1030 0
	add	w0,w8,w1
	mov.b	[w1+2],w2
	mov.b	[w1+1],w1
	mov.b	[w0+w8],w0
	call	_pic416_write
	.loc 1 1029 0
	add	w8,#3,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L125
.L124:
.LBE280:
	.loc 1 1035 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L161:
.LBB281:
	.loc 1 1041 0
	mov	#_bus_pirate_configuration,w2
	add	w8,[w2],w0
	.loc 1 1040 0
	mov.b	[w0+3],w1
	ze	w1,w1
	call	_pic424_write
	.loc 1 1039 0
	add	w8,#4,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L161
.L123:
.LBE281:
	.loc 1 1044 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L113:
.LBE277:
.LBE276:
.LBB282:
.LBB283:
	.loc 1 1048 0
	mov.b	[w14],w1
	and.b	w1,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L126
	sub.b	w0,#4,[w15]
	.set ___BP___,48
	bra	z,.L126
	.loc 1 1050 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L126:
	.loc 1 1054 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 1056 0
	mov.b	[w14],w2
	and.b	w2,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L127
.LBB284:
	.loc 1 1069 0
	ze	w8,w8
	mov	w8,[w15-16]
	clr	w13
	mov	w8,w0
	cp0	w0
	.set ___BP___,91
	bra	nz,.L128
	bra	.L173
.L127:
.LBE284:
.LBB286:
	.loc 1 1057 0
	call	_user_serial_read_byte
	mov.b	w0,w13
.LBB287:
	.loc 1 1059 0
	ze	w8,w9
	.set ___BP___,9
	bra	z,.L173
	clr	w8
.L129:
	.loc 1 1060 0
	mov	#4,w1
	mov.b	w13,w0
	call	_send_bits
	.loc 1 1062 0
	call	_bitbang_read_value
	.loc 1 1063 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 1059 0
	inc	w8,w8
	sub	w8,w9,[w15]
	.set ___BP___,91
	bra	ltu,.L129
	bra	.L173
.L128:
.LBE287:
.LBE286:
.LBB288:
.LBB285:
	.loc 1 1072 0
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD,w8
	.loc 1 1074 0
	add	w8,#3,w9
.L162:
	.loc 1 1072 0
	mov	#2,w1
	mov	w8,w0
	call	_pic424_write
	.loc 1 1073 0
	call	_pic424_read
	.loc 1 1074 0
	mov	#2,w1
	mov	w9,w0
	call	_pic424_write
	.loc 1 1076 0
	mov	#2,w1
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD+6,w0
	call	_pic424_write
	.loc 1 1077 0
	call	_pic424_read
	.loc 1 1078 0
	mov	#2,w1
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD+9,w0
	call	_pic424_write
	.loc 1 1079 0
	call	_pic424_read
.LBE285:
	.loc 1 1069 0
	inc	w13,w13
	mov	[w15-16],w1
	sub	w13,w1,[w15]
	.set ___BP___,91
	bra	ltu,.L162
	bra	.L173
.L179:
.LBE288:
.LBE283:
.LBE282:
.LBB289:
.LBB290:
	.loc 1 1084 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 1085 0
	call	_user_serial_read_byte
	mov.b	w0,[w15-16]
	.loc 1 1088 0
	lsr	[w14],w0
	and	w0,#3,w0
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L132
	sub	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L131
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L174
	bra	.L131
.L132:
	.loc 1 1090 0
	mov.b	w8,w0
	mov.b	#5,w2
	mul.b	WREG2
	mov.b	[w15-16],w1
	ze	w1,w0
	add	w2,w0,w13
	bra	.L133
.L131:
	.loc 1 1095 0
	ze	w8,w8
	add	w8,w8,w8
	mov.b	[w15-16],w2
	ze	w2,w0
	add	w8,w0,w13
	add	w13,w13,w13
	bra	.L133
.L174:
	.loc 1 1099 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L133:
.LBB291:
	.loc 1 1103 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L134
	clr	w8
.L135:
	.loc 1 1104 0
	mov	#_bus_pirate_configuration,w0
	add	w8,[w0],w9
	call	_user_serial_read_byte
	mov.b	w0,[w9]
	.loc 1 1103 0
	inc	w8,w8
	sub	w8,w13,[w15]
	.set ___BP___,91
	bra	ltu,.L135
.L134:
.LBE291:
	.loc 1 1107 0
	mov.b	[w15-16],w1
	cp0.b	w1
	.set ___BP___,71
	bra	z,.L136
	.loc 1 1108 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.L136:
	.loc 1 1112 0
	cp0	w13
	.set ___BP___,3
	bra	z,.L137
	clr	w8
.L151:
	.loc 1 1113 0
	mov	#_bus_pirate_configuration,w2
	mov	[w2],w0
	mov.b	[w0+w8],w1
	sub.b	w1,#1,[w15]
	.set ___BP___,29
	bra	z,.L139
	sub.b	w1,#2,[w15]
	.set ___BP___,71
	bra	nz,.L175
	bra	.L180
.L139:
	.loc 1 1115 0
	lsr	[w14],w1
	and	w1,#3,w1
	sub	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L143
	sub	w1,#3,[w15]
	.set ___BP___,29
	bra	z,.L144
	sub	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L176
	bra	.L181
.L144:
	.loc 1 1117 0
	add	w0,w8,w0
	mov.b	[w0+3],w1
	mov.b	w1,[w15-17]
	mov.b	[w0+2],w2
	mov.b	w2,[w15-18]
	mov.b	[w0+1],w9
.LBB292:
.LBB293:
	.loc 1 747 0
	mov	#6,w1
	mov.b	w9,w0
	call	_send_bits
	.loc 1 749 0
	cp0.b	w9
	.set ___BP___,47
	bra	lt,.L145
	.loc 1 750 0
	mov.b	[w15-18],w1
	ze	w1,w0
	call	_bitbang_write_value
	.loc 1 751 0
	mov.b	[w15-17],w2
	ze	w2,w0
	call	_bitbang_write_value
.L145:
.LBE293:
.LBE292:
	.loc 1 1120 0
	add	w8,#4,w8
	bra	.L146
.L181:
	.loc 1 1124 0
	add	w0,w8,w0
	mov.b	[w0+3],w2
	mov.b	[w0+2],w1
	mov.b	[w0+1],w0
	call	_pic416_write
	.loc 1 1127 0
	add	w8,#4,w8
	bra	.L146
.L143:
	.loc 1 1132 0
	add	w0,w8,w1
	.loc 1 1131 0
	mov.b	[w1+4],w1
	and	w1,#15,w1
	inc	w8,w2
	add	w0,w2,w0
	call	_pic424_write
	.loc 1 1133 0
	add	w8,#5,w8
	bra	.L146
.L176:
	.loc 1 1138 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L180:
	.loc 1 1144 0
	lsr	[w14],w1
	and	w1,#3,w1
	sub	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L149
	sub	w1,#3,[w15]
	.set ___BP___,29
	bra	z,.L150
	sub	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L177
	bra	.L182
.L150:
	.loc 1 1146 0
	add	w0,w8,w0
.LBB294:
.LBB295:
	.loc 1 739 0
	mov.b	[w0+1],w0
	mov	#6,w1
	call	_send_bits
	.loc 1 741 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 742 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
.LBE295:
.LBE294:
	.loc 1 1147 0
	inc2	w8,w8
	bra	.L146
.L182:
	.loc 1 1151 0
	add	w0,w8,w0
.LBB296:
.LBB297:
	.loc 1 756 0
	mov.b	[w0+1],w0
	mov	#4,w1
	call	_send_bits
	.loc 1 758 0
	call	_bitbang_read_value
	.loc 1 759 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
.LBE297:
.LBE296:
	.loc 1 1152 0
	inc2	w8,w8
	bra	.L146
.L149:
	.loc 1 1156 0
	call	_pic424_read
	.loc 1 1157 0
	inc	w8,w8
	bra	.L146
.L177:
	.loc 1 1162 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L175:
	.loc 1 1168 0
	inc	w8,w8
.L146:
	.loc 1 1112 0
	sub	w13,w8,[w15]
	.set ___BP___,97
	bra	gtu,.L151
.L137:
	.loc 1 1173 0
	mov.b	[w15-16],w0
	cp0.b	w0
	.set ___BP___,71
	bra	nz,.L173
	.loc 1 1174 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L173
.L110:
.LBE290:
.LBE289:
	.loc 1 1010 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L76:
.LBE274:
.LBE273:
.LBB298:
.LBB299:
	.loc 1 952 0
	mov.b	w8,w0
	call	_bp_binary_io_pullup_control
	call	_user_serial_transmit_character
.LBE299:
.LBE298:
	.loc 1 704 0
	bra	.L173
.L75:
.LBB300:
.LBB301:
	.loc 1 959 0
	mov.b	w8,w0
	call	_bp_binary_io_peripherals_set
	.loc 1 960 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE301:
.LBE300:
	.loc 1 708 0
	bra	.L173
.L77:
.LBB302:
.LBB303:
	.loc 1 964 0
	and.b	w8,#3,w8
	mov	#_mode_configuration,w1
	mov.b	w8,[w1]
	.loc 1 965 0
	ze	w8,w1
	mov.b	[w14],w0
	and.b	w0,#1,w2
	mov.b	#3,w0
	.set ___BP___,50
	bra	nz,.L152
	mov.b	#2,w0
.L152:
	call	_bitbang_setup
	.loc 1 967 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 968 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE303:
.LBE302:
	.loc 1 712 0
	bra	.L173
.L78:
.LBB304:
.LBB258:
	.loc 1 972 0
	ze	w8,w8
	lsr	w8,#3,w1
	and.b	w1,#1,w1
	mov	#4,w0
	sl	w1,w0,w1
	mov.b	[w12],w0
	bclr.b	w0,#4
	ior.b	w0,w1,w1
	.loc 1 974 0
	lsr	w8,#2,w2
	.loc 1 973 0
	and.b	w2,#1,w2
	mov.b	[w14],w0
	bclr.b	w0,#0
	ior.b	w0,w2,w2
	mov.b	w2,[w14]
	.loc 1 975 0
	lsr	w8,w8
	and.b	w8,#1,w0
	mov	#3,w3
	sl	w0,w3,w0
	bclr.b	w1,#3
	ior.b	w1,w0,[w12]
	.loc 1 976 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#3,w0
	btst	w2,#0
	.set ___BP___,50
	bra	nz,.L153
	mov.b	#2,w0
.L153:
	call	_bitbang_setup
	.loc 1 978 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 979 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE258:
.LBE304:
	.loc 1 716 0
	bra	.L173
.L80:
.LBB305:
.LBB306:
	.loc 1 1205 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L70:
.LBE306:
.LBE305:
	.loc 1 723 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L173
.L68:
.LBE255:
	.loc 1 727 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE33:
	.size	_binary_io_raw_wire_mode_handler, .-_binary_io_raw_wire_mode_handler
	.align	2
	.global	_enter_binary_bitbang_mode	; export
	.type	_enter_binary_bitbang_mode,@function
_enter_binary_bitbang_mode:
.LFB25:
	.loc 1 362 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI18:
	mov.d	w10,[w15++]
.LCFI19:
	mov	w12,[w15++]
.LCFI20:
.LBB307:
.LBB308:
	.loc 2 130 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 131 0
	bset.b	_PORTBbits+1,#0
.LBE308:
.LBE307:
	.loc 1 364 0
	call	_reset_state
	.loc 1 365 0
	call	_send_binary_io_mode_identifier
.LBB309:
.LBB310:
.LBB311:
	.loc 1 496 0
	mov	#224,w12
	.loc 1 488 0
	mov	#tbloffset(_MSG_XSV1_MODE_IDENTIFIER_str),w10
	mov	#tblpage(_MSG_XSV1_MODE_IDENTIFIER_str),w11
.L209:
.LBE311:
.LBE310:
	.loc 1 368 0
	call	_user_serial_read_byte
	.loc 1 370 0
	cp0.b	w0
	.set ___BP___,27
	bra	lt,.L185
.LBB335:
.LBB334:
	.loc 1 379 0
	ze	w0,w2
	clr	w3
	sub	w2,#24,[w15]
	subb	w3,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L186
	bra	w2
	.align	2
	.set	___PA___,0
.L204:
	bra	.L187
	bra	.L188
	bra	.L189
	bra	.L190
	bra	.L191
	bra	.L192
	bra	.L193
	bra	.L194
	bra	.L186
	bra	.L186
	bra	.L186
	bra	.L186
	bra	.L186
	bra	.L186
	bra	.L186
	bra	.L195
	bra	.L196
	bra	.L197
	bra	.L198
	bra	.L199
	bra	.L200
	bra	.L201
	bra	.L202
	bra	.L186
	bra	.L203
	.set	___PA___,1
.L187:
	.loc 1 381 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L188:
	.loc 1 386 0
	call	_reset_state
	.loc 1 387 0
	call	_spi_enter_binary_io
	.loc 1 389 0
	call	_reset_state
	.loc 1 390 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L189:
	.loc 1 395 0
	call	_reset_state
	.loc 1 396 0
	call	_binary_io_enter_i2c_mode
	.loc 1 398 0
	call	_reset_state
	.loc 1 399 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L190:
	.loc 1 404 0
	call	_reset_state
	.loc 1 405 0
	call	_binUART
	.loc 1 407 0
	call	_reset_state
	.loc 1 408 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L191:
	.loc 1 413 0
	call	_reset_state
	.loc 1 414 0
	call	_binary_io_enter_1wire_mode
	.loc 1 416 0
	call	_reset_state
	.loc 1 417 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L192:
	.loc 1 421 0
	call	_reset_state
	.loc 1 422 0
	call	_binary_io_raw_wire_mode_handler
	.loc 1 423 0
	call	_reset_state
	.loc 1 424 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L193:
	.loc 1 429 0
	call	_reset_state
	.loc 1 430 0
	call	_binOpenOCD
	.loc 1 432 0
	call	_reset_state
	.loc 1 433 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L194:
	.loc 1 438 0
	call	_reset_state
	.loc 1 439 0
	call	_binary_io_enter_pic_mode
	.loc 1 441 0
	call	_reset_state
	.loc 1 442 0
	call	_send_binary_io_mode_identifier
	bra	.L209
.L195:
	.loc 1 446 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBB312:
.LBB313:
	.loc 2 135 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 136 0
	bclr.b	_PORTBbits+1,#0
.LBE313:
.LBE312:
	.loc 1 448 0
	call	_user_serial_wait_transmission_done
	.loc 1 450 0
	call	_reset_state
	bra	.L209
.L196:
	.loc 1 458 0
	clr.b	w0
	call	_binary_io_self_test
	bra	.L209
.L197:
	.loc 1 462 0
	mov.b	#1,w0
	call	_binary_io_self_test
	bra	.L209
.L198:
.LBB314:
.LBB315:
	.loc 1 1308 0
	clr	_T2CON
	.loc 1 1322 0
	clr	_T4CON
	.loc 1 1338 0
	clr	_OC5CON1
	.loc 1 1354 0
	mov	#-64,w0
	and	_RPOR10bits,WREG
	ior	#22,w0
	mov	w0,_RPOR10bits
	.loc 1 1355 0
	call	_user_serial_read_byte
	and	w0,#3,w0
	sl	w0,#4,w0
	mov	#-49,w1
	mov	_T2CONbits,w2
	and	w1,w2,w1
	ior	w0,w1,w1
	mov	w1,_T2CONbits
	.loc 1 1357 0
	call	_user_serial_read_byte
	.loc 1 1358 0
	sl	w0,#8,w8
	call	_user_serial_read_byte
	ze	w0,w0
	ior	w0,w8,w8
	.loc 1 1359 0
	mov	w8,_OC5R
	.loc 1 1360 0
	mov	w8,_OC5RS
	.loc 1 1376 0
	mov	#6,w0
	mov	w0,_OC5CON1
	.loc 1 1392 0
	call	_user_serial_read_byte
	.loc 1 1393 0
	sl	w0,#8,w8
	call	_user_serial_read_byte
	ze	w0,w0
	.loc 1 1394 0
	ior	w0,w8,w0
	mov	w0,_PR2
	.loc 1 1396 0
	bset.b	_T2CONbits+1,#7
	.loc 1 1397 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L209
.L199:
.LBE315:
.LBE314:
.LBB316:
.LBB317:
	.loc 1 1222 0
	clr	_T2CON
	.loc 1 1238 0
	clr	_OC5CON1
	.loc 1 1255 0
	mov	#-64,w0
	and	_RPOR10bits
	.loc 1 1257 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L209
.L200:
.LBE317:
.LBE316:
.LBB318:
.LBB319:
.LBB320:
.LBB321:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE321:
.LBE320:
	.loc 1 1268 0
	call	_read_and_transmit_adc_measurement
.LBB322:
.LBB323:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
	bra	.L209
.L201:
.LBE323:
.LBE322:
.LBE319:
.LBE318:
.LBB324:
.LBB325:
.LBB326:
.LBB327:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.L206:
.LBE327:
.LBE326:
	.loc 1 1277 0
	call	_read_and_transmit_adc_measurement
	.loc 1 1278 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L206
	.loc 1 1279 0
	call	_user_serial_read_byte
.LBB328:
.LBB329:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
	bra	.L209
.L202:
.LBE329:
.LBE328:
.LBE325:
.LBE324:
.LBB330:
.LBB331:
	.loc 1 1287 0
	call	_bp_measure_frequency
	mov.d	w0,w8
	.loc 1 1289 0
	lsr	w1,#8,w0
	call	_user_serial_transmit_character
	.loc 1 1290 0
	lsr	w9,#0,w0
	mov	#0,w1
	call	_user_serial_transmit_character
	.loc 1 1291 0
	sl	w9,#8,w2
	lsr	w8,#8,w0
	ior	w2,w0,w0
	lsr	w9,#8,w1
	call	_user_serial_transmit_character
	.loc 1 1292 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	bra	.L209
.L203:
.LBE331:
.LBE330:
.LBB332:
.LBB333:
	.loc 2 91 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 92 0
	bset.b	_PORTBbits+1,#1
.LBE333:
.LBE332:
	.loc 1 488 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	.loc 1 489 0
	call	_jtag
	bra	.L209
.L186:
	.loc 1 496 0
	and	w12,w0,w2
	mov	#64,w1
	sub	w2,w1,[w15]
	.set ___BP___,72
	bra	nz,.L207
	.loc 1 497 0
	call	_bitbang_pin_direction_set
	call	_user_serial_transmit_character
	bra	.L209
.L207:
	.loc 1 499 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L209
.L185:
.LBE334:
.LBE335:
	.loc 1 373 0
	call	_bitbang_pin_state_set
	call	_user_serial_transmit_character
	bra	.L209
.LBE309:
.LFE25:
	.size	_enter_binary_bitbang_mode, .-_enter_binary_bitbang_mode
	.section	.bss,bss
	.align	2
	.type	_io_state,@object
	.size	_io_state, 1
_io_state:
	.skip	1
	.section	.const,psv,page
	.type	_PIC24_NOP_PAYLOAD,@object
	.size	_PIC24_NOP_PAYLOAD, 3
_PIC24_NOP_PAYLOAD:
	.skip	3
	.type	_PIC24_WRITE_AND_READ_PAYLOAD,@object
	.size	_PIC24_WRITE_AND_READ_PAYLOAD, 12
_PIC24_WRITE_AND_READ_PAYLOAD:
	.byte 105
	.byte -48
	.byte 93
	.byte 109
	.byte -37
	.byte 93
	.byte 107
	.byte -53
	.byte 93
	.byte 105
	.byte -48
	.byte 93
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
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI0-.LFB57
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI1-.LFB38
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI5-.LFB41
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI7-.LFB34
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI9-.LFB42
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI13-.LFB33
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -12
	.byte	0x8e
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0x9
	.byte	0x8a
	.uleb128 0x7
	.byte	0x88
	.uleb128 0x5
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI18-.LFB25
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE28:
	.section	.text,code
.Letext0:
	.file 4 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 5 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 6 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 7 "../base.h"
	.file 8 "../bitbang.h"
	.file 9 "../core.h"
	.section	.debug_info,info
	.4byte	0x2d5a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../binary_io.c"
	.asciz	"C:\\\\Users\\\\avish\\\\Workspace\\\\Firmware\\\\busPirate.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.asciz	"uint8_t"
	.byte	0x4
	.byte	0x2b
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x4
	.byte	0x31
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x4
	.byte	0x37
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x5
	.byte	0x5
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"short int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0x535
	.4byte	0x202
	.uleb128 0x5
	.asciz	"TCS"
	.byte	0x6
	.2byte	0x537
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T32"
	.byte	0x6
	.2byte	0x539
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS"
	.byte	0x6
	.2byte	0x53a
	.4byte	0xee
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TGATE"
	.byte	0x6
	.2byte	0x53b
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSIDL"
	.byte	0x6
	.2byte	0x53d
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TON"
	.byte	0x6
	.2byte	0x53f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0x541
	.4byte	0x236
	.uleb128 0x5
	.asciz	"TCKPS0"
	.byte	0x6
	.2byte	0x543
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS1"
	.byte	0x6
	.2byte	0x544
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x6
	.2byte	0x534
	.4byte	0x24a
	.uleb128 0x7
	.4byte	0x186
	.uleb128 0x7
	.4byte	0x202
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagT2CONBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x533
	.4byte	0x269
	.uleb128 0x9
	.4byte	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"T2CONBITS"
	.byte	0x6
	.2byte	0x547
	.4byte	0x24a
	.uleb128 0x8
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xcd2
	.4byte	0x3e8
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x6
	.2byte	0xcd3
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB1"
	.byte	0x6
	.2byte	0xcd4
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB2"
	.byte	0x6
	.2byte	0xcd5
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB3"
	.byte	0x6
	.2byte	0xcd6
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB4"
	.byte	0x6
	.2byte	0xcd7
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB5"
	.byte	0x6
	.2byte	0xcd8
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB6"
	.byte	0x6
	.2byte	0xcd9
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB7"
	.byte	0x6
	.2byte	0xcda
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB8"
	.byte	0x6
	.2byte	0xcdb
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB9"
	.byte	0x6
	.2byte	0xcdc
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB10"
	.byte	0x6
	.2byte	0xcdd
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB11"
	.byte	0x6
	.2byte	0xcde
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB12"
	.byte	0x6
	.2byte	0xcdf
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB13"
	.byte	0x6
	.2byte	0xce0
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB14"
	.byte	0x6
	.2byte	0xce1
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB15"
	.byte	0x6
	.2byte	0xce2
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISBBITS"
	.byte	0x6
	.2byte	0xce3
	.4byte	0x27b
	.uleb128 0x8
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xce8
	.4byte	0x537
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x6
	.2byte	0xce9
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB1"
	.byte	0x6
	.2byte	0xcea
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB2"
	.byte	0x6
	.2byte	0xceb
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB3"
	.byte	0x6
	.2byte	0xcec
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB4"
	.byte	0x6
	.2byte	0xced
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB5"
	.byte	0x6
	.2byte	0xcee
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB6"
	.byte	0x6
	.2byte	0xcef
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB7"
	.byte	0x6
	.2byte	0xcf0
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB8"
	.byte	0x6
	.2byte	0xcf1
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB9"
	.byte	0x6
	.2byte	0xcf2
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB10"
	.byte	0x6
	.2byte	0xcf3
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB11"
	.byte	0x6
	.2byte	0xcf4
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB12"
	.byte	0x6
	.2byte	0xcf5
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB13"
	.byte	0x6
	.2byte	0xcf6
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB14"
	.byte	0x6
	.2byte	0xcf7
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB15"
	.byte	0x6
	.2byte	0xcf8
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTBBITS"
	.byte	0x6
	.2byte	0xcf9
	.4byte	0x3fa
	.uleb128 0x8
	.asciz	"tagTRISDBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd56
	.4byte	0x65e
	.uleb128 0x5
	.asciz	"TRISD0"
	.byte	0x6
	.2byte	0xd57
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD1"
	.byte	0x6
	.2byte	0xd58
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD2"
	.byte	0x6
	.2byte	0xd59
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD3"
	.byte	0x6
	.2byte	0xd5a
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD4"
	.byte	0x6
	.2byte	0xd5b
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD5"
	.byte	0x6
	.2byte	0xd5c
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD6"
	.byte	0x6
	.2byte	0xd5d
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD7"
	.byte	0x6
	.2byte	0xd5e
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD8"
	.byte	0x6
	.2byte	0xd5f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD9"
	.byte	0x6
	.2byte	0xd60
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD10"
	.byte	0x6
	.2byte	0xd61
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD11"
	.byte	0x6
	.2byte	0xd62
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISDBITS"
	.byte	0x6
	.2byte	0xd63
	.4byte	0x549
	.uleb128 0x8
	.asciz	"tagPORTDBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd68
	.4byte	0x761
	.uleb128 0x5
	.asciz	"RD0"
	.byte	0x6
	.2byte	0xd69
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD1"
	.byte	0x6
	.2byte	0xd6a
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD2"
	.byte	0x6
	.2byte	0xd6b
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD3"
	.byte	0x6
	.2byte	0xd6c
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD4"
	.byte	0x6
	.2byte	0xd6d
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD5"
	.byte	0x6
	.2byte	0xd6e
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD6"
	.byte	0x6
	.2byte	0xd6f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD7"
	.byte	0x6
	.2byte	0xd70
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD8"
	.byte	0x6
	.2byte	0xd71
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD9"
	.byte	0x6
	.2byte	0xd72
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD10"
	.byte	0x6
	.2byte	0xd73
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD11"
	.byte	0x6
	.2byte	0xd74
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTDBITS"
	.byte	0x6
	.2byte	0xd75
	.4byte	0x670
	.uleb128 0x8
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd9e
	.4byte	0x832
	.uleb128 0x5
	.asciz	"TRISE0"
	.byte	0x6
	.2byte	0xd9f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE1"
	.byte	0x6
	.2byte	0xda0
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE2"
	.byte	0x6
	.2byte	0xda1
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE3"
	.byte	0x6
	.2byte	0xda2
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE4"
	.byte	0x6
	.2byte	0xda3
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE5"
	.byte	0x6
	.2byte	0xda4
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE6"
	.byte	0x6
	.2byte	0xda5
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE7"
	.byte	0x6
	.2byte	0xda6
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISEBITS"
	.byte	0x6
	.2byte	0xda7
	.4byte	0x773
	.uleb128 0x8
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xdac
	.4byte	0x8eb
	.uleb128 0x5
	.asciz	"RE0"
	.byte	0x6
	.2byte	0xdad
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE1"
	.byte	0x6
	.2byte	0xdae
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE2"
	.byte	0x6
	.2byte	0xdaf
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE3"
	.byte	0x6
	.2byte	0xdb0
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE4"
	.byte	0x6
	.2byte	0xdb1
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE5"
	.byte	0x6
	.2byte	0xdb2
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE6"
	.byte	0x6
	.2byte	0xdb3
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE7"
	.byte	0x6
	.2byte	0xdb4
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTEBITS"
	.byte	0x6
	.2byte	0xdb5
	.4byte	0x844
	.uleb128 0x8
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xdd6
	.4byte	0x97d
	.uleb128 0x5
	.asciz	"TRISF0"
	.byte	0x6
	.2byte	0xdd7
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF1"
	.byte	0x6
	.2byte	0xdd8
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF3"
	.byte	0x6
	.2byte	0xdda
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF4"
	.byte	0x6
	.2byte	0xddb
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF5"
	.byte	0x6
	.2byte	0xddc
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISFBITS"
	.byte	0x6
	.2byte	0xddd
	.4byte	0x8fd
	.uleb128 0x8
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xde2
	.4byte	0xa00
	.uleb128 0x5
	.asciz	"RF0"
	.byte	0x6
	.2byte	0xde3
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF1"
	.byte	0x6
	.2byte	0xde4
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF3"
	.byte	0x6
	.2byte	0xde6
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF4"
	.byte	0x6
	.2byte	0xde7
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF5"
	.byte	0x6
	.2byte	0xde8
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTFBITS"
	.byte	0x6
	.2byte	0xde9
	.4byte	0x98f
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0xe70
	.4byte	0xaa3
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x6
	.2byte	0xe71
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SAMP"
	.byte	0x6
	.2byte	0xe72
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ASAM"
	.byte	0x6
	.2byte	0xe73
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC"
	.byte	0x6
	.2byte	0xe75
	.4byte	0xee
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM"
	.byte	0x6
	.2byte	0xe76
	.4byte	0xee
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADSIDL"
	.byte	0x6
	.2byte	0xe78
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADON"
	.byte	0x6
	.2byte	0xe7a
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0xe7c
	.4byte	0xb11
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x6
	.2byte	0xe7e
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC1"
	.byte	0x6
	.2byte	0xe7f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC2"
	.byte	0x6
	.2byte	0xe80
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM0"
	.byte	0x6
	.2byte	0xe81
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM1"
	.byte	0x6
	.2byte	0xe82
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x6
	.2byte	0xe6f
	.4byte	0xb25
	.uleb128 0x7
	.4byte	0xa12
	.uleb128 0x7
	.4byte	0xaa3
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xe6e
	.4byte	0xb46
	.uleb128 0x9
	.4byte	0xb11
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1CON1BITS"
	.byte	0x6
	.2byte	0xe85
	.4byte	0xb25
	.uleb128 0x8
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xf07
	.4byte	0xcb9
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x6
	.2byte	0xf08
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG1"
	.byte	0x6
	.2byte	0xf09
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG2"
	.byte	0x6
	.2byte	0xf0a
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG3"
	.byte	0x6
	.2byte	0xf0b
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG4"
	.byte	0x6
	.2byte	0xf0c
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG5"
	.byte	0x6
	.2byte	0xf0d
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG6"
	.byte	0x6
	.2byte	0xf0e
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG7"
	.byte	0x6
	.2byte	0xf0f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG8"
	.byte	0x6
	.2byte	0xf10
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG9"
	.byte	0x6
	.2byte	0xf11
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG10"
	.byte	0x6
	.2byte	0xf12
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG11"
	.byte	0x6
	.2byte	0xf13
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG12"
	.byte	0x6
	.2byte	0xf14
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG13"
	.byte	0x6
	.2byte	0xf15
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG14"
	.byte	0x6
	.2byte	0xf16
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG15"
	.byte	0x6
	.2byte	0xf17
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1PCFGBITS"
	.byte	0x6
	.2byte	0xf18
	.4byte	0xb5a
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0x173f
	.4byte	0xcff
	.uleb128 0x5
	.asciz	"RP20R"
	.byte	0x6
	.2byte	0x1740
	.4byte	0xee
	.byte	0x2
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R"
	.byte	0x6
	.2byte	0x1742
	.4byte	0xee
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x6
	.2byte	0x1744
	.4byte	0xe05
	.uleb128 0x5
	.asciz	"RP20R0"
	.byte	0x6
	.2byte	0x1745
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP20R1"
	.byte	0x6
	.2byte	0x1746
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP20R2"
	.byte	0x6
	.2byte	0x1747
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP20R3"
	.byte	0x6
	.2byte	0x1748
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP20R4"
	.byte	0x6
	.2byte	0x1749
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP20R5"
	.byte	0x6
	.2byte	0x174a
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R0"
	.byte	0x6
	.2byte	0x174c
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R1"
	.byte	0x6
	.2byte	0x174d
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R2"
	.byte	0x6
	.2byte	0x174e
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R3"
	.byte	0x6
	.2byte	0x174f
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R4"
	.byte	0x6
	.2byte	0x1750
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP21R5"
	.byte	0x6
	.2byte	0x1751
	.4byte	0xee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x6
	.2byte	0x173e
	.4byte	0xe19
	.uleb128 0x7
	.4byte	0xccd
	.uleb128 0x7
	.4byte	0xcff
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagRPOR10BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x173d
	.4byte	0xe39
	.uleb128 0x9
	.4byte	0xe05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"RPOR10BITS"
	.byte	0x6
	.2byte	0x1754
	.4byte	0xe19
	.uleb128 0xb
	.byte	0x3
	.byte	0x7
	.byte	0x38
	.4byte	0xf31
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x7
	.byte	0x39
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x7
	.byte	0x3a
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x7
	.byte	0x3f
	.4byte	0xce
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"periodicService"
	.byte	0x7
	.byte	0x41
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"little_endian"
	.byte	0x7
	.byte	0x47
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"high_impedance"
	.byte	0x7
	.byte	0x4c
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"int16"
	.byte	0x7
	.byte	0x51
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"write_with_read"
	.byte	0x7
	.byte	0x56
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"command_error"
	.byte	0x7
	.byte	0x5b
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x7
	.byte	0x5d
	.4byte	0xe4c
	.uleb128 0xe
	.byte	0x2
	.byte	0x8
	.byte	0x1b
	.4byte	0xfb0
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_5KHZ"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_50KHZ"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_100KHZ"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_MAXIMUM"
	.sleb128 3
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.4byte	0xfec
	.uleb128 0xf
	.asciz	"BITBANG_I2C_START_ONE_SHOT"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_I2C_RESTART"
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.byte	0xb4
	.4byte	0x1087
	.uleb128 0xf
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0xf
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0xf
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0xf
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0xf
	.asciz	"BP_PCATKBD"
	.sleb128 7
	.uleb128 0xf
	.asciz	"BP_PICPROG"
	.sleb128 8
	.uleb128 0xf
	.asciz	"BP_DIO"
	.sleb128 9
	.uleb128 0xf
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 10
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x9
	.byte	0xe9
	.4byte	0xff5
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.byte	0xee
	.4byte	0x10d0
	.uleb128 0xf
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0xf
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0xf
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x9
	.byte	0xf7
	.4byte	0x10af
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0xf9
	.4byte	0x11e1
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x9
	.byte	0xfa
	.4byte	0x11e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x9
	.byte	0xfb
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x9
	.byte	0xfc
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x9
	.byte	0xfd
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x9
	.byte	0xfe
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x9
	.byte	0xff
	.4byte	0x10d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.asciz	"bus_mode"
	.byte	0x9
	.2byte	0x100
	.4byte	0x1087
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.asciz	"quiet"
	.byte	0x9
	.2byte	0x101
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"overflow"
	.byte	0x9
	.2byte	0x102
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"basic"
	.byte	0x9
	.2byte	0x104
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0xce
	.uleb128 0xa
	.asciz	"bus_pirate_configuration_t"
	.byte	0x9
	.2byte	0x106
	.4byte	0x10f1
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x49
	.4byte	0x1359
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_GENERIC"
	.sleb128 0
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_BYTE_TRANSFER"
	.sleb128 1
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_CLOCK_TICKS_ADVANCE"
	.sleb128 2
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_BIT_TRANSFER"
	.sleb128 3
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_CONFIGURE_PERIPHERALS"
	.sleb128 4
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SET_PULLUP"
	.sleb128 5
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SET_SPEED"
	.sleb128 6
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_CONFIGURATION"
	.sleb128 8
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_PIC"
	.sleb128 10
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SMPS"
	.sleb128 15
	.byte	0x0
	.uleb128 0x3
	.asciz	"io_command_group"
	.byte	0x1
	.byte	0x54
	.4byte	0x120a
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x56
	.4byte	0x14df
	.uleb128 0xf
	.asciz	"IO_COMMAND_EXIT"
	.sleb128 0
	.uleb128 0xf
	.asciz	"IO_COMMAND_REPORT_ID_STRING"
	.sleb128 1
	.uleb128 0xf
	.asciz	"IO_COMMAND_SEND_I2C_START_BIT"
	.sleb128 2
	.uleb128 0xf
	.asciz	"IO_COMMAND_SEND_I2C_STOP_BIT"
	.sleb128 3
	.uleb128 0xf
	.asciz	"IO_COMMAND_CS_LOW"
	.sleb128 4
	.uleb128 0xf
	.asciz	"IO_COMMAND_CS_HIGH"
	.sleb128 5
	.uleb128 0xf
	.asciz	"IO_COMMAND_BITBANG_READ_BYTE"
	.sleb128 6
	.uleb128 0xf
	.asciz	"IO_COMMAND_BITBANG_READ_BIT"
	.sleb128 7
	.uleb128 0xf
	.asciz	"IO_COMMAND_PEEK_INPUT_BIT"
	.sleb128 8
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_TICK"
	.sleb128 9
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_LOW"
	.sleb128 10
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_HIGH"
	.sleb128 11
	.uleb128 0xf
	.asciz	"IO_COMMAND_DATA_LOW"
	.sleb128 12
	.uleb128 0xf
	.asciz	"IO_COMMAND_DATA_HIGH"
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.asciz	"wire_generic_command"
	.byte	0x1
	.byte	0x65
	.4byte	0x1371
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x67
	.4byte	0x1555
	.uleb128 0xf
	.asciz	"PIC_MODE_INVALID"
	.sleb128 0
	.uleb128 0xf
	.asciz	"PIC_MODE_416"
	.sleb128 1
	.uleb128 0xf
	.asciz	"PIC_MODE_424"
	.sleb128 2
	.uleb128 0xf
	.asciz	"PIC_MODE_614"
	.sleb128 3
	.uleb128 0xf
	.asciz	"PIC_MODE_COUNT"
	.sleb128 4
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6d
	.4byte	0x14fb
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x6f
	.4byte	0x159a
	.uleb128 0xf
	.asciz	"PIC_USER_COMMAND_WRITE"
	.sleb128 1
	.uleb128 0xf
	.asciz	"PIC_USER_COMMAND_READ"
	.sleb128 2
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x74
	.4byte	0x161a
	.uleb128 0xf
	.asciz	"PIC_COMMAND_SET_MODE"
	.sleb128 160
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE"
	.sleb128 164
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE_AND_READ_BITS"
	.sleb128 165
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE_AND_READ_COMMANDS"
	.sleb128 167
	.byte	0x0
	.uleb128 0x3
	.asciz	"pic_command"
	.byte	0x1
	.byte	0x79
	.4byte	0x159a
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x7b
	.4byte	0x1684
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_GET_OUTPUT_VOLTAGE"
	.sleb128 240
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_STOP"
	.sleb128 241
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_START"
	.sleb128 242
	.byte	0x0
	.uleb128 0x3
	.asciz	"smps_command"
	.byte	0x1
	.byte	0x7f
	.4byte	0x162d
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x81
	.4byte	0x187d
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RESET"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SPI"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_I2C"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_UART"
	.sleb128 3
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_1WIRE"
	.sleb128 4
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RAW_WIRE"
	.sleb128 5
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_OPENOCD"
	.sleb128 6
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_PIC"
	.sleb128 7
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RETURN_TO_TERMINAL"
	.sleb128 15
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SHORT_SELF_TEST"
	.sleb128 16
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_FULL_SELF_TEST"
	.sleb128 17
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SETUP_PWM"
	.sleb128 18
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_CLEAR_PWM"
	.sleb128 19
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_ADC_ONE_SHOT"
	.sleb128 20
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_ADC_CONTINUOUS"
	.sleb128 21
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_FREQUENCY_COUNT"
	.sleb128 22
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_JTAG_XSVF"
	.sleb128 24
	.byte	0x0
	.uleb128 0x3
	.asciz	"bitbang_command"
	.byte	0x1
	.byte	0x93
	.4byte	0x1698
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.2byte	0x138
	.4byte	0x18db
	.uleb128 0x5
	.asciz	"wires"
	.byte	0x1
	.2byte	0x139
	.4byte	0xce
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x13a
	.4byte	0xce
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"reserved"
	.byte	0x1
	.2byte	0x13b
	.4byte	0xce
	.byte	0x1
	.byte	0x5
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"binary_io_state_t"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x1894
	.uleb128 0x14
	.asciz	"bp_enable_pullup"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_voltage_regulator"
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_mode_led"
	.byte	0x2
	.byte	0x81
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_mode_led"
	.byte	0x2
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.asciz	"pic24_send_nop_opcode"
	.byte	0x1
	.2byte	0x31c
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.asciz	"pic614_write"
	.byte	0x1
	.2byte	0x2e9
	.byte	0x1
	.byte	0x3
	.4byte	0x1a15
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x1a15
	.uleb128 0x17
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x1a15
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2ea
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x18
	.4byte	0xce
	.uleb128 0x16
	.asciz	"pic614_read"
	.byte	0x1
	.2byte	0x2e2
	.byte	0x1
	.byte	0x3
	.4byte	0x1a3d
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"pic416_read"
	.byte	0x1
	.2byte	0x2f3
	.byte	0x1
	.byte	0x3
	.4byte	0x1a60
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command_write"
	.byte	0x1
	.2byte	0x3f7
	.byte	0x1
	.byte	0x3
	.4byte	0x1ac2
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	0x1aa1
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x400
	.4byte	0x14d
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1ab3
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x405
	.4byte	0x14d
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x40f
	.4byte	0x14d
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command_write_and_read_bits"
	.byte	0x1
	.2byte	0x417
	.byte	0x1
	.byte	0x3
	.4byte	0x1b48
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x41e
	.4byte	0xce
	.uleb128 0x1a
	.4byte	0x1b1f
	.uleb128 0x19
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x421
	.4byte	0xce
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x423
	.4byte	0x14d
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x42d
	.4byte	0x14d
	.uleb128 0x1b
	.uleb128 0x1c
	.asciz	"payload_pointer"
	.byte	0x1
	.2byte	0x42e
	.4byte	0x1b48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x1a15
	.uleb128 0x16
	.asciz	"handle_pic_command_write_and_read_commands"
	.byte	0x1
	.2byte	0x43b
	.byte	0x1
	.byte	0x3
	.4byte	0x1bde
	.uleb128 0x1c
	.asciz	"write_commands"
	.byte	0x1
	.2byte	0x43c
	.4byte	0xce
	.uleb128 0x1c
	.asciz	"read_commands"
	.byte	0x1
	.2byte	0x43d
	.4byte	0xce
	.uleb128 0x1c
	.asciz	"commands"
	.byte	0x1
	.2byte	0x43e
	.4byte	0x14d
	.uleb128 0x1c
	.asciz	"index"
	.byte	0x1
	.2byte	0x457
	.4byte	0x14d
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x44f
	.4byte	0x14d
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.asciz	"bp_set_mode_led_state"
	.byte	0x2
	.byte	0x8b
	.byte	0x1
	.byte	0x3
	.4byte	0x1c0b
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x8b
	.4byte	0x1c0b
	.byte	0x0
	.uleb128 0x18
	.4byte	0xfec
	.uleb128 0x14
	.asciz	"bp_toggle_mode_led"
	.byte	0x2
	.byte	0x93
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.asciz	"bp_set_voltage_regulator_state"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.4byte	0x1c5e
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x68
	.4byte	0xfec
	.byte	0x0
	.uleb128 0x1d
	.asciz	"bp_set_pullup_state"
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.4byte	0x1c89
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x52
	.4byte	0xfec
	.byte	0x0
	.uleb128 0x14
	.asciz	"bp_disable_3v3_pullup"
	.byte	0x3
	.byte	0xd1
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_3v3_pullup"
	.byte	0x3
	.byte	0xcb
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_5v0_pullup"
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.asciz	"handle_wire_generic_command"
	.byte	0x1
	.2byte	0x33b
	.byte	0x1
	.4byte	0xfec
	.byte	0x3
	.4byte	0x1d1d
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x33b
	.4byte	0x1d1d
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x35a
	.4byte	0xee
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x14df
	.uleb128 0x16
	.asciz	"handle_bulk_byte_transfer"
	.byte	0x1
	.2byte	0x38d
	.byte	0x1
	.byte	0x3
	.4byte	0x1d7d
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x38d
	.4byte	0x1a15
	.uleb128 0x1c
	.asciz	"bytes"
	.byte	0x1
	.2byte	0x38e
	.4byte	0x14d
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x391
	.4byte	0x14d
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x392
	.4byte	0xee
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bulk_clock_ticks_advance"
	.byte	0x1
	.2byte	0x3a4
	.byte	0x1
	.byte	0x3
	.4byte	0x1db4
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bulk_bit_transfer"
	.byte	0x1
	.2byte	0x3a9
	.byte	0x1
	.byte	0x3
	.4byte	0x1e0c
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x1a15
	.uleb128 0x1c
	.asciz	"bits"
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x14d
	.uleb128 0x1c
	.asciz	"byte"
	.byte	0x1
	.2byte	0x3ad
	.4byte	0xce
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x14d
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command"
	.byte	0x1
	.2byte	0x3d6
	.byte	0x1
	.byte	0x3
	.4byte	0x1e44
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3d6
	.4byte	0x1e44
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x3da
	.4byte	0xce
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x161a
	.uleb128 0x16
	.asciz	"handle_set_pullup"
	.byte	0x1
	.2byte	0x3b6
	.byte	0x1
	.byte	0x3
	.4byte	0x1e72
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3b6
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_configure_peripherals"
	.byte	0x1
	.2byte	0x3be
	.byte	0x1
	.byte	0x3
	.4byte	0x1ea6
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3be
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_set_speed"
	.byte	0x1
	.2byte	0x3c3
	.byte	0x1
	.byte	0x3
	.4byte	0x1ece
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3c3
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_configuration"
	.byte	0x1
	.2byte	0x3cb
	.byte	0x1
	.byte	0x3
	.4byte	0x1efa
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x1a15
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_smps_command"
	.byte	0x1
	.2byte	0x49a
	.byte	0x1
	.byte	0x3
	.4byte	0x1f25
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x49a
	.4byte	0x1f25
	.byte	0x0
	.uleb128 0x18
	.4byte	0x1684
	.uleb128 0x16
	.asciz	"handle_setup_pwm"
	.byte	0x1
	.2byte	0x50f
	.byte	0x1
	.byte	0x3
	.4byte	0x1f68
	.uleb128 0x1c
	.asciz	"duty_cycle"
	.byte	0x1
	.2byte	0x54d
	.4byte	0xee
	.uleb128 0x1c
	.asciz	"period"
	.byte	0x1
	.2byte	0x570
	.4byte	0xee
	.byte	0x0
	.uleb128 0x15
	.asciz	"handle_clear_pwm"
	.byte	0x1
	.2byte	0x4b9
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.asciz	"handle_read_adc_one_shot"
	.byte	0x1
	.2byte	0x4f2
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.asciz	"handle_read_adc_continuously"
	.byte	0x1
	.2byte	0x4f8
	.byte	0x1
	.byte	0x3
	.4byte	0x1fda
	.uleb128 0x1c
	.asciz	"should_loop"
	.byte	0x1
	.2byte	0x4f9
	.4byte	0xfec
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_frequency_measurement"
	.byte	0x1
	.2byte	0x506
	.byte	0x1
	.byte	0x3
	.4byte	0x2014
	.uleb128 0x1c
	.asciz	"frequency"
	.byte	0x1
	.2byte	0x507
	.4byte	0x10e
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bitbang_command"
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.byte	0x3
	.4byte	0x2042
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x17a
	.4byte	0x2042
	.byte	0x0
	.uleb128 0x18
	.4byte	0x187d
	.uleb128 0x20
	.asciz	"read_and_transmit_adc_measurement"
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x5f
	.4byte	0x208b
	.uleb128 0x21
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x4ed
	.4byte	0xee
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x22
	.asciz	"send_binary_io_mode_identifier"
	.byte	0x1
	.2byte	0x168
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.asciz	"pic416_write"
	.byte	0x1
	.2byte	0x2fa
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x213b
	.uleb128 0x23
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x1a15
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x1a15
	.byte	0x1
	.byte	0x5b
	.uleb128 0x23
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2fb
	.4byte	0x1a15
	.byte	0x1
	.byte	0x5c
	.uleb128 0x24
	.asciz	"delay"
	.byte	0x1
	.2byte	0x2fc
	.4byte	0xce
	.byte	0x1
	.byte	0x5a
	.uleb128 0x24
	.asciz	"id"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0xce
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.4byte	.LBB199
	.4byte	.LBE199
	.uleb128 0x24
	.asciz	"index"
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x14d
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"pic24_send_six_payload"
	.byte	0x1
	.2byte	0x30f
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0x2178
	.uleb128 0x26
	.asciz	"payload"
	.byte	0x1
	.2byte	0x30f
	.4byte	0x1b48
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x20
	.asciz	"pic424_write"
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x21df
	.uleb128 0x26
	.asciz	"payload"
	.byte	0x1
	.2byte	0x320
	.4byte	0x1b48
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.asciz	"nops"
	.byte	0x1
	.2byte	0x320
	.4byte	0x21df
	.byte	0x1
	.byte	0x5a
	.uleb128 0x25
	.4byte	.LBB200
	.4byte	.LBE200
	.uleb128 0x21
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x324
	.4byte	0x14d
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.4byte	0x19bd
	.4byte	.LBB201
	.4byte	.LBE201
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x14d
	.uleb128 0x20
	.asciz	"send_bits"
	.byte	0x1
	.2byte	0x2d9
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x2249
	.uleb128 0x23
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x1a15
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.asciz	"count"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x21df
	.byte	0x1
	.byte	0x5a
	.uleb128 0x24
	.asciz	"bits"
	.byte	0x1
	.2byte	0x2da
	.4byte	0xce
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.4byte	.LBB203
	.4byte	.LBE203
	.uleb128 0x24
	.asciz	"index"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x14d
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"pic424_read"
	.byte	0x1
	.2byte	0x329
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x228f
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x332
	.4byte	0xce
	.uleb128 0x27
	.4byte	0x19bd
	.4byte	.LBB204
	.4byte	.LBE204
	.uleb128 0x27
	.4byte	0x19bd
	.4byte	.LBB206
	.4byte	.LBE206
	.byte	0x0
	.uleb128 0x20
	.asciz	"binary_io_self_test"
	.byte	0x1
	.2byte	0x230
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x2348
	.uleb128 0x26
	.asciz	"jumper_test"
	.byte	0x1
	.2byte	0x230
	.4byte	0x1c0b
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.asciz	"tick"
	.byte	0x1
	.2byte	0x231
	.4byte	0x2348
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x24
	.asciz	"errors"
	.byte	0x1
	.2byte	0x233
	.4byte	0xce
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.4byte	0x1bde
	.4byte	.LBB208
	.4byte	.LBE208
	.4byte	0x231e
	.uleb128 0x29
	.4byte	0x1bfd
	.uleb128 0x27
	.4byte	0x1965
	.4byte	.LBB210
	.4byte	.LBE210
	.uleb128 0x27
	.4byte	0x197d
	.4byte	.LBB212
	.4byte	.LBE212
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	0x233a
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x239
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1c10
	.4byte	.LBB215
	.4byte	.LBE215
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xee
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bitbang_pin_direction_set"
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1
	.4byte	0xce
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x2399
	.uleb128 0x26
	.asciz	"direction_mask"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x1a15
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bitbang_pin_state_set"
	.byte	0x1
	.2byte	0x216
	.byte	0x1
	.4byte	0xce
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x243b
	.uleb128 0x26
	.asciz	"state_mask"
	.byte	0x1
	.2byte	0x216
	.4byte	0x1a15
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	0x1c28
	.4byte	.LBB217
	.4byte	.LBE217
	.4byte	0x240d
	.uleb128 0x29
	.4byte	0x1c50
	.uleb128 0x27
	.4byte	0x1922
	.4byte	.LBB219
	.4byte	.LBE219
	.uleb128 0x27
	.4byte	0x1943
	.4byte	.LBB221
	.4byte	.LBE221
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1c5e
	.4byte	.LBB223
	.4byte	.LBE223
	.uleb128 0x29
	.4byte	0x1c7b
	.uleb128 0x27
	.4byte	0x18f5
	.4byte	.LBB225
	.4byte	.LBE225
	.uleb128 0x27
	.4byte	0x190b
	.4byte	.LBB227
	.4byte	.LBE227
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"reset_state"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x2468
	.uleb128 0x27
	.4byte	0x1c89
	.4byte	.LBB229
	.4byte	.LBE229
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.asciz	"bp_binary_io_peripherals_set"
	.byte	0x1
	.2byte	0x24d
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x2509
	.uleb128 0x26
	.asciz	"inByte"
	.byte	0x1
	.2byte	0x24d
	.4byte	0xdd
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	0x1c28
	.4byte	.LBB231
	.4byte	.LBE231
	.4byte	0x24db
	.uleb128 0x29
	.4byte	0x1c50
	.uleb128 0x27
	.4byte	0x1922
	.4byte	.LBB233
	.4byte	.LBE233
	.uleb128 0x27
	.4byte	0x1943
	.4byte	.LBB235
	.4byte	.LBE235
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1c5e
	.4byte	.LBB237
	.4byte	.LBE237
	.uleb128 0x29
	.4byte	0x1c7b
	.uleb128 0x27
	.4byte	0x18f5
	.4byte	.LBB239
	.4byte	.LBE239
	.uleb128 0x27
	.4byte	0x190b
	.4byte	.LBB241
	.4byte	.LBE241
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bp_binary_io_pullup_control"
	.byte	0x1
	.2byte	0x265
	.byte	0x1
	.4byte	0xfec
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x25b7
	.uleb128 0x26
	.asciz	"control_byte"
	.byte	0x1
	.2byte	0x265
	.4byte	0xce
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.asciz	"has_voltage"
	.byte	0x1
	.2byte	0x273
	.4byte	0xfec
	.uleb128 0x27
	.4byte	0x1c89
	.4byte	.LBB243
	.4byte	.LBE243
	.uleb128 0x27
	.4byte	0x1996
	.4byte	.LBB245
	.4byte	.LBE245
	.uleb128 0x27
	.4byte	0x19a9
	.4byte	.LBB247
	.4byte	.LBE247
	.uleb128 0x27
	.4byte	0x1ca4
	.4byte	.LBB249
	.4byte	.LBE249
	.uleb128 0x27
	.4byte	0x1cbe
	.4byte	.LBB251
	.4byte	.LBE251
	.uleb128 0x27
	.4byte	0x1c89
	.4byte	.LBB253
	.4byte	.LBE253
	.byte	0x0
	.uleb128 0x20
	.asciz	"binary_io_raw_wire_mode_handler"
	.byte	0x1
	.2byte	0x292
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x28d4
	.uleb128 0x1c
	.asciz	"keep_looping"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0xfec
	.uleb128 0x25
	.4byte	.LBB255
	.4byte	.LBE255
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xce
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.4byte	0x1ece
	.4byte	.LBB256
	.4byte	.LBE256
	.4byte	0x262d
	.uleb128 0x29
	.4byte	0x1eed
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1cd8
	.4byte	.LBB259
	.4byte	.LBE259
	.4byte	0x2655
	.uleb128 0x29
	.4byte	0x1d02
	.uleb128 0x25
	.4byte	.LBB261
	.4byte	.LBE261
	.uleb128 0x2f
	.4byte	0x1d0f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1d22
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	0x269d
	.uleb128 0x29
	.4byte	0x1d46
	.uleb128 0x25
	.4byte	.LBB265
	.4byte	.LBE265
	.uleb128 0x2f
	.4byte	0x1d52
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.4byte	.LBB266
	.4byte	.LBE266
	.uleb128 0x2f
	.4byte	0x1d61
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.4byte	.LBB267
	.4byte	.LBE267
	.uleb128 0x30
	.4byte	0x1d6e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1d7d
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	0x26b4
	.uleb128 0x29
	.4byte	0x1da7
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1db4
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	0x26f2
	.uleb128 0x29
	.4byte	0x1dd7
	.uleb128 0x25
	.4byte	.LBB271
	.4byte	.LBE271
	.uleb128 0x2f
	.4byte	0x1de3
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.4byte	0x1df0
	.uleb128 0x25
	.4byte	.LBB272
	.4byte	.LBE272
	.uleb128 0x2f
	.4byte	0x1dfe
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1e0c
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	0x287a
	.uleb128 0x29
	.4byte	0x1e29
	.uleb128 0x2a
	.4byte	.LBB275
	.4byte	.LBE275
	.4byte	0x271d
	.uleb128 0x2f
	.4byte	0x1e36
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1a60
	.4byte	.LBB276
	.4byte	.LBE276
	.4byte	0x277b
	.uleb128 0x25
	.4byte	.LBB277
	.4byte	.LBE277
	.uleb128 0x2f
	.4byte	0x1a83
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.4byte	.LBB278
	.4byte	.LBE278
	.4byte	0x2753
	.uleb128 0x2f
	.4byte	0x1a94
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	0x2768
	.uleb128 0x2f
	.4byte	0x1ab4
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB280
	.4byte	.LBE280
	.uleb128 0x2f
	.4byte	0x1aa6
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1ac2
	.4byte	.LBB282
	.4byte	.LBE282
	.4byte	0x27e4
	.uleb128 0x25
	.4byte	.LBB283
	.4byte	.LBE283
	.uleb128 0x2f
	.4byte	0x1af3
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	0x27c0
	.uleb128 0x2f
	.4byte	0x1b20
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.4byte	.LBB285
	.4byte	.LBE285
	.uleb128 0x30
	.4byte	0x1b2d
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB286
	.4byte	.LBE286
	.uleb128 0x2f
	.4byte	0x1b04
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.4byte	.LBB287
	.4byte	.LBE287
	.uleb128 0x2f
	.4byte	0x1b11
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1b4e
	.4byte	.LBB289
	.4byte	.LBE289
	.uleb128 0x25
	.4byte	.LBB290
	.4byte	.LBE290
	.uleb128 0x2f
	.4byte	0x1b83
	.byte	0x1
	.byte	0x58
	.uleb128 0x2f
	.4byte	0x1b9a
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x2f
	.4byte	0x1bb0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.4byte	0x1bc1
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.4byte	.LBB291
	.4byte	.LBE291
	.4byte	0x282c
	.uleb128 0x2f
	.4byte	0x1bd0
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x28
	.4byte	0x19d9
	.4byte	.LBB292
	.4byte	.LBE292
	.4byte	0x284d
	.uleb128 0x29
	.4byte	0x1a08
	.uleb128 0x29
	.4byte	0x19fc
	.uleb128 0x29
	.4byte	0x19f0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1a1a
	.4byte	.LBB294
	.4byte	.LBE294
	.4byte	0x2864
	.uleb128 0x29
	.4byte	0x1a30
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1a3d
	.4byte	.LBB296
	.4byte	.LBE296
	.uleb128 0x29
	.4byte	0x1a53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1e49
	.4byte	.LBB298
	.4byte	.LBE298
	.4byte	0x2891
	.uleb128 0x29
	.4byte	0x1e65
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1e72
	.4byte	.LBB300
	.4byte	.LBE300
	.4byte	0x28a8
	.uleb128 0x29
	.4byte	0x1e99
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1ea6
	.4byte	.LBB302
	.4byte	.LBE302
	.4byte	0x28bf
	.uleb128 0x29
	.4byte	0x1ec1
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1efa
	.4byte	.LBB305
	.4byte	.LBE305
	.uleb128 0x29
	.4byte	0x1f18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.asciz	"enter_binary_bitbang_mode"
	.byte	0x1
	.2byte	0x16a
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x2a17
	.uleb128 0x27
	.4byte	0x1965
	.4byte	.LBB307
	.4byte	.LBE307
	.uleb128 0x25
	.4byte	.LBB309
	.4byte	.LBE309
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x170
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.4byte	0x2014
	.4byte	.LBB310
	.4byte	.LBE310
	.uleb128 0x29
	.4byte	0x2035
	.uleb128 0x27
	.4byte	0x197d
	.4byte	.LBB312
	.4byte	.LBE312
	.uleb128 0x28
	.4byte	0x1f2a
	.4byte	.LBB314
	.4byte	.LBE314
	.4byte	0x296b
	.uleb128 0x25
	.4byte	.LBB315
	.4byte	.LBE315
	.uleb128 0x30
	.4byte	0x1f45
	.uleb128 0x30
	.4byte	0x1f58
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1f68
	.4byte	.LBB316
	.4byte	.LBE316
	.uleb128 0x28
	.4byte	0x1f7f
	.4byte	.LBB318
	.4byte	.LBE318
	.4byte	0x29a4
	.uleb128 0x27
	.4byte	0x1996
	.4byte	.LBB320
	.4byte	.LBE320
	.uleb128 0x27
	.4byte	0x19a9
	.4byte	.LBB322
	.4byte	.LBE322
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1f9e
	.4byte	.LBB324
	.4byte	.LBE324
	.4byte	0x29df
	.uleb128 0x25
	.4byte	.LBB325
	.4byte	.LBE325
	.uleb128 0x30
	.4byte	0x1fc5
	.uleb128 0x27
	.4byte	0x1996
	.4byte	.LBB326
	.4byte	.LBE326
	.uleb128 0x27
	.4byte	0x19a9
	.4byte	.LBB328
	.4byte	.LBE328
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1fda
	.4byte	.LBB330
	.4byte	.LBE330
	.4byte	0x2a07
	.uleb128 0x25
	.4byte	.LBB331
	.4byte	.LBE331
	.uleb128 0x2f
	.4byte	0x2001
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1922
	.4byte	.LBB332
	.4byte	.LBE332
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.asciz	"PR2"
	.byte	0x6
	.2byte	0x52e
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T2CON"
	.byte	0x6
	.2byte	0x532
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF9
	.byte	0x6
	.2byte	0x548
	.4byte	0x2a43
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x269
	.uleb128 0x31
	.asciz	"T4CON"
	.byte	0x6
	.2byte	0x56d
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5CON1"
	.byte	0x6
	.2byte	0x8bc
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5RS"
	.byte	0x6
	.2byte	0x8f8
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5R"
	.byte	0x6
	.2byte	0x8fa
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF10
	.byte	0x6
	.2byte	0xce4
	.4byte	0x2a97
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x3e8
	.uleb128 0x32
	.4byte	.LASF11
	.byte	0x6
	.2byte	0xcfa
	.4byte	0x2aaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x537
	.uleb128 0x31
	.asciz	"TRISD"
	.byte	0x6
	.2byte	0xd55
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF12
	.byte	0x6
	.2byte	0xd64
	.4byte	0x2acd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x65e
	.uleb128 0x32
	.4byte	.LASF13
	.byte	0x6
	.2byte	0xd76
	.4byte	0x2ae0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x761
	.uleb128 0x31
	.asciz	"LATD"
	.byte	0x6
	.2byte	0xd79
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF14
	.byte	0x6
	.2byte	0xda8
	.4byte	0x2b02
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x832
	.uleb128 0x32
	.4byte	.LASF15
	.byte	0x6
	.2byte	0xdb6
	.4byte	0x2b15
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x8eb
	.uleb128 0x32
	.4byte	.LASF16
	.byte	0x6
	.2byte	0xdde
	.4byte	0x2b28
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x97d
	.uleb128 0x32
	.4byte	.LASF17
	.byte	0x6
	.2byte	0xdea
	.4byte	0x2b3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0xa00
	.uleb128 0x32
	.4byte	.LASF18
	.byte	0x6
	.2byte	0xe86
	.4byte	0x2b4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0xb46
	.uleb128 0x32
	.4byte	.LASF19
	.byte	0x6
	.2byte	0xf19
	.4byte	0x2b61
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0xcb9
	.uleb128 0x32
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x1755
	.4byte	0x2b74
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0xe39
	.uleb128 0x33
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3d
	.4byte	0xf31
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3e
	.4byte	0x11e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	0xce
	.4byte	0x2ba3
	.uleb128 0x35
	.4byte	0xfe
	.byte	0xb
	.byte	0x0
	.uleb128 0x36
	.asciz	"PIC24_WRITE_AND_READ_PAYLOAD"
	.byte	0x1
	.byte	0x9d
	.4byte	0x2bcd
	.byte	0x5
	.byte	0x3
	.4byte	_PIC24_WRITE_AND_READ_PAYLOAD
	.uleb128 0x18
	.4byte	0x2b93
	.uleb128 0x34
	.4byte	0xce
	.4byte	0x2be2
	.uleb128 0x35
	.4byte	0xfe
	.byte	0x2
	.byte	0x0
	.uleb128 0x36
	.asciz	"PIC24_NOP_PAYLOAD"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c01
	.byte	0x5
	.byte	0x3
	.4byte	_PIC24_NOP_PAYLOAD
	.uleb128 0x18
	.4byte	0x2bd2
	.uleb128 0x24
	.asciz	"io_state"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x18db
	.byte	0x5
	.byte	0x3
	.4byte	_io_state
	.uleb128 0x31
	.asciz	"PR2"
	.byte	0x6
	.2byte	0x52e
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T2CON"
	.byte	0x6
	.2byte	0x532
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF9
	.byte	0x6
	.2byte	0x548
	.4byte	0x2a43
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T4CON"
	.byte	0x6
	.2byte	0x56d
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5CON1"
	.byte	0x6
	.2byte	0x8bc
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5RS"
	.byte	0x6
	.2byte	0x8f8
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5R"
	.byte	0x6
	.2byte	0x8fa
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF10
	.byte	0x6
	.2byte	0xce4
	.4byte	0x2a97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF11
	.byte	0x6
	.2byte	0xcfa
	.4byte	0x2aaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"TRISD"
	.byte	0x6
	.2byte	0xd55
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF12
	.byte	0x6
	.2byte	0xd64
	.4byte	0x2acd
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF13
	.byte	0x6
	.2byte	0xd76
	.4byte	0x2ae0
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"LATD"
	.byte	0x6
	.2byte	0xd79
	.4byte	0x2348
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF14
	.byte	0x6
	.2byte	0xda8
	.4byte	0x2b02
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF15
	.byte	0x6
	.2byte	0xdb6
	.4byte	0x2b15
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF16
	.byte	0x6
	.2byte	0xdde
	.4byte	0x2b28
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF17
	.byte	0x6
	.2byte	0xdea
	.4byte	0x2b3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF18
	.byte	0x6
	.2byte	0xe86
	.4byte	0x2b4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF19
	.byte	0x6
	.2byte	0xf19
	.4byte	0x2b61
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x1755
	.4byte	0x2b74
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3d
	.4byte	0xf31
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3e
	.4byte	0x11e7
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x3
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
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xa5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2d5e
	.4byte	0x234d
	.asciz	"bitbang_pin_direction_set"
	.4byte	0x2399
	.asciz	"bitbang_pin_state_set"
	.4byte	0x2468
	.asciz	"bp_binary_io_peripherals_set"
	.4byte	0x2509
	.asciz	"bp_binary_io_pullup_control"
	.4byte	0x28d4
	.asciz	"enter_binary_bitbang_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x2be
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2d5e
	.4byte	0xce
	.asciz	"uint8_t"
	.4byte	0xee
	.asciz	"uint16_t"
	.4byte	0x10e
	.asciz	"uint32_t"
	.4byte	0x14d
	.asciz	"size_t"
	.4byte	0x24a
	.asciz	"tagT2CONBITS"
	.4byte	0x269
	.asciz	"T2CONBITS"
	.4byte	0x27b
	.asciz	"tagTRISBBITS"
	.4byte	0x3e8
	.asciz	"TRISBBITS"
	.4byte	0x3fa
	.asciz	"tagPORTBBITS"
	.4byte	0x537
	.asciz	"PORTBBITS"
	.4byte	0x549
	.asciz	"tagTRISDBITS"
	.4byte	0x65e
	.asciz	"TRISDBITS"
	.4byte	0x670
	.asciz	"tagPORTDBITS"
	.4byte	0x761
	.asciz	"PORTDBITS"
	.4byte	0x773
	.asciz	"tagTRISEBITS"
	.4byte	0x832
	.asciz	"TRISEBITS"
	.4byte	0x844
	.asciz	"tagPORTEBITS"
	.4byte	0x8eb
	.asciz	"PORTEBITS"
	.4byte	0x8fd
	.asciz	"tagTRISFBITS"
	.4byte	0x97d
	.asciz	"TRISFBITS"
	.4byte	0x98f
	.asciz	"tagPORTFBITS"
	.4byte	0xa00
	.asciz	"PORTFBITS"
	.4byte	0xb25
	.asciz	"tagAD1CON1BITS"
	.4byte	0xb46
	.asciz	"AD1CON1BITS"
	.4byte	0xb5a
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xcb9
	.asciz	"AD1PCFGBITS"
	.4byte	0xe19
	.asciz	"tagRPOR10BITS"
	.4byte	0xe39
	.asciz	"RPOR10BITS"
	.4byte	0xf31
	.asciz	"mode_configuration_t"
	.4byte	0x1087
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0x10d0
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0x11e7
	.asciz	"bus_pirate_configuration_t"
	.4byte	0x1359
	.asciz	"io_command_group"
	.4byte	0x14df
	.asciz	"wire_generic_command"
	.4byte	0x1555
	.asciz	"pic_mode"
	.4byte	0x161a
	.asciz	"pic_command"
	.4byte	0x1684
	.asciz	"smps_command"
	.4byte	0x187d
	.asciz	"bitbang_command"
	.4byte	0x18db
	.asciz	"binary_io_state_t"
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
	.asciz	"AD1CON1bits"
.LASF4:
	.asciz	"value"
.LASF17:
	.asciz	"PORTFbits"
.LASF11:
	.asciz	"PORTBbits"
.LASF1:
	.asciz	"command"
.LASF9:
	.asciz	"T2CONbits"
.LASF8:
	.asciz	"input_byte"
.LASF7:
	.asciz	"counter"
.LASF0:
	.asciz	"pic_mode"
.LASF6:
	.asciz	"offset"
.LASF16:
	.asciz	"TRISFbits"
.LASF12:
	.asciz	"TRISDbits"
.LASF2:
	.asciz	"data_low"
.LASF13:
	.asciz	"PORTDbits"
.LASF22:
	.asciz	"bus_pirate_configuration"
.LASF14:
	.asciz	"TRISEbits"
.LASF5:
	.asciz	"commands_count"
.LASF19:
	.asciz	"AD1PCFGbits"
.LASF3:
	.asciz	"data_high"
.LASF15:
	.asciz	"PORTEbits"
.LASF21:
	.asciz	"mode_configuration"
.LASF10:
	.asciz	"TRISBbits"
.LASF20:
	.asciz	"RPOR10bits"
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
