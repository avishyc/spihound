	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\base.c"
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
	.type	_clear_mode_configuration,@function
_clear_mode_configuration:
.LFB24:
	.file 1 "../base.c"
	.loc 1 157 0
	.set ___PA___,1
	.loc 1 158 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w2
	bclr.b	w2,#4
	.loc 1 159 0
	dec2	w0,w1
	clr.b	[w1]
	.loc 1 162 0
	mov.b	#-32,w1
	and.b	w2,w1,[w0]
	.loc 1 163 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_clear_mode_configuration, .-_clear_mode_configuration
	.align	2
	.type	_delay_long,@function
_delay_long:
.LFB48:
	.loc 1 585 0
	.set ___PA___,1
	.loc 1 586 0
	sub	w0,#0,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,39
	bra	z,.L2
	.loc 1 590 0
	add	w0,w0,w0
	addc	w1,w1,w1
	sub	w0,#1,w6
	subb	w1,#0,w7
	.loc 1 591 0
	mov	_TMR1,w0
.LBB20:
	.loc 1 601 0
	mov	#32766,w3
.L8:
	.loc 1 594 0
	mov	_TMR1,w2
	.loc 1 595 0
	sub	w2,w0,w1
	.loc 1 597 0
	mul.uu	w1,#1,w4
	sub	w4,w6,[w15]
	subb	w5,w7,[w15]
	.set ___BP___,4
	bra	geu,.L2
	.loc 1 601 0
	sub	w1,w3,[w15]
	.set ___BP___,86
	bra	leu,.L8
	.loc 1 602 0
	sub	w6,w4,w6
	subb	w7,w5,w7
	.loc 1 594 0
	mov	w2,w0
	bra	.L8
.L2:
.LBE20:
	.loc 1 606 0
	return	
	.set ___PA___,0
.LFE48:
	.size	_delay_long, .-_delay_long
	.align	2
	.global	_bp_reset_board_state	; export
	.type	_bp_reset_board_state,@function
_bp_reset_board_state:
.LFB25:
	.loc 1 165 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI0:
	.loc 1 166 0
	bset.b	_TRISDbits,#1
	.loc 1 167 0
	bset.b	_TRISDbits,#2
	.loc 1 168 0
	bset.b	_TRISDbits,#3
	.loc 1 169 0
	bset.b	_TRISDbits,#4
	.loc 1 170 0
	bset.b	_TRISDbits,#5
.LBB21:
.LBB22:
	.file 2 "../hardware.h"
	.loc 2 135 0
	bclr.b	_TRISBbits+1,#0
	.loc 2 136 0
	bclr.b	_PORTBbits+1,#0
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.file 3 "../hardwarev4.h"
	.loc 3 181 0
	bclr.b	_TRISBbits+1,#2
	.loc 3 182 0
	bset.b	_PORTBbits+1,#2
.LBE24:
.LBE23:
	.loc 1 174 0
	mov	#224,w8
	mov	w8,w0
	ior	_TRISE
	mov	#-225,w0
	and	_LATE
	.loc 1 175 0
	bset.b	_TRISCbits+1,#6
	bset.b	_CNPU1,#0
	bset.b	_CNEN1,#0
	bclr.b	_IEC1bits,#3
	bclr.b	_IFS1bits,#3
.LBB25:
.LBB26:
	.loc 3 210 0
	bset.b	_TRISFbits,#5
	.loc 3 211 0
	bclr.b	_PORTFbits,#4
	.loc 3 212 0
	bset.b	_TRISFbits,#4
.LBE26:
.LBE25:
	.loc 1 177 0
	call	_eeprom_initialize
	.loc 1 181 0
	mov	#-64,w0
	and	_RPOR10bits
	.loc 1 183 0
	mov	#_bus_pirate_configuration+9,w0
	clr.b	[w0]
	.loc 1 184 0
	call	_clear_mode_configuration
.LBB27:
.LBB28:
	.loc 2 78 0
	bclr.b	_PORTEbits,#4
	.loc 2 79 0
	bclr.b	_TRISEbits,#4
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 2 96 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 97 0
	bclr.b	_PORTBbits+1,#1
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 3 196 0
	bclr.b	_AD1PCFGbits,#2
	.loc 3 197 0
	bclr.b	_AD1PCFGbits,#1
	.loc 3 198 0
	bclr.b	_AD1PCFGbits,#0
	.loc 3 199 0
	bclr.b	_AD1PCFGbits,#5
	.loc 3 200 0
	bclr.b	_AD1PCFGbits+1,#7
.LBE32:
.LBE31:
	.loc 1 192 0
	mov	w8,w0
	ior	_AD1CON1bits
	.loc 1 203 0
	clr	_AD1CSSL
	.loc 1 215 0
	mov	#7938,w0
	mov	w0,_AD1CON3
	.loc 1 229 0
	clr	_AD1CON2
	.loc 1 230 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE25:
	.size	_bp_reset_board_state, .-_bp_reset_board_state
	.align	2
	.global	_bp_read_adc	; export
	.type	_bp_read_adc,@function
_bp_read_adc:
.LFB26:
	.loc 1 232 0
	.set ___PA___,1
	.loc 1 235 0
	mov	w0,_AD1CHS
	.loc 1 238 0
	bset.b	_AD1CON1bits,#1
	.loc 1 241 0
	bclr.b	_AD1CON1bits,#0
.L11:
	.loc 1 244 0
	btst.b	_AD1CON1bits,#0
	.set ___BP___,86
	bra	z,.L11
	.loc 1 248 0
	mov	_ADC1BUF0,w0
	.loc 1 249 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_bp_read_adc, .-_bp_read_adc
	.align	2
	.global	_bp_reverse_byte	; export
	.type	_bp_reverse_byte,@function
_bp_reverse_byte:
.LFB30:
	.loc 1 336 0
	.set ___PA___,1
	.loc 1 338 0
	ze	w0,w0
	mov	#_REVERSED_BITS_TABLE,w1
	.loc 1 336 0
	mov.b	[w1+w0],w0
	.loc 1 342 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_bp_reverse_byte, .-_bp_reverse_byte
	.align	2
	.global	_bp_reverse_word	; export
	.type	_bp_reverse_word,@function
_bp_reverse_word:
.LFB31:
	.loc 1 344 0
	.set ___PA___,1
	.loc 1 346 0
	ze	w0,w2
	mov	#_REVERSED_BITS_TABLE,w1
	mov.b	[w1+w2],w2
	sl	w2,#8,w2
	.loc 1 347 0
	lsr	w0,#8,w0
	.loc 1 346 0
	mov.b	[w1+w0],w0
	ze	w0,w0
	ior	w0,w2,w0
	.loc 1 351 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_bp_reverse_word, .-_bp_reverse_word
	.align	2
	.global	_bp_reverse_integer	; export
	.type	_bp_reverse_integer,@function
_bp_reverse_integer:
.LFB32:
	.loc 1 353 0
	.set ___PA___,1
	.loc 1 355 0
	ze	w0,w3
	mov	#_REVERSED_BITS_TABLE,w2
	mov.b	[w2+w3],w3
	sl	w3,#8,w3
	.loc 1 356 0
	lsr	w0,#8,w0
	.loc 1 355 0
	mov.b	[w2+w0],w0
	ze	w0,w0
	ior	w0,w3,w0
	.loc 1 357 0
	ze	w1,w1
	subr	w1,#16,w1
	.loc 1 356 0
	asr	w0,w1,w0
	.loc 1 374 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_bp_reverse_integer, .-_bp_reverse_integer
	.align	2
	.global	_bp_read_from_flash	; export
	.type	_bp_read_from_flash,@function
_bp_read_from_flash:
.LFB46:
	.loc 1 543 0
	.set ___PA___,1
	.loc 1 544 0
	mov	#_TBLPAG,w2
	mov.b	[w2],w2
	.loc 1 547 0
	mov.b	WREG,_TBLPAG
	.loc 1 548 0
	tblrdh.w	[w1], w0
	tblrdl.w	[w1], w1
	.loc 1 549 0
	mov.b	w2,w4
	mov	#_TBLPAG,w3
	mov.b	w4,[w3]
	.loc 1 548 0
	sl	w0,#8,w0
	ior	w1,w0,w0
	.loc 1 552 0
	return	
	.set ___PA___,0
.LFE46:
	.size	_bp_read_from_flash, .-_bp_read_from_flash
	.align	2
	.global	_bp_initialise_delay_timer	; export
	.type	_bp_initialise_delay_timer,@function
_bp_initialise_delay_timer:
.LFB47:
	.loc 1 554 0
	.set ___PA___,1
	.loc 1 569 0
	mov	#16,w0
	mov	w0,_T1CON
	.loc 1 572 0
	clr	_TMR1
	.loc 1 575 0
	setm	_PR1
	.loc 1 578 0
	bset.b	_T1CONbits+1,#7
	.loc 1 581 0
	return	
	.set ___PA___,0
.LFE47:
	.size	_bp_initialise_delay_timer, .-_bp_initialise_delay_timer
	.align	2
	.global	_bp_delay_ms	; export
	.type	_bp_delay_ms,@function
_bp_delay_ms:
.LFB50:
	.loc 1 622 0
	.set ___PA___,1
	.loc 1 622 0
	mov	#1000,w1
	mul.ss	w0,w1,w0
	clr	w1
	call	_delay_long
	return	
	.set ___PA___,0
.LFE50:
	.size	_bp_delay_ms, .-_bp_delay_ms
	.align	2
	.global	_bp_delay_us	; export
	.type	_bp_delay_us,@function
_bp_delay_us:
.LFB51:
	.loc 1 624 0
	.set ___PA___,1
	.loc 1 625 0
	mov	#16382,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	gtu,.L20
.LBB33:
.LBB34:
	.loc 1 609 0
	cp0	w0
	.set ___BP___,39
	bra	z,.L19
	.loc 1 614 0
	add	w0,w0,w0
	dec	w0,w0
	.loc 1 615 0
	mov	_TMR1,w2
.L22:
	.loc 1 618 0
	mov	_TMR1,w3
	sub	w3,w2,w1
	.loc 1 619 0
	sub	w0,w1,[w15]
	.set ___BP___,86
	bra	gtu,.L22
	bra	.L19
.L20:
.LBE34:
.LBE33:
	.loc 1 630 0
	clr	w1
	call	_delay_long
.L19:
	.loc 1 631 0
	return	
	.set ___PA___,0
.LFE51:
	.size	_bp_delay_us, .-_bp_delay_us
	.align	2
	.global	_user_serial_transmit_character	; export
	.type	_user_serial_transmit_character,@function
_user_serial_transmit_character:
.LFB52:
	.loc 1 875 0
	.set ___PA___,1
	.loc 1 876 0
	mov	#_bus_pirate_configuration+10,w1
	mov	[w1],w1
	and	w1,#1,w1
	.set ___BP___,61
	bra	nz,.L24
	.loc 1 880 0
	call	_putc_cdc
.L24:
	.loc 1 881 0
	return	
	.set ___PA___,0
.LFE52:
	.size	_user_serial_transmit_character, .-_user_serial_transmit_character
	.align	2
	.global	_bp_write_hex_word	; export
	.type	_bp_write_hex_word,@function
_bp_write_hex_word:
.LFB44:
	.loc 1 510 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	mov	w0,w8
	.loc 1 511 0
	mov	#tbloffset(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	.loc 1 512 0
	lsr	w8,#12,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 513 0
	lsr	w8,#8,w0
	and	w0,#15,w0
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 514 0
	lsr	w8,#4,w0
	and	w0,#15,w0
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 515 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_transmit_character
	.loc 1 516 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE44:
	.size	_bp_write_hex_word, .-_bp_write_hex_word
	.align	2
	.global	_bp_write_hex_byte	; export
	.type	_bp_write_hex_byte,@function
_bp_write_hex_byte:
.LFB42:
	.loc 1 497 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov.b	w0,w8
	.loc 1 498 0
	mov	#tbloffset(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	.loc 1 499 0
	ze	w8,w8
	lsr	w8,#4,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 500 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_transmit_character
	.loc 1 501 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE42:
	.size	_bp_write_hex_byte, .-_bp_write_hex_byte
	.align	2
	.type	_print_decimal,@function
_print_decimal:
.LFB38:
	.loc 1 461 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI3:
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	mov.d	w12,[w15++]
.LCFI6:
	mov	w14,[w15++]
.LCFI7:
	mov.b	w4,[w15-16]
	.loc 1 472 0
	sub	w0,#0,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,20
	bra	z,.L29
	.loc 1 477 0
	cp0.b	w4
	.set ___BP___,91
	bra	nz,.L34
	bra	.L28
.L29:
	.loc 1 473 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	.loc 1 474 0
	bra	.L28
.L34:
	.loc 1 477 0
	mov.d	w2,w8
	mov.d	w0,w12
	clr.b	w0
	mov.b	w0,[w15-15]
	mov.b	w0,w14
.L30:
	.loc 1 478 0
	mov.d	w8,w2
	mov.d	w12,w0
	call	___udivsi3
	mov.d	w0,w10
	.loc 1 479 0
	mov.b	[w15-15],w1
	cp0.b	w1
	.set ___BP___,29
	bra	nz,.L32
	sub	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	z,.L33
.L32:
	.loc 1 480 0
	mov.b	#48,w4
	add.b	w10,w4,w0
	call	_user_serial_transmit_character
	.loc 1 481 0
	mul.ss	w11,w8,w0
	mul.ss	w9,w10,w2
	add	w2,w0,w0
	mul.uu	w10,w8,w10
	add	w0,w11,w11
	sub	w12,w10,w12
	subb	w13,w11,w13
	.loc 1 482 0
	mov.b	#1,w0
	mov.b	w0,[w15-15]
.L33:
	.loc 1 477 0
	inc.b	w14,w14
	mov.b	[w15-16],w1
	sub.b	w1,w14,[w15]
	.set ___BP___,9
	bra	leu,.L28
	.loc 1 485 0
	mov	#10,w2
	mov	#0,w3
	mov.d	w8,w0
	call	___udivsi3
	mov.d	w0,w8
	bra	.L30
.L28:
	.loc 1 487 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE38:
	.size	_print_decimal, .-_print_decimal
	.align	2
	.global	_bp_write_dec_byte	; export
	.type	_bp_write_dec_byte,@function
_bp_write_dec_byte:
.LFB41:
	.loc 1 495 0
	.set ___PA___,1
	.loc 1 495 0
	ze	w0,w0
	clr	w1
	mov.b	#3,w4
	mov	#100,w2
	mov	#0,w3
	call	_print_decimal
	return	
	.set ___PA___,0
.LFE41:
	.size	_bp_write_dec_byte, .-_bp_write_dec_byte
	.align	2
	.global	_bp_write_dec_word	; export
	.type	_bp_write_dec_word,@function
_bp_write_dec_word:
.LFB40:
	.loc 1 493 0
	.set ___PA___,1
	.loc 1 493 0
	clr	w1
	mov.b	#5,w4
	mov	#10000,w2
	mov	#0,w3
	call	_print_decimal
	return	
	.set ___PA___,0
.LFE40:
	.size	_bp_write_dec_word, .-_bp_write_dec_word
	.align	2
	.global	_bp_write_dec_dword	; export
	.type	_bp_write_dec_dword,@function
_bp_write_dec_dword:
.LFB39:
	.loc 1 489 0
	.set ___PA___,1
	.loc 1 490 0
	mov.b	#8,w4
	mov	#38528,w2
	mov	#152,w3
	call	_print_decimal
	.loc 1 491 0
	return	
	.set ___PA___,0
.LFE39:
	.size	_bp_write_dec_dword, .-_bp_write_dec_dword
	.align	2
	.global	_bp_write_voltage	; export
	.type	_bp_write_voltage,@function
_bp_write_voltage:
.LFB45:
	.loc 1 518 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI8:
	mov	w0,w2
	.loc 1 530 0
	mul.su	w2,#29,w2
	mov	#11651,w1
	mul.uu	w2,w1,w0
	lsr	w1,#3,w9
	.loc 1 534 0
	lsr	w1,#5,w1
	mov	#5243,w0
	mul.uu	w1,w0,w0
	lsr	w1,w8
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 535 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 536 0
	mov	#100,w0
	mul.ss	w8,w0,w0
	sub.b	w9,w0,w8
	.loc 1 537 0
	sub.b	w8,#9,[w15]
	.set ___BP___,61
	bra	gtu,.L39
	.loc 1 538 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L39:
	.loc 1 540 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 541 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE45:
	.size	_bp_write_voltage, .-_bp_write_voltage
	.align	2
	.global	_bp_adc_probe	; export
	.type	_bp_adc_probe,@function
_bp_adc_probe:
.LFB27:
	.loc 1 251 0
	.set ___PA___,1
.LBB35:
.LBB36:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE36:
.LBE35:
	.loc 1 256 0
	mov	#1,w0
	call	_bp_read_adc
	call	_bp_write_voltage
.LBB37:
.LBB38:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.LBE38:
.LBE37:
	.loc 1 260 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_bp_adc_probe, .-_bp_adc_probe
	.align	2
	.global	_bp_write_bin_byte	; export
	.type	_bp_write_bin_byte,@function
_bp_write_bin_byte:
.LFB36:
	.loc 1 398 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	mov.d	w10,[w15++]
.LCFI10:
	mov	w12,[w15++]
.LCFI11:
	mov.b	w0,w10
	.loc 1 402 0
	mov	#tbloffset(_MSG_BINARY_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_BINARY_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	mov	#8,w8
	.loc 1 399 0
	mov.b	#-128,w9
	.loc 1 405 0
	mov.b	#48,w11
	mov.b	#49,w12
.L44:
	and.b	w9,w10,w1
	mov.b	w11,w0
	.set ___BP___,50
	bra	z,.L42
	mov.b	w12,w0
.L42:
	call	_user_serial_transmit_character
	dec	w8,w8
	.loc 1 404 0
	.set ___BP___,11
	bra	z,.L41
	.loc 1 406 0
	ze	w9,w9
	lsr	w9,w9
	bra	.L44
.L41:
	.loc 1 408 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE36:
	.size	_bp_write_bin_byte, .-_bp_write_bin_byte
	.align	2
	.global	_bp_write_string	; export
	.type	_bp_write_string,@function
_bp_write_string:
.LFB34:
	.loc 1 384 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI12:
	mov	w0,w8
	.loc 1 386 0
	mov.b	[w8],w0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L46
	inc	w8,w8
.L48:
	.loc 1 387 0
	call	_user_serial_transmit_character
	.loc 1 386 0
	mov.b	[w8++],w0
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L48
.L46:
	.loc 1 389 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE34:
	.size	_bp_write_string, .-_bp_write_string
	.section .const,psv,page
.LC0:
	.asciz	"000,"
.LC1:
	.asciz	"00"
	.section	.text,code
	.align	2
	.global	_bp_write_dec_dword_friendly	; export
	.type	_bp_write_dec_dword_friendly,@function
_bp_write_dec_dword_friendly:
.LFB37:
	.loc 1 410 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI13:
	mov.d	w10,[w15++]
.LCFI14:
	mov	w12,[w15++]
.LCFI15:
	mov.d	w0,w10
	.loc 1 420 0
	mov	#16959,w0
	mov	#15,w1
	sub	w10,w0,[w15]
	subb	w11,w1,[w15]
	.set ___BP___,71
	bra	leu,.L51
	.loc 1 421 0
	mov	#16960,w2
	mov	#15,w3
	mov.d	w10,w0
	call	___udivsi3
	.loc 1 422 0
	call	_bp_write_dec_word
	.loc 1 423 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 424 0
	mov	#16960,w2
	mov	#15,w3
	mov.d	w10,w0
	call	___umodsi3
	mov.d	w0,w10
	.loc 1 427 0
	mov	#1,w12
	.loc 1 425 0
	mov	#999,w0
	sub	w10,w0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,71
	bra	gtu,.L52
	.loc 1 426 0
	mov	#.LC0,w0
	call	_bp_write_string
	.loc 1 427 0
	mov	#1,w0
	bra	.L53
.L51:
	.loc 1 416 0
	clr	w0
	.loc 1 430 0
	mov	#999,w1
	sub	w10,w1,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,58
	bra	leu,.L53
	.loc 1 416 0
	clr	w12
.L52:
	.loc 1 431 0
	mov	#1000,w2
	mov	#0,w3
	mov.d	w10,w0
	call	___udivsi3
	mov.d	w0,w8
	.loc 1 432 0
	mov	#99,w0
	sub	w8,w0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,71
	bra	leu,.L54
	.loc 1 433 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L55
.L54:
	.loc 1 434 0
	cp0	w12
	.set ___BP___,29
	bra	z,.L56
	.loc 1 435 0
	sub	w8,#9,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	leu,.L57
	.loc 1 436 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	bra	.L58
.L57:
	.loc 1 438 0
	mov	#.LC1,w0
	call	_bp_write_string
.L58:
	.loc 1 440 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L55
.L56:
	.loc 1 442 0
	mov	w8,w0
	call	_bp_write_dec_word
.L55:
	.loc 1 443 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 444 0
	mov	#1000,w2
	mov	#0,w3
	mov.d	w10,w0
	call	___umodsi3
	mov.d	w0,w10
	.loc 1 445 0
	mov	#1,w0
.L53:
	.loc 1 447 0
	mov	#99,w1
	sub	w10,w1,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,79
	bra	leu,.L59
	.loc 1 448 0
	mov	w10,w0
	call	_bp_write_dec_word
	bra	.L50
.L59:
	.loc 1 449 0
	cp0	w0
	.set ___BP___,29
	bra	z,.L61
	.loc 1 450 0
	sub	w10,#9,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	leu,.L62
	.loc 1 451 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	bra	.L63
.L62:
	.loc 1 453 0
	mov	#.LC1,w0
	call	_bp_write_string
.L63:
	.loc 1 455 0
	mov	w10,w0
	call	_bp_write_dec_word
	bra	.L50
.L61:
	.loc 1 457 0
	mov	w10,w0
	call	_bp_write_dec_word
.L50:
	.loc 1 458 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE37:
	.size	_bp_write_dec_dword_friendly, .-_bp_write_dec_dword_friendly
	.align	2
	.global	_bp_write_line	; export
	.type	_bp_write_line,@function
_bp_write_line:
.LFB35:
	.loc 1 391 0
	.set ___PA___,1
	.loc 1 392 0
	call	_bp_write_string
	.loc 1 394 0
	mov.b	#13,w0
	call	_user_serial_transmit_character
	.loc 1 395 0
	mov.b	#10,w0
	call	_user_serial_transmit_character
	.loc 1 396 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_bp_write_line, .-_bp_write_line
	.align	2
	.global	_bp_write_buffer	; export
	.type	_bp_write_buffer,@function
_bp_write_buffer:
.LFB33:
	.loc 1 376 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI16:
	mov	w10,[w15++]
.LCFI17:
	mov	w1,w10
	.loc 1 379 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L67
	mov	w0,w9
	clr	w8
.L69:
	.loc 1 380 0
	mov.b	[w9++],w0
	call	_user_serial_transmit_character
	.loc 1 379 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L69
.L67:
	.loc 1 382 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_bp_write_buffer, .-_bp_write_buffer
	.align	2
	.global	_bp_write_formatted_integer	; export
	.type	_bp_write_formatted_integer,@function
_bp_write_formatted_integer:
.LFB29:
	.loc 1 295 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI18:
	mov	w0,w8
	.loc 1 302 0
	mov	#_bus_pirate_configuration+8,w0
	mov.b	[w0],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L74
	.set ___BP___,50
	bra	ltu,.L73
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L75
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L71
	bra	.L81
.L73:
	.loc 1 304 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,50
	bra	z,.L77
	.loc 1 305 0
	mov	w8,w0
	call	_bp_write_hex_word
	bra	.L71
.L77:
	.loc 1 307 0
	mov.b	w8,w0
	call	_bp_write_hex_byte
	bra	.L71
.L74:
	.loc 1 312 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,50
	bra	z,.L78
	.loc 1 313 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L71
.L78:
	.loc 1 315 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	bra	.L71
.L75:
	.loc 1 320 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,61
	bra	z,.L79
	.loc 1 321 0
	lsr	w8,#8,w0
	call	_bp_write_bin_byte
	.loc 1 322 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
.L79:
	.loc 1 324 0
	mov.b	w8,w0
	call	_bp_write_bin_byte
	.loc 1 325 0
	bra	.L71
.L81:
	.loc 1 328 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,71
	bra	z,.L80
	.loc 1 329 0
	lsr	w8,#8,w0
	call	_user_serial_transmit_character
.L80:
	.loc 1 331 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
.L71:
	.loc 1 334 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_bp_write_formatted_integer, .-_bp_write_formatted_integer
	.align	2
	.global	_user_serial_ringbuffer_append	; export
	.type	_user_serial_ringbuffer_append,@function
_user_serial_ringbuffer_append:
.LFB53:
	.loc 1 883 0
	.set ___PA___,1
	.loc 1 884 0
	call	_user_serial_transmit_character
	.loc 1 885 0
	return	
	.set ___PA___,0
.LFE53:
	.size	_user_serial_ringbuffer_append, .-_user_serial_ringbuffer_append
	.align	2
	.global	_bp_write_hex_byte_to_ringbuffer	; export
	.type	_bp_write_hex_byte_to_ringbuffer,@function
_bp_write_hex_byte_to_ringbuffer:
.LFB43:
	.loc 1 503 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI19:
	mov.b	w0,w8
	.loc 1 504 0
	mov.b	#48,w0
	call	_user_serial_ringbuffer_append
	.loc 1 505 0
	mov.b	#120,w0
	call	_user_serial_ringbuffer_append
	.loc 1 506 0
	ze	w8,w8
	lsr	w8,#4,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_ringbuffer_append
	.loc 1 507 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_ringbuffer_append
	.loc 1 508 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_bp_write_hex_byte_to_ringbuffer, .-_bp_write_hex_byte_to_ringbuffer
	.align	2
	.global	_user_serial_ready_to_read	; export
	.type	_user_serial_ready_to_read,@function
_user_serial_ready_to_read:
.LFB54:
	.loc 1 887 0
	.set ___PA___,1
	.loc 1 887 0
	mov	#1,w0
	mov	#_cdc_Out_len,w1
	cp0.b	[w1]
	.set ___BP___,61
	bra	nz,.L85
	call	_getOutReady
	ze	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
.L85:
	return	
	.set ___PA___,0
.LFE54:
	.size	_user_serial_ready_to_read, .-_user_serial_ready_to_read
	.align	2
	.global	_user_serial_read_byte	; export
	.type	_user_serial_read_byte,@function
_user_serial_read_byte:
.LFB55:
	.loc 1 889 0
	.set ___PA___,1
	.loc 1 889 0
	call	_getc_cdc
	return	
	.set ___PA___,0
.LFE55:
	.size	_user_serial_read_byte, .-_user_serial_read_byte
	.section .const,psv,page
.LC2:
	.asciz	"\010\010\010\010\010"
.LC3:
	.byte	0
	.section	.text,code
	.align	2
	.global	_bp_adc_continuous_probe	; export
	.type	_bp_adc_continuous_probe,@function
_bp_adc_continuous_probe:
.LFB28:
	.loc 1 262 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI20:
	mov.d	w10,[w15++]
.LCFI21:
	.loc 1 265 0
	mov	#tbloffset(_MSG_ADC_VOLTMETER_MODE_str),w0
	mov	#tblpage(_MSG_ADC_VOLTMETER_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 266 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 267 0
	mov	#tbloffset(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w0
	mov	#tblpage(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 268 0
	clr	w0
	call	_bp_write_voltage
	.loc 1 269 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w0
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w1
	call	_bp_message_write_buffer
	.loc 1 283 0
	mov	#.LC2,w9
	.loc 1 287 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w10
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w11
	.loc 1 272 0
	bra	.L89
.L90:
	.loc 1 274 0
	bset.b	_AD1CON1bits+1,#7
	.loc 1 277 0
	mov	#1,w0
	call	_bp_read_adc
	mov	w0,w8
	.loc 1 280 0
	bclr.b	_AD1CON1bits+1,#7
	.loc 1 283 0
	mov	w9,w0
	call	_bp_write_string
	.loc 1 286 0
	mov	w8,w0
	call	_bp_write_voltage
	.loc 1 287 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
.L89:
	.loc 1 272 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,91
	bra	z,.L90
	.loc 1 291 0
	call	_user_serial_read_byte
	.loc 1 292 0
	mov	#.LC3,w0
	call	_bp_write_line
	.loc 1 293 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_bp_adc_continuous_probe, .-_bp_adc_continuous_probe
	.align	2
	.global	_user_serial_ringbuffer_flush	; export
	.type	_user_serial_ringbuffer_flush,@function
_user_serial_ringbuffer_flush:
.LFB56:
	.loc 1 891 0
	.set ___PA___,1
	.loc 1 891 0
	call	_CDC_Flush_In_Now
	return	
	.set ___PA___,0
.LFE56:
	.size	_user_serial_ringbuffer_flush, .-_user_serial_ringbuffer_flush
	.align	2
	.global	_user_serial_ringbuffer_setup	; export
	.type	_user_serial_ringbuffer_setup,@function
_user_serial_ringbuffer_setup:
.LFB57:
	.loc 1 893 0
	.set ___PA___,1
	.loc 1 893 0
	return	
	.set ___PA___,0
.LFE57:
	.size	_user_serial_ringbuffer_setup, .-_user_serial_ringbuffer_setup
	.align	2
	.global	_user_serial_ringbuffer_process	; export
	.type	_user_serial_ringbuffer_process,@function
_user_serial_ringbuffer_process:
.LFB58:
	.loc 1 895 0
	.set ___PA___,1
	.loc 1 895 0
	return	
	.set ___PA___,0
.LFE58:
	.size	_user_serial_ringbuffer_process, .-_user_serial_ringbuffer_process
	.align	2
	.global	_user_serial_initialise	; export
	.type	_user_serial_initialise,@function
_user_serial_initialise:
.LFB59:
	.loc 1 897 0
	.set ___PA___,1
	.loc 1 897 0
	return	
	.set ___PA___,0
.LFE59:
	.size	_user_serial_initialise, .-_user_serial_initialise
	.align	2
	.global	_user_serial_wait_transmission_done	; export
	.type	_user_serial_wait_transmission_done,@function
_user_serial_wait_transmission_done:
.LFB60:
	.loc 1 899 0
	.set ___PA___,1
	.loc 1 899 0
	call	_WaitInReady
	return	
	.set ___PA___,0
.LFE60:
	.size	_user_serial_wait_transmission_done, .-_user_serial_wait_transmission_done
	.align	2
	.global	_user_serial_check_overflow	; export
	.type	_user_serial_check_overflow,@function
_user_serial_check_overflow:
.LFB61:
	.loc 1 901 0
	.set ___PA___,1
	.loc 1 901 0
	clr.b	w0
	return	
	.set ___PA___,0
.LFE61:
	.size	_user_serial_check_overflow, .-_user_serial_check_overflow
	.align	2
	.global	_user_serial_clear_overflow	; export
	.type	_user_serial_clear_overflow,@function
_user_serial_clear_overflow:
.LFB62:
	.loc 1 903 0
	.set ___PA___,1
	.loc 1 903 0
	return	
	.set ___PA___,0
.LFE62:
	.size	_user_serial_clear_overflow, .-_user_serial_clear_overflow
	.align	2
	.global	_user_serial_set_baud_rate	; export
	.type	_user_serial_set_baud_rate,@function
_user_serial_set_baud_rate:
.LFB63:
	.loc 1 905 0
	.set ___PA___,1
	.loc 1 905 0
	return	
	.set ___PA___,0
.LFE63:
	.size	_user_serial_set_baud_rate, .-_user_serial_set_baud_rate
	.align	2
	.global	_user_serial_transmit_done	; export
	.type	_user_serial_transmit_done,@function
_user_serial_transmit_done:
.LFB64:
	.loc 1 907 0
	.set ___PA___,1
	.loc 1 907 0
	mov.b	#1,w0
	return	
	.set ___PA___,0
.LFE64:
	.size	_user_serial_transmit_done, .-_user_serial_transmit_done
	.align	2
	.global	_user_serial_read_big_endian_word	; export
	.type	_user_serial_read_big_endian_word,@function
_user_serial_read_big_endian_word:
.LFB65:
	.loc 1 911 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI22:
	.loc 1 912 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 914 0
	call	_user_serial_read_byte
	.loc 1 912 0
	sl	w8,#8,w8
	.loc 1 914 0
	ze	w0,w0
	ior	w0,w8,w0
	.loc 1 915 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE65:
	.size	_user_serial_read_big_endian_word, .-_user_serial_read_big_endian_word
	.align	2
	.global	_user_serial_read_big_endian_long_word	; export
	.type	_user_serial_read_big_endian_long_word,@function
_user_serial_read_big_endian_long_word:
.LFB66:
	.loc 1 917 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI23:
	.loc 1 918 0
	call	_user_serial_read_big_endian_word
	mov	w0,w8
	.loc 1 920 0
	call	_user_serial_read_big_endian_word
	mov	w0,w2
	.loc 1 918 0
	mul.uu	w8,#1,w0
	sl	w0,#0,w1
	mov	#0,w0
	.loc 1 920 0
	clr	w3
	ior	w0,w2,w0
	ior	w1,w3,w1
	.loc 1 921 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE66:
	.size	_user_serial_read_big_endian_long_word, .-_user_serial_read_big_endian_long_word
	.section	.const,psv,page
	.type	_HEX_ASCII_TABLE,@object
	.size	_HEX_ASCII_TABLE, 16
_HEX_ASCII_TABLE:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 65
	.byte 66
	.byte 67
	.byte 68
	.byte 69
	.byte 70
	.type	_REVERSED_BITS_TABLE,@object
	.size	_REVERSED_BITS_TABLE, 256
_REVERSED_BITS_TABLE:
	.byte 0
	.byte -128
	.byte 64
	.byte -64
	.byte 32
	.byte -96
	.byte 96
	.byte -32
	.byte 16
	.byte -112
	.byte 80
	.byte -48
	.byte 48
	.byte -80
	.byte 112
	.byte -16
	.byte 8
	.byte -120
	.byte 72
	.byte -56
	.byte 40
	.byte -88
	.byte 104
	.byte -24
	.byte 24
	.byte -104
	.byte 88
	.byte -40
	.byte 56
	.byte -72
	.byte 120
	.byte -8
	.byte 4
	.byte -124
	.byte 68
	.byte -60
	.byte 36
	.byte -92
	.byte 100
	.byte -28
	.byte 20
	.byte -108
	.byte 84
	.byte -44
	.byte 52
	.byte -76
	.byte 116
	.byte -12
	.byte 12
	.byte -116
	.byte 76
	.byte -52
	.byte 44
	.byte -84
	.byte 108
	.byte -20
	.byte 28
	.byte -100
	.byte 92
	.byte -36
	.byte 60
	.byte -68
	.byte 124
	.byte -4
	.byte 2
	.byte -126
	.byte 66
	.byte -62
	.byte 34
	.byte -94
	.byte 98
	.byte -30
	.byte 18
	.byte -110
	.byte 82
	.byte -46
	.byte 50
	.byte -78
	.byte 114
	.byte -14
	.byte 10
	.byte -118
	.byte 74
	.byte -54
	.byte 42
	.byte -86
	.byte 106
	.byte -22
	.byte 26
	.byte -102
	.byte 90
	.byte -38
	.byte 58
	.byte -70
	.byte 122
	.byte -6
	.byte 6
	.byte -122
	.byte 70
	.byte -58
	.byte 38
	.byte -90
	.byte 102
	.byte -26
	.byte 22
	.byte -106
	.byte 86
	.byte -42
	.byte 54
	.byte -74
	.byte 118
	.byte -10
	.byte 14
	.byte -114
	.byte 78
	.byte -50
	.byte 46
	.byte -82
	.byte 110
	.byte -18
	.byte 30
	.byte -98
	.byte 94
	.byte -34
	.byte 62
	.byte -66
	.byte 126
	.byte -2
	.byte 1
	.byte -127
	.byte 65
	.byte -63
	.byte 33
	.byte -95
	.byte 97
	.byte -31
	.byte 17
	.byte -111
	.byte 81
	.byte -47
	.byte 49
	.byte -79
	.byte 113
	.byte -15
	.byte 9
	.byte -119
	.byte 73
	.byte -55
	.byte 41
	.byte -87
	.byte 105
	.byte -23
	.byte 25
	.byte -103
	.byte 89
	.byte -39
	.byte 57
	.byte -71
	.byte 121
	.byte -7
	.byte 5
	.byte -123
	.byte 69
	.byte -59
	.byte 37
	.byte -91
	.byte 101
	.byte -27
	.byte 21
	.byte -107
	.byte 85
	.byte -43
	.byte 53
	.byte -75
	.byte 117
	.byte -11
	.byte 13
	.byte -115
	.byte 77
	.byte -51
	.byte 45
	.byte -83
	.byte 109
	.byte -19
	.byte 29
	.byte -99
	.byte 93
	.byte -35
	.byte 61
	.byte -67
	.byte 125
	.byte -3
	.byte 3
	.byte -125
	.byte 67
	.byte -61
	.byte 35
	.byte -93
	.byte 99
	.byte -29
	.byte 19
	.byte -109
	.byte 83
	.byte -45
	.byte 51
	.byte -77
	.byte 115
	.byte -13
	.byte 11
	.byte -117
	.byte 75
	.byte -53
	.byte 43
	.byte -85
	.byte 107
	.byte -21
	.byte 27
	.byte -101
	.byte 91
	.byte -37
	.byte 59
	.byte -69
	.byte 123
	.byte -5
	.byte 7
	.byte -121
	.byte 71
	.byte -57
	.byte 39
	.byte -89
	.byte 103
	.byte -25
	.byte 23
	.byte -105
	.byte 87
	.byte -41
	.byte 55
	.byte -73
	.byte 119
	.byte -9
	.byte 15
	.byte -113
	.byte 79
	.byte -49
	.byte 47
	.byte -81
	.byte 111
	.byte -17
	.byte 31
	.byte -97
	.byte 95
	.byte -33
	.byte 63
	.byte -65
	.byte 127
	.byte -1
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI1-.LFB44
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI2-.LFB42
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI3-.LFB38
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -11
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8c
	.uleb128 0x8
	.byte	0x8a
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI8-.LFB45
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI12-.LFB34
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI13-.LFB37
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI16-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI18-.LFB29
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI19-.LFB43
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI20-.LFB28
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI22-.LFB65
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI23-.LFB66
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE82:
	.section	.text,code
.Letext0:
	.file 4 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 5 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 6 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 7 "../dp_usb/usb_stack_globals.h"
	.file 8 "../base.h"
	.file 9 "../core.h"
	.section	.debug_info,info
	.4byte	0x2428
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../base.c"
	.asciz	"C:\\\\Users\\\\avish\\\\Workspace\\\\Firmware\\\\busPirate.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
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
	.4byte	0xed
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x4
	.byte	0x31
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x4
	.byte	0x37
	.4byte	0x96
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x5
	.byte	0x5
	.4byte	0x10e
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
	.asciz	"tagIFS1BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x1b1
	.4byte	0x2b3
	.uleb128 0x5
	.asciz	"SI2C1IF"
	.byte	0x6
	.2byte	0x1b2
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"MI2C1IF"
	.byte	0x6
	.2byte	0x1b3
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMIF"
	.byte	0x6
	.2byte	0x1b4
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CNIF"
	.byte	0x6
	.2byte	0x1b5
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT1IF"
	.byte	0x6
	.2byte	0x1b6
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC7IF"
	.byte	0x6
	.2byte	0x1b8
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC8IF"
	.byte	0x6
	.2byte	0x1b9
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC3IF"
	.byte	0x6
	.2byte	0x1bb
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC4IF"
	.byte	0x6
	.2byte	0x1bc
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T4IF"
	.byte	0x6
	.2byte	0x1bd
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T5IF"
	.byte	0x6
	.2byte	0x1be
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT2IF"
	.byte	0x6
	.2byte	0x1bf
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2RXIF"
	.byte	0x6
	.2byte	0x1c0
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2TXIF"
	.byte	0x6
	.2byte	0x1c1
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"IFS1BITS"
	.byte	0x6
	.2byte	0x1c2
	.4byte	0x181
	.uleb128 0x4
	.asciz	"tagIEC1BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x21d
	.4byte	0x3f6
	.uleb128 0x5
	.asciz	"SI2C1IE"
	.byte	0x6
	.2byte	0x21e
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"MI2C1IE"
	.byte	0x6
	.2byte	0x21f
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMIE"
	.byte	0x6
	.2byte	0x220
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CNIE"
	.byte	0x6
	.2byte	0x221
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT1IE"
	.byte	0x6
	.2byte	0x222
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC7IE"
	.byte	0x6
	.2byte	0x224
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC8IE"
	.byte	0x6
	.2byte	0x225
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC3IE"
	.byte	0x6
	.2byte	0x227
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC4IE"
	.byte	0x6
	.2byte	0x228
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T4IE"
	.byte	0x6
	.2byte	0x229
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T5IE"
	.byte	0x6
	.2byte	0x22a
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT2IE"
	.byte	0x6
	.2byte	0x22b
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2RXIE"
	.byte	0x6
	.2byte	0x22c
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2TXIE"
	.byte	0x6
	.2byte	0x22d
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"IEC1BITS"
	.byte	0x6
	.2byte	0x22e
	.4byte	0x2c4
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0x512
	.4byte	0x485
	.uleb128 0x5
	.asciz	"TCS"
	.byte	0x6
	.2byte	0x514
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSYNC"
	.byte	0x6
	.2byte	0x515
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS"
	.byte	0x6
	.2byte	0x517
	.4byte	0xfe
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TGATE"
	.byte	0x6
	.2byte	0x518
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSIDL"
	.byte	0x6
	.2byte	0x51a
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TON"
	.byte	0x6
	.2byte	0x51c
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0x51e
	.4byte	0x4b9
	.uleb128 0x5
	.asciz	"TCKPS0"
	.byte	0x6
	.2byte	0x520
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS1"
	.byte	0x6
	.2byte	0x521
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x6
	.2byte	0x511
	.4byte	0x4cd
	.uleb128 0x9
	.4byte	0x407
	.uleb128 0x9
	.4byte	0x485
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagT1CONBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x510
	.4byte	0x4ec
	.uleb128 0xa
	.4byte	0x4b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"T1CONBITS"
	.byte	0x6
	.2byte	0x524
	.4byte	0x4cd
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xcd2
	.4byte	0x66b
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x6
	.2byte	0xcd3
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISBBITS"
	.byte	0x6
	.2byte	0xce3
	.4byte	0x4fe
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xce8
	.4byte	0x7ba
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x6
	.2byte	0xce9
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTBBITS"
	.byte	0x6
	.2byte	0xcf9
	.4byte	0x67d
	.uleb128 0x4
	.asciz	"tagTRISCBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd2a
	.4byte	0x83b
	.uleb128 0x5
	.asciz	"TRISC12"
	.byte	0x6
	.2byte	0xd2c
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISC13"
	.byte	0x6
	.2byte	0xd2d
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISC14"
	.byte	0x6
	.2byte	0xd2e
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISC15"
	.byte	0x6
	.2byte	0xd2f
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISCBITS"
	.byte	0x6
	.2byte	0xd30
	.4byte	0x7cc
	.uleb128 0x4
	.asciz	"tagTRISDBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd56
	.4byte	0x962
	.uleb128 0x5
	.asciz	"TRISD0"
	.byte	0x6
	.2byte	0xd57
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISDBITS"
	.byte	0x6
	.2byte	0xd63
	.4byte	0x84d
	.uleb128 0x4
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xd9e
	.4byte	0xa33
	.uleb128 0x5
	.asciz	"TRISE0"
	.byte	0x6
	.2byte	0xd9f
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISEBITS"
	.byte	0x6
	.2byte	0xda7
	.4byte	0x974
	.uleb128 0x4
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xdac
	.4byte	0xaec
	.uleb128 0x5
	.asciz	"RE0"
	.byte	0x6
	.2byte	0xdad
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTEBITS"
	.byte	0x6
	.2byte	0xdb5
	.4byte	0xa45
	.uleb128 0x4
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xdd6
	.4byte	0xb7e
	.uleb128 0x5
	.asciz	"TRISF0"
	.byte	0x6
	.2byte	0xdd7
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISFBITS"
	.byte	0x6
	.2byte	0xddd
	.4byte	0xafe
	.uleb128 0x4
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xde2
	.4byte	0xc01
	.uleb128 0x5
	.asciz	"RF0"
	.byte	0x6
	.2byte	0xde3
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTFBITS"
	.byte	0x6
	.2byte	0xde9
	.4byte	0xb90
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0xe70
	.4byte	0xca4
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x6
	.2byte	0xe71
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0xe7c
	.4byte	0xd12
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x6
	.2byte	0xe7e
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x6
	.2byte	0xe6f
	.4byte	0xd26
	.uleb128 0x9
	.4byte	0xc13
	.uleb128 0x9
	.4byte	0xca4
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xe6e
	.4byte	0xd47
	.uleb128 0xa
	.4byte	0xd12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x6
	.2byte	0xe85
	.4byte	0xd26
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x6
	.2byte	0xf07
	.4byte	0xeba
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x6
	.2byte	0xf08
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1PCFGBITS"
	.byte	0x6
	.2byte	0xf18
	.4byte	0xd5b
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0x173f
	.4byte	0xf00
	.uleb128 0x5
	.asciz	"RP20R"
	.byte	0x6
	.2byte	0x1740
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x6
	.2byte	0x1744
	.4byte	0x1006
	.uleb128 0x5
	.asciz	"RP20R0"
	.byte	0x6
	.2byte	0x1745
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
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
	.4byte	0xfe
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x6
	.2byte	0x173e
	.4byte	0x101a
	.uleb128 0x9
	.4byte	0xece
	.uleb128 0x9
	.4byte	0xf00
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagRPOR10BITS"
	.byte	0x2
	.byte	0x6
	.2byte	0x173d
	.4byte	0x103a
	.uleb128 0xa
	.4byte	0x1006
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"RPOR10BITS"
	.byte	0x6
	.2byte	0x1754
	.4byte	0x101a
	.uleb128 0x3
	.asciz	"BYTE"
	.byte	0x7
	.byte	0x6
	.4byte	0xed
	.uleb128 0xb
	.byte	0x3
	.byte	0x8
	.byte	0x38
	.4byte	0x113e
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x8
	.byte	0x39
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x8
	.byte	0x3a
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x8
	.byte	0x3f
	.4byte	0xde
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"periodicService"
	.byte	0x8
	.byte	0x41
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"little_endian"
	.byte	0x8
	.byte	0x47
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"high_impedance"
	.byte	0x8
	.byte	0x4c
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"int16"
	.byte	0x8
	.byte	0x51
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"write_with_read"
	.byte	0x8
	.byte	0x56
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"command_error"
	.byte	0x8
	.byte	0x5b
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x8
	.byte	0x5d
	.4byte	0x1059
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.byte	0xb4
	.4byte	0x11f5
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
	.4byte	0x1163
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.byte	0xee
	.4byte	0x123e
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
	.4byte	0x121d
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.byte	0xf9
	.4byte	0x134f
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x9
	.byte	0xfa
	.4byte	0x134f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x9
	.byte	0xfb
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x9
	.byte	0xfc
	.4byte	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x9
	.byte	0xfd
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x9
	.byte	0xfe
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x9
	.byte	0xff
	.4byte	0x123e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.asciz	"bus_mode"
	.byte	0x9
	.2byte	0x100
	.4byte	0x11f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.asciz	"quiet"
	.byte	0x9
	.2byte	0x101
	.4byte	0xde
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
	.4byte	0xde
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
	.4byte	0xde
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0xde
	.uleb128 0x6
	.asciz	"bus_pirate_configuration_t"
	.byte	0x9
	.2byte	0x106
	.4byte	0x125f
	.uleb128 0x12
	.asciz	"bp_disable_mode_led"
	.byte	0x2
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_enable_usb_led"
	.byte	0x3
	.byte	0xb4
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_3v3_pullup"
	.byte	0x3
	.byte	0xd1
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_adc_pin_setup"
	.byte	0x3
	.byte	0xc3
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"delay_short"
	.byte	0x1
	.2byte	0x260
	.byte	0x1
	.byte	0x3
	.4byte	0x145b
	.uleb128 0x14
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x260
	.4byte	0xfe
	.uleb128 0x15
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x265
	.4byte	0xfe
	.uleb128 0x16
	.asciz	"ticks"
	.byte	0x1
	.2byte	0x266
	.4byte	0xfe
	.uleb128 0x15
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x267
	.4byte	0xfe
	.byte	0x0
	.uleb128 0x12
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.asciz	"clear_mode_configuration"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.asciz	"delay_long"
	.byte	0x1
	.2byte	0x249
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x1
	.byte	0x5f
	.4byte	0x152c
	.uleb128 0x19
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x249
	.4byte	0x11e
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.asciz	"ticks"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x11e
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x24f
	.4byte	0xfe
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x1a
	.asciz	"timer_value"
	.byte	0x1
	.2byte	0x252
	.4byte	0xfe
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x253
	.4byte	0xfe
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"bp_reset_board_state"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x15a3
	.uleb128 0x1e
	.4byte	0x1378
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x1e
	.4byte	0x1391
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x1e
	.4byte	0x13a8
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x1e
	.4byte	0x13c3
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x1e
	.4byte	0x13da
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x1e
	.4byte	0x13fc
	.4byte	.LBB31
	.4byte	.LBE31
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.asciz	"bp_read_adc"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0xfe
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0x15d8
	.uleb128 0x20
	.asciz	"channel"
	.byte	0x1
	.byte	0xe8
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.4byte	0xfe
	.uleb128 0x22
	.byte	0x1
	.asciz	"bp_reverse_byte"
	.byte	0x1
	.2byte	0x150
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x1614
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x150
	.4byte	0x1614
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.4byte	0xde
	.uleb128 0x22
	.byte	0x1
	.asciz	"bp_reverse_word"
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	0xfe
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x1650
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x158
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"bp_reverse_integer"
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	0xfe
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x1699
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x161
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.asciz	"bits"
	.byte	0x1
	.2byte	0x161
	.4byte	0x1614
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"bp_read_from_flash"
	.byte	0x1
	.2byte	0x21f
	.byte	0x1
	.4byte	0xfe
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x5f
	.4byte	0x1704
	.uleb128 0x23
	.asciz	"page"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.asciz	"address"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x15d8
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.asciz	"old_page"
	.byte	0x1
	.2byte	0x220
	.4byte	0x15d8
	.uleb128 0x16
	.asciz	"word"
	.byte	0x1
	.2byte	0x221
	.4byte	0xfe
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.asciz	"bp_initialise_delay_timer"
	.byte	0x1
	.2byte	0x22a
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_delay_ms"
	.byte	0x1
	.2byte	0x26e
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x1
	.byte	0x5f
	.4byte	0x1766
	.uleb128 0x23
	.asciz	"milliseconds"
	.byte	0x1
	.2byte	0x26e
	.4byte	0xfe
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_delay_us"
	.byte	0x1
	.2byte	0x270
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x5f
	.4byte	0x17c5
	.uleb128 0x19
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x270
	.4byte	0xfe
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.4byte	0x1412
	.4byte	.LBB33
	.4byte	.LBE33
	.uleb128 0x27
	.4byte	0x1428
	.uleb128 0x1c
	.4byte	.LBB34
	.4byte	.LBE34
	.uleb128 0x28
	.4byte	0x1434
	.uleb128 0x29
	.4byte	0x1440
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.4byte	0x144e
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_transmit_character"
	.byte	0x1
	.2byte	0x36b
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x1
	.byte	0x5f
	.4byte	0x1807
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x36b
	.4byte	0x1807
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.4byte	0x16c
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_hex_word"
	.byte	0x1
	.2byte	0x1fe
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0x1841
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x15d8
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_hex_byte"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x1876
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x1614
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x18
	.asciz	"print_decimal"
	.byte	0x1
	.2byte	0x1cc
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x193d
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x193d
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x23
	.asciz	"denominator"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x193d
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x23
	.asciz	"digits"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x1614
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x1a
	.asciz	"number"
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x11e
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.asciz	"divisor"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x11e
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.asciz	"current"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x11e
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.asciz	"digit"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xde
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.asciz	"first"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x115a
	.byte	0x2
	.byte	0x7f
	.sleb128 -15
	.byte	0x0
	.uleb128 0x21
	.4byte	0x11e
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_dec_byte"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x1977
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x1614
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_dec_word"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0x19ac
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_dec_dword"
	.byte	0x1
	.2byte	0x1e9
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0x19e7
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x193d
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_voltage"
	.byte	0x1
	.2byte	0x206
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.4byte	0x1a3e
	.uleb128 0x23
	.asciz	"adc"
	.byte	0x1
	.2byte	0x206
	.4byte	0x15d8
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.asciz	"centivolts"
	.byte	0x1
	.2byte	0x212
	.4byte	0x15d8
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x214
	.4byte	0xde
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"bp_adc_probe"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x1a79
	.uleb128 0x1e
	.4byte	0x145b
	.4byte	.LBB35
	.4byte	.LBE35
	.uleb128 0x1e
	.4byte	0x146e
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_bin_byte"
	.byte	0x1
	.2byte	0x18e
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x1acb
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x18e
	.4byte	0x1614
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.asciz	"mask"
	.byte	0x1
	.2byte	0x18f
	.4byte	0xde
	.byte	0x1
	.byte	0x59
	.uleb128 0x16
	.asciz	"index"
	.byte	0x1
	.2byte	0x190
	.4byte	0x148
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_string"
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b0f
	.uleb128 0x23
	.asciz	"string"
	.byte	0x1
	.2byte	0x180
	.4byte	0x1b0f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x181
	.4byte	0x16c
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x1807
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_dec_dword_friendly"
	.byte	0x1
	.2byte	0x19a
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b98
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x19a
	.4byte	0x193d
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x16
	.asciz	"temp"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x96
	.uleb128 0x1a
	.asciz	"mld"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xba
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1a
	.asciz	"mil"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xba
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.asciz	"number"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x11e
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_line"
	.byte	0x1
	.2byte	0x187
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0x1bcc
	.uleb128 0x23
	.asciz	"string"
	.byte	0x1
	.2byte	0x187
	.4byte	0x1b0f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_buffer"
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c24
	.uleb128 0x23
	.asciz	"buffer"
	.byte	0x1
	.2byte	0x178
	.4byte	0x1c24
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.asciz	"length"
	.byte	0x1
	.2byte	0x178
	.4byte	0x1c2a
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.asciz	"offset"
	.byte	0x1
	.2byte	0x179
	.4byte	0x148
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x1614
	.uleb128 0x21
	.4byte	0x148
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_formatted_integer"
	.byte	0x1
	.2byte	0x127
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c7d
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x127
	.4byte	0x15d8
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.asciz	"integer"
	.byte	0x1
	.2byte	0x128
	.4byte	0xfe
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_ringbuffer_append"
	.byte	0x1
	.2byte	0x373
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x5f
	.4byte	0x1cbe
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x373
	.4byte	0x1807
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_write_hex_byte_to_ringbuffer"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0x1d01
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x1614
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.asciz	"user_serial_ready_to_read"
	.byte	0x1
	.2byte	0x377
	.byte	0x1
	.4byte	0x115a
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.byte	0x1
	.asciz	"user_serial_read_byte"
	.byte	0x1
	.2byte	0x379
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_adc_continuous_probe"
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x1d9c
	.uleb128 0x1a
	.asciz	"measurement"
	.byte	0x1
	.2byte	0x107
	.4byte	0xfe
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_ringbuffer_flush"
	.byte	0x1
	.2byte	0x37b
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_ringbuffer_setup"
	.byte	0x1
	.2byte	0x37d
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_ringbuffer_process"
	.byte	0x1
	.2byte	0x37f
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_initialise"
	.byte	0x1
	.2byte	0x381
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_wait_transmission_done"
	.byte	0x1
	.2byte	0x383
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2a
	.byte	0x1
	.asciz	"user_serial_check_overflow"
	.byte	0x1
	.2byte	0x385
	.byte	0x1
	.4byte	0x115a
	.4byte	.LFB61
	.4byte	.LFE61
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"user_serial_clear_overflow"
	.byte	0x1
	.2byte	0x387
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_set_baud_rate"
	.byte	0x1
	.2byte	0x389
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x1
	.byte	0x5f
	.4byte	0x1f17
	.uleb128 0x23
	.asciz	"rate"
	.byte	0x1
	.2byte	0x389
	.4byte	0x15d8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.asciz	"user_serial_transmit_done"
	.byte	0x1
	.2byte	0x38b
	.byte	0x1
	.4byte	0x115a
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x1
	.byte	0x5f
	.uleb128 0x22
	.byte	0x1
	.asciz	"user_serial_read_big_endian_word"
	.byte	0x1
	.2byte	0x38f
	.byte	0x1
	.4byte	0xfe
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x1
	.byte	0x5f
	.4byte	0x1f8b
	.uleb128 0x15
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x390
	.4byte	0xfe
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"user_serial_read_big_endian_long_word"
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	0x11e
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x5f
	.4byte	0x1fd6
	.uleb128 0x15
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x396
	.4byte	0x11e
	.byte	0x0
	.uleb128 0x2b
	.asciz	"TBLPAG"
	.byte	0x6
	.byte	0x5d
	.4byte	0x1fe6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xde
	.uleb128 0x2b
	.asciz	"CNEN1"
	.byte	0x6
	.byte	0xd9
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xfe
	.uleb128 0x2d
	.asciz	"CNPU1"
	.byte	0x6
	.2byte	0x12d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF5
	.byte	0x6
	.2byte	0x1c3
	.4byte	0x201d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x2b3
	.uleb128 0x2e
	.4byte	.LASF6
	.byte	0x6
	.2byte	0x22f
	.4byte	0x2030
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x3f6
	.uleb128 0x2d
	.asciz	"TMR1"
	.byte	0x6
	.2byte	0x50b
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"PR1"
	.byte	0x6
	.2byte	0x50d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"T1CON"
	.byte	0x6
	.2byte	0x50f
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF7
	.byte	0x6
	.2byte	0x525
	.4byte	0x2070
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x4ec
	.uleb128 0x2e
	.4byte	.LASF8
	.byte	0x6
	.2byte	0xce4
	.4byte	0x2083
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x66b
	.uleb128 0x2e
	.4byte	.LASF9
	.byte	0x6
	.2byte	0xcfa
	.4byte	0x2096
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x7ba
	.uleb128 0x2e
	.4byte	.LASF10
	.byte	0x6
	.2byte	0xd31
	.4byte	0x20a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x83b
	.uleb128 0x2e
	.4byte	.LASF11
	.byte	0x6
	.2byte	0xd64
	.4byte	0x20bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x962
	.uleb128 0x2d
	.asciz	"TRISE"
	.byte	0x6
	.2byte	0xd9d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF12
	.byte	0x6
	.2byte	0xda8
	.4byte	0x20df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xa33
	.uleb128 0x2e
	.4byte	.LASF13
	.byte	0x6
	.2byte	0xdb6
	.4byte	0x20f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xaec
	.uleb128 0x2d
	.asciz	"LATE"
	.byte	0x6
	.2byte	0xdb9
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF14
	.byte	0x6
	.2byte	0xdde
	.4byte	0x2114
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xb7e
	.uleb128 0x2e
	.4byte	.LASF15
	.byte	0x6
	.2byte	0xdea
	.4byte	0x2127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xc01
	.uleb128 0x2e
	.4byte	.LASF16
	.byte	0x6
	.2byte	0xe4d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF17
	.byte	0x6
	.2byte	0xe86
	.4byte	0x2148
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xd47
	.uleb128 0x2d
	.asciz	"AD1CON2"
	.byte	0x6
	.2byte	0xe89
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CON3"
	.byte	0x6
	.2byte	0xea7
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CHS"
	.byte	0x6
	.2byte	0xec4
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF18
	.byte	0x6
	.2byte	0xf19
	.4byte	0x2190
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0xeba
	.uleb128 0x2d
	.asciz	"AD1CSSL"
	.byte	0x6
	.2byte	0xf32
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x1755
	.4byte	0x21b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x103a
	.uleb128 0x2f
	.4byte	0xde
	.4byte	0x21ca
	.uleb128 0x30
	.4byte	0x10e
	.byte	0x1
	.byte	0x0
	.uleb128 0x31
	.asciz	"HEX_PREFIX"
	.byte	0x1
	.byte	0x1e
	.4byte	0x21dc
	.uleb128 0x21
	.4byte	0x21ba
	.uleb128 0x2f
	.4byte	0xed
	.4byte	0x21f1
	.uleb128 0x30
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0x32
	.asciz	"HEX_ASCII_TABLE"
	.byte	0x1
	.byte	0x23
	.4byte	0x220e
	.byte	0x5
	.byte	0x3
	.4byte	_HEX_ASCII_TABLE
	.uleb128 0x21
	.4byte	0x21e1
	.uleb128 0x33
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	0x104d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x1355
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.4byte	0x113e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	0xde
	.4byte	0x224a
	.uleb128 0x30
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0x32
	.asciz	"REVERSED_BITS_TABLE"
	.byte	0x1
	.byte	0x55
	.4byte	0x226b
	.byte	0x5
	.byte	0x3
	.4byte	_REVERSED_BITS_TABLE
	.uleb128 0x21
	.4byte	0x223a
	.uleb128 0x2b
	.asciz	"TBLPAG"
	.byte	0x6
	.byte	0x5d
	.4byte	0x1fe6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.asciz	"CNEN1"
	.byte	0x6
	.byte	0xd9
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"CNPU1"
	.byte	0x6
	.2byte	0x12d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF5
	.byte	0x6
	.2byte	0x1c3
	.4byte	0x201d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF6
	.byte	0x6
	.2byte	0x22f
	.4byte	0x2030
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"TMR1"
	.byte	0x6
	.2byte	0x50b
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"PR1"
	.byte	0x6
	.2byte	0x50d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"T1CON"
	.byte	0x6
	.2byte	0x50f
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF7
	.byte	0x6
	.2byte	0x525
	.4byte	0x2070
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF8
	.byte	0x6
	.2byte	0xce4
	.4byte	0x2083
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF9
	.byte	0x6
	.2byte	0xcfa
	.4byte	0x2096
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF10
	.byte	0x6
	.2byte	0xd31
	.4byte	0x20a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF11
	.byte	0x6
	.2byte	0xd64
	.4byte	0x20bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"TRISE"
	.byte	0x6
	.2byte	0xd9d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF12
	.byte	0x6
	.2byte	0xda8
	.4byte	0x20df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF13
	.byte	0x6
	.2byte	0xdb6
	.4byte	0x20f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"LATE"
	.byte	0x6
	.2byte	0xdb9
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF14
	.byte	0x6
	.2byte	0xdde
	.4byte	0x2114
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF15
	.byte	0x6
	.2byte	0xdea
	.4byte	0x2127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF16
	.byte	0x6
	.2byte	0xe4d
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF17
	.byte	0x6
	.2byte	0xe86
	.4byte	0x2148
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CON2"
	.byte	0x6
	.2byte	0xe89
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CON3"
	.byte	0x6
	.2byte	0xea7
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CHS"
	.byte	0x6
	.2byte	0xec4
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF18
	.byte	0x6
	.2byte	0xf19
	.4byte	0x2190
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"AD1CSSL"
	.byte	0x6
	.2byte	0xf32
	.4byte	0x1ffa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x1755
	.4byte	0x21b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.4byte	0x104d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x1355
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.4byte	0x113e
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x41c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x242c
	.4byte	0x152c
	.asciz	"bp_reset_board_state"
	.4byte	0x15a3
	.asciz	"bp_read_adc"
	.4byte	0x15dd
	.asciz	"bp_reverse_byte"
	.4byte	0x1619
	.asciz	"bp_reverse_word"
	.4byte	0x1650
	.asciz	"bp_reverse_integer"
	.4byte	0x1699
	.asciz	"bp_read_from_flash"
	.4byte	0x1704
	.asciz	"bp_initialise_delay_timer"
	.4byte	0x172e
	.asciz	"bp_delay_ms"
	.4byte	0x1766
	.asciz	"bp_delay_us"
	.4byte	0x17c5
	.asciz	"user_serial_transmit_character"
	.4byte	0x180c
	.asciz	"bp_write_hex_word"
	.4byte	0x1841
	.asciz	"bp_write_hex_byte"
	.4byte	0x1942
	.asciz	"bp_write_dec_byte"
	.4byte	0x1977
	.asciz	"bp_write_dec_word"
	.4byte	0x19ac
	.asciz	"bp_write_dec_dword"
	.4byte	0x19e7
	.asciz	"bp_write_voltage"
	.4byte	0x1a3e
	.asciz	"bp_adc_probe"
	.4byte	0x1a79
	.asciz	"bp_write_bin_byte"
	.4byte	0x1acb
	.asciz	"bp_write_string"
	.4byte	0x1b15
	.asciz	"bp_write_dec_dword_friendly"
	.4byte	0x1b98
	.asciz	"bp_write_line"
	.4byte	0x1bcc
	.asciz	"bp_write_buffer"
	.4byte	0x1c2f
	.asciz	"bp_write_formatted_integer"
	.4byte	0x1c7d
	.asciz	"user_serial_ringbuffer_append"
	.4byte	0x1cbe
	.asciz	"bp_write_hex_byte_to_ringbuffer"
	.4byte	0x1d01
	.asciz	"user_serial_ready_to_read"
	.4byte	0x1d2f
	.asciz	"user_serial_read_byte"
	.4byte	0x1d59
	.asciz	"bp_adc_continuous_probe"
	.4byte	0x1d9c
	.asciz	"user_serial_ringbuffer_flush"
	.4byte	0x1dc9
	.asciz	"user_serial_ringbuffer_setup"
	.4byte	0x1df6
	.asciz	"user_serial_ringbuffer_process"
	.4byte	0x1e25
	.asciz	"user_serial_initialise"
	.4byte	0x1e4c
	.asciz	"user_serial_wait_transmission_done"
	.4byte	0x1e7f
	.asciz	"user_serial_check_overflow"
	.4byte	0x1eae
	.asciz	"user_serial_clear_overflow"
	.4byte	0x1ed9
	.asciz	"user_serial_set_baud_rate"
	.4byte	0x1f17
	.asciz	"user_serial_transmit_done"
	.4byte	0x1f45
	.asciz	"user_serial_read_big_endian_word"
	.4byte	0x1f8b
	.asciz	"user_serial_read_big_endian_long_word"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x27b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x242c
	.4byte	0xde
	.asciz	"uint8_t"
	.4byte	0xfe
	.asciz	"uint16_t"
	.4byte	0x11e
	.asciz	"uint32_t"
	.4byte	0x148
	.asciz	"size_t"
	.4byte	0x181
	.asciz	"tagIFS1BITS"
	.4byte	0x2b3
	.asciz	"IFS1BITS"
	.4byte	0x2c4
	.asciz	"tagIEC1BITS"
	.4byte	0x3f6
	.asciz	"IEC1BITS"
	.4byte	0x4cd
	.asciz	"tagT1CONBITS"
	.4byte	0x4ec
	.asciz	"T1CONBITS"
	.4byte	0x4fe
	.asciz	"tagTRISBBITS"
	.4byte	0x66b
	.asciz	"TRISBBITS"
	.4byte	0x67d
	.asciz	"tagPORTBBITS"
	.4byte	0x7ba
	.asciz	"PORTBBITS"
	.4byte	0x7cc
	.asciz	"tagTRISCBITS"
	.4byte	0x83b
	.asciz	"TRISCBITS"
	.4byte	0x84d
	.asciz	"tagTRISDBITS"
	.4byte	0x962
	.asciz	"TRISDBITS"
	.4byte	0x974
	.asciz	"tagTRISEBITS"
	.4byte	0xa33
	.asciz	"TRISEBITS"
	.4byte	0xa45
	.asciz	"tagPORTEBITS"
	.4byte	0xaec
	.asciz	"PORTEBITS"
	.4byte	0xafe
	.asciz	"tagTRISFBITS"
	.4byte	0xb7e
	.asciz	"TRISFBITS"
	.4byte	0xb90
	.asciz	"tagPORTFBITS"
	.4byte	0xc01
	.asciz	"PORTFBITS"
	.4byte	0xd26
	.asciz	"tagAD1CON1BITS"
	.4byte	0xd47
	.asciz	"AD1CON1BITS"
	.4byte	0xd5b
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xeba
	.asciz	"AD1PCFGBITS"
	.4byte	0x101a
	.asciz	"tagRPOR10BITS"
	.4byte	0x103a
	.asciz	"RPOR10BITS"
	.4byte	0x104d
	.asciz	"BYTE"
	.4byte	0x113e
	.asciz	"mode_configuration_t"
	.4byte	0x11f5
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0x123e
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0x1355
	.asciz	"bus_pirate_configuration_t"
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
.LASF17:
	.asciz	"AD1CON1bits"
.LASF4:
	.asciz	"character"
.LASF3:
	.asciz	"value"
.LASF15:
	.asciz	"PORTFbits"
.LASF9:
	.asciz	"PORTBbits"
.LASF2:
	.asciz	"microseconds"
.LASF10:
	.asciz	"TRISCbits"
.LASF16:
	.asciz	"ADC1BUF0"
.LASF20:
	.asciz	"cdc_Out_len"
.LASF7:
	.asciz	"T1CONbits"
.LASF6:
	.asciz	"IEC1bits"
.LASF11:
	.asciz	"TRISDbits"
.LASF0:
	.asciz	"ticks_delta"
.LASF5:
	.asciz	"IFS1bits"
.LASF1:
	.asciz	"timer_start"
.LASF21:
	.asciz	"bus_pirate_configuration"
.LASF12:
	.asciz	"TRISEbits"
.LASF18:
	.asciz	"AD1PCFGbits"
.LASF13:
	.asciz	"PORTEbits"
.LASF22:
	.asciz	"mode_configuration"
.LASF14:
	.asciz	"TRISFbits"
.LASF8:
	.asciz	"TRISBbits"
.LASF19:
	.asciz	"RPOR10bits"
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0001
	.word 0x0000

; MCHP configuration words
; Configuration word @ 0x0002abfe
	.section	.config_JTAGEN, code, address(0x2abfe), keep
__config_JTAGEN:
	.pword	15999
; Configuration word @ 0x0002abfc
	.section	.config_IESO, code, address(0x2abfc), keep
__config_IESO:
	.pword	9118

	.set ___PA___,0
	.end
