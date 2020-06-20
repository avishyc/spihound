	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\basic.c"
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
	.type	_handle_else_statement,@function
_handle_else_statement:
.LFB24:
	.file 1 "../basic.c"
	.loc 1 356 0
	.set ___PA___,1
	.loc 1 357 0
	mov	_basic_program_counter,w0
	mov	#_basic_program_area,w1
	mov.b	[w1+w0],w2
	mov.b	#-125,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,62
	bra	nz,.L1
	.loc 1 361 0
	inc	w0,w0
	mov	w0,_basic_program_counter
	.loc 1 362 0
	mov	#_basic_program_area,w1
	mov.b	[w1+w0],w2
	mov.b	#-32,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,9
	bra	gtu,.L1
	.loc 1 356 0
	mov	#_basic_program_area,w1
	add	w0,w1,w1
	.loc 1 362 0
	mov.b	#-32,w2
.L3:
	.loc 1 363 0
	inc	w0,w0
	.loc 1 362 0
	subr.b	w2,[++w1],[w15]
	.set ___BP___,91
	bra	leu,.L3
	mov	w0,_basic_program_counter
.L1:
	.loc 1 365 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_handle_else_statement, .-_handle_else_statement
	.align	2
	.type	_search_line_number,@function
_search_line_number:
.LFB25:
	.loc 1 367 0
	.set ___PA___,1
	.loc 1 373 0
	mov	#_basic_program_area,w2
	mov.b	[w2],w4
	.loc 1 374 0
	clr.b	w2
	.loc 1 373 0
	mov.b	#-32,w3
	sub.b	w4,w3,[w15]
	.set ___BP___,4
	bra	leu,.L6
	.loc 1 378 0
	mov	#_basic_program_area+1,w2
	ze	[w2],w2
	sl	w2,#8,w2
	mov	#_basic_program_area+2,w3
	ze	[w3],w3
	add	w2,w3,w2
	.loc 1 379 0
	sub	w0,w2,[w15]
	.set ___BP___,95
	bra	nz,.L13
	bra	.L14
.L10:
	.loc 1 378 0
	inc	w2,w5
	mov.b	[w3+w5],w6
	sl	w6,#8,w6
	inc2	w2,w5
	mov.b	[w3+w5],w5
	ze	w5,w5
	add	w6,w5,w5
	.loc 1 379 0
	sub	w0,w5,[w15]
	.set ___BP___,4
	bra	z,.L7
	.loc 1 376 0
	add.b	#32,w4
	bra	.L9
.L14:
	.loc 1 368 0
	clr	w2
.L7:
	.loc 1 380 0
	mov	w2,[w1]
	.loc 1 381 0
	mov.b	#1,w2
	bra	.L6
.L13:
	.loc 1 376 0
	add.b	#32,w4
	.loc 1 368 0
	clr	w2
	.loc 1 373 0
	mov	#_basic_program_area,w3
	mov.b	#-32,w7
.L9:
	.loc 1 383 0
	ze	w4,w4
	add	w4,#3,w4
	add	w2,w4,w2
	.loc 1 373 0
	mov.b	[w3+w2],w4
	sub.b	w4,w7,[w15]
	.set ___BP___,95
	bra	gtu,.L10
	.loc 1 374 0
	clr.b	w2
.L6:
	.loc 1 387 0
	mov.b	w2,w0
	return	
	.set ___PA___,0
.LFE25:
	.size	_search_line_number, .-_search_line_number
	.align	2
	.type	_compare,@function
_compare:
.LFB32:
	.loc 1 1025 0
	.set ___PA___,1
	.loc 1 1026 0
	mov	_cmdstart,w6
	.loc 1 1028 0
	mov.b	[w0],w2
	.loc 1 1038 0
	mov.b	#1,w1
	.loc 1 1028 0
	cp0.b	w2
	.set ___BP___,4
	bra	z,.L16
	.loc 1 1029 0
	mov	#_cmdbuf,w1
	mov.b	[w1+w6],w1
	sub.b	w2,w1,[w15]
	.set ___BP___,95
	bra	z,.L23
	bra	.L17
.L20:
	mov.b	[w5+w1],w3
	sub.b	w2,w3,[w15]
	.set ___BP___,95
	bra	z,.L19
.L17:
	.loc 1 1030 0
	mov	w6,_cmdstart
	.loc 1 1031 0
	clr.b	w1
	bra	.L16
.L23:
	.loc 1 1029 0
	mov	w6,w1
	.loc 1 1034 0
	mov	#255,w4
	.loc 1 1029 0
	mov	#_cmdbuf,w5
.L19:
	.loc 1 1034 0
	inc	w1,w1
	and	w1,w4,w1
	mov	w1,_cmdstart
	.loc 1 1028 0
	mov.b	[++w0],w2
	cp0.b	w2
	.set ___BP___,95
	bra	nz,.L20
	.loc 1 1038 0
	mov.b	#1,w1
.L16:
	.loc 1 1039 0
	mov.b	w1,w0
	return	
	.set ___PA___,0
.LFE32:
	.size	_compare, .-_compare
	.align	2
	.type	_get_token,@function
_get_token:
.LFB33:
	.loc 1 1041 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov	w10,[w15++]
.LCFI1:
	.loc 1 1050 0
	mov	#_tokens-2,w9
	.loc 1 1044 0
	clr	w8
	mov	#34,w10
.L27:
	.loc 1 1045 0
	mov	[++w9],w0
	call	_compare
	cp0.b	w0
	.set ___BP___,95
	bra	z,.L25
	.loc 1 1046 0
	mov.b	#-128,w0
	add.b	w8,w0,w0
	bra	.L26
.L25:
	.loc 1 1044 0
	inc	w8,w8
	sub	w8,w10,[w15]
	.set ___BP___,97
	bra	nz,.L27
	.loc 1 1050 0
	clr.b	w0
.L26:
	.loc 1 1051 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_get_token, .-_get_token
	.section .const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_list,@function
_list:
.LFB31:
	.loc 1 996 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov	w10,[w15++]
.LCFI3:
	.loc 1 1000 0
	clr	w0
	mov	w0,_basic_program_counter
	.loc 1 1002 0
	mov	#_basic_program_area,w0
	mov.b	[w0],w8
	cp0.b	w8
	.set ___BP___,9
	bra	z,.L30
	.loc 1 1015 0
	mov	#_tokens,w10
	.loc 1 1008 0
	mov	w0,w9
.L35:
	.loc 1 1004 0
	cp0.b	w8
	.set ___BP___,47
	bra	lt,.L31
	.loc 1 1005 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	bra	.L32
.L31:
	.loc 1 1006 0
	mov.b	#-32,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,50
	bra	leu,.L33
	.loc 1 1007 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 1008 0
	mov	_basic_program_counter,w0
	.loc 1 1009 0
	inc2	w0,w1
	.loc 1 1008 0
	inc	w0,w0
	mov.b	[w9+w0],w2
	sl	w2,#8,w2
	mov.b	[w9+w1],w0
	ze	w0,w0
	add	w2,w0,w0
	.loc 1 1010 0
	mov	w1,_basic_program_counter
	.loc 1 1011 0
	call	_bp_write_dec_word
	.loc 1 1012 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	bra	.L32
.L33:
	.loc 1 1014 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 1015 0
	ze	w8,w8
	sub	#128,w8
	add	w8,w8,w8
	mov	[w10+w8],w0
	call	_bp_write_string
	.loc 1 1016 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
.L32:
	.loc 1 1018 0
	mov	_basic_program_counter,w0
	inc	w0,w0
	mov	w0,_basic_program_counter
	.loc 1 1002 0
	mov.b	[w9+w0],w8
	cp0.b	w8
	.set ___BP___,91
	bra	nz,.L35
.L30:
	.loc 1 1020 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 1021 0
	mov	_basic_program_counter,w0
	dec	w0,w0
	call	_bp_write_dec_word
	.loc 1 1022 0
	mov	#tbloffset(_BPMSG1050_str),w0
	mov	#tblpage(_BPMSG1050_str),w1
	call	_bp_message_write_line
	.loc 1 1023 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE31:
	.size	_list, .-_list
	.align	2
	.type	_handle_special_token,@function
_handle_special_token:
.LFB26:
	.loc 1 389 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	.loc 1 390 0
	mov.b	#-105,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L42
	.set ___BP___,50
	bra	gtu,.L47
	sub.b	w1,#3,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L40
	inc2.b	w1,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L41
	sub.b	w1,#3,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L49
	bra	.L50
.L47:
	mov.b	#-102,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L44
	.set ___BP___,50
	bra	gtu,.L48
	dec2.b	w1,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L49
	bra	.L51
.L48:
	mov.b	#-101,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L45
	inc2.b	w1,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L49
	bra	.L52
.L40:
	.loc 1 393 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#10,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	bra	.L38
.L50:
	.loc 1 396 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#8,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w8
	call	_assign
	call	w8
	bra	.L38
.L52:
	.loc 1 399 0
	call	_bp_aux_pin_read
	ze	w0,w0
	bra	.L38
.L41:
	.loc 1 402 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#20,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	bra	.L38
.L42:
	.loc 1 405 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#24,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	ze	w0,w0
	bra	.L38
.L44:
	.loc 1 408 0
	mov	_PORTBbits,w0
	lsr	w0,#9,w0
	and	w0,#1,w0
	bra	.L38
.L45:
	.loc 1 411 0
	mov	_PORTEbits,w0
	lsr	w0,#4,w0
	and	w0,#1,w0
	com	w0,w0
	bra	.L38
.L51:
.LBB31:
.LBB32:
.LBB33:
	.file 2 "../hardware.h"
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE33:
.LBE32:
	.loc 1 415 0
	mov	#1,w0
	call	_bp_read_adc
.LBB34:
.LBB35:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.LBE35:
.LBE34:
	.loc 1 418 0
	bra	.L38
.L49:
.LBE31:
	.loc 1 422 0
	clr	w0
.L38:
	.loc 1 424 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE26:
	.size	_handle_special_token, .-_handle_special_token
	.align	2
	.type	_get_number_or_variable,@function
_get_number_or_variable:
.LFB27:
	.loc 1 426 0
	.set ___PA___,1
	.loc 1 429 0
	mov	_basic_program_counter,w2
	mov	#_basic_program_area,w0
	mov.b	[w0+w2],w1
	mov.b	#40,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,86
	bra	nz,.L54
	.loc 1 430 0
	inc	w2,w2
	mov	w2,_basic_program_counter
	.loc 1 431 0
	call	_assign
	.loc 1 432 0
	mov	_basic_program_counter,w1
	mov	#_basic_program_area,w2
	mov.b	[w2+w1],w3
	mov.b	#41,w2
	sub.b	w3,w2,[w15]
	.set ___BP___,72
	bra	nz,.L55
	.loc 1 433 0
	inc	w1,w1
	mov	w1,_basic_program_counter
	bra	.L55
.L54:
	.loc 1 436 0
	mov.b	#-65,w0
	add.b	w1,w0,w0
	sub.b	w0,#25,[w15]
	.set ___BP___,61
	bra	gtu,.L56
	.loc 1 438 0
	ze	w1,w1
	sub	#65,w1
	add	w1,w1,w1
	mov	#_basic_variables,w0
	mov	[w0+w1],w0
	inc	w2,w2
	mov	w2,_basic_program_counter
	bra	.L55
.L56:
	.loc 1 441 0
	mov.b	#-128,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,20
	bra	gtu,.L57
	.loc 1 445 0
	mov.b	#-48,w0
	add.b	w1,w0,w0
	sub.b	w0,#9,[w15]
	.set ___BP___,91
	bra	leu,.L58
	clr	w0
	bra	.L55
.L57:
	.loc 1 442 0
	inc	w2,w2
	mov	w2,_basic_program_counter
	mov.b	w1,w0
	call	_handle_special_token
	bra	.L55
.L58:
	.loc 1 426 0
	mov	#_basic_program_area,w3
	add	w2,w3,w3
	clr	w0
	.loc 1 445 0
	mov.b	#-48,w6
.L59:
	.loc 1 447 0
	mul.su	w0,#10,w4
	.loc 1 448 0
	ze	w1,w0
	add	w0,w4,w0
	sub	#48,w0
	.loc 1 449 0
	inc	w2,w2
	.loc 1 445 0
	mov.b	[++w3],w1
	add.b	w1,w6,w4
	sub.b	w4,#9,[w15]
	.set ___BP___,91
	bra	leu,.L59
	mov	w2,_basic_program_counter
.L55:
	.loc 1 454 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_get_number_or_variable, .-_get_number_or_variable
	.align	2
	.type	_get_multiplication_division_bitwise_ops,@function
_get_multiplication_division_bitwise_ops:
.LFB28:
	.loc 1 456 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI5:
	mov	w10,[w15++]
.LCFI6:
	.loc 1 457 0
	call	_get_number_or_variable
	mov	w0,w9
	.loc 1 460 0
	mov	#_basic_program_area,w10
	mov.b	#42,w8
.L70:
	mov	_basic_program_counter,w1
	mov.b	[w10+w1],w0
	inc	w1,w1
	mov	w1,_basic_program_counter
	sub.b	w0,w8,[w15]
	.set ___BP___,29
	bra	z,.L65
	.set ___BP___,50
	bra	gtu,.L68
	mov.b	#38,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L63
	bra	.L71
.L68:
	mov.b	#47,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L66
	mov.b	#124,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L63
	bra	.L72
.L65:
	.loc 1 462 0
	call	_get_number_or_variable
	mul.ss	w9,w0,w0
	mov	w0,w9
	.loc 1 463 0
	bra	.L70
.L66:
	.loc 1 466 0
	call	_get_number_or_variable
	mov	w0,w3
	repeat	#__TARGET_DIVIDE_CYCLES
	div.sw	w9,w3
	mov	w0,w9
	.loc 1 467 0
	bra	.L70
.L71:
	.loc 1 470 0
	call	_get_number_or_variable
	and	w9,w0,w9
	.loc 1 471 0
	bra	.L70
.L72:
	.loc 1 474 0
	call	_get_number_or_variable
	ior	w0,w9,w9
	bra	.L70
.L63:
	.loc 1 481 0
	mov	w9,w0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_get_multiplication_division_bitwise_ops, .-_get_multiplication_division_bitwise_ops
	.align	2
	.type	_assign,@function
_assign:
.LFB29:
	.loc 1 483 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI7:
	mov	w10,[w15++]
.LCFI8:
	.loc 1 484 0
	call	_get_multiplication_division_bitwise_ops
	mov	w0,w8
	.loc 1 487 0
	mov	#_basic_program_area,w10
	mov.b	#60,w9
.L90:
	mov	_basic_program_counter,w1
	mov.b	[w10+w1],w0
	inc	w1,w1
	mov	w1,_basic_program_counter
	sub.b	w0,w9,[w15]
	.set ___BP___,29
	bra	z,.L78
	.set ___BP___,50
	bra	gtu,.L81
	mov.b	#43,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L76
	inc2.b	w1,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L75
	bra	.L91
.L81:
	mov.b	#61,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,29
	bra	z,.L79
	inc.b	w2,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,71
	bra	nz,.L75
	bra	.L92
.L91:
	.loc 1 489 0
	call	_get_multiplication_division_bitwise_ops
	sub	w8,w0,w8
	.loc 1 490 0
	bra	.L90
.L76:
	.loc 1 493 0
	call	_get_multiplication_division_bitwise_ops
	add	w8,w0,w8
	.loc 1 494 0
	bra	.L90
.L92:
	.loc 1 497 0
	inc	w1,w1
	mov.b	[w10+w1],w1
	mov.b	#61,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,72
	bra	nz,.L83
	.loc 1 498 0
	call	_get_multiplication_division_bitwise_ops
	mov	#1,w1
	sub	w0,w8,[w15]
	.set ___BP___,50
	bra	le,.L84
	clr	w1
.L84:
	mov	w1,w8
	.loc 1 499 0
	mov	_basic_program_counter,w0
	inc	w0,w0
	mov	w0,_basic_program_counter
	bra	.L90
.L83:
	.loc 1 501 0
	call	_get_multiplication_division_bitwise_ops
	mov	#1,w1
	sub	w0,w8,[w15]
	.set ___BP___,50
	bra	lt,.L85
	clr	w1
.L85:
	mov	w1,w8
	bra	.L90
.L78:
	.loc 1 506 0
	inc	w1,w1
	mov.b	[w10+w1],w0
	mov.b	#62,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,86
	bra	nz,.L86
	.loc 1 507 0
	call	_get_multiplication_division_bitwise_ops
	xor	w0,w8,w8
	btsc	w8,#15
	neg	w8,w8
	neg	w8,w8
	lsr	w8,#15,w8
	.loc 1 508 0
	mov	_basic_program_counter,w0
	inc	w0,w0
	mov	w0,_basic_program_counter
	bra	.L90
.L86:
	.loc 1 509 0
	mov.b	#61,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,72
	bra	nz,.L87
	.loc 1 510 0
	call	_get_multiplication_division_bitwise_ops
	mov	#1,w1
	sub	w0,w8,[w15]
	.set ___BP___,50
	bra	ge,.L88
	clr	w1
.L88:
	mov	w1,w8
	.loc 1 511 0
	mov	_basic_program_counter,w0
	inc	w0,w0
	mov	w0,_basic_program_counter
	bra	.L90
.L87:
	.loc 1 513 0
	call	_get_multiplication_division_bitwise_ops
	mov	#1,w1
	sub	w0,w8,[w15]
	.set ___BP___,50
	bra	gt,.L89
	clr	w1
.L89:
	mov	w1,w8
	bra	.L90
.L79:
	.loc 1 518 0
	call	_get_multiplication_division_bitwise_ops
	xor	w0,w8,w8
	btsc	w8,#15
	neg	w8,w8
	dec	w8,w8
	lsr	w8,#15,w8
	bra	.L90
.L75:
	.loc 1 525 0
	mov	w8,w0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_assign, .-_assign
	.section .const,psv,page
.LC1:
	.asciz	"RETURN"
	.section	.text,code
	.align	2
	.type	_interpreter,@function
_interpreter:
.LFB30:
	.loc 1 527 0
	.set ___PA___,1
	add	w15,#16,w15
.LCFI9:
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	mov.d	w12,[w15++]
.LCFI12:
	mov	w14,[w15++]
.LCFI13:
	.loc 1 538 0
	clr	w0
	mov	w0,_basic_program_counter
	.loc 1 539 0
	mov	w0,_basic_current_nested_for_index
	.loc 1 540 0
	mov	w0,_basic_current_stack_frame
	.loc 1 541 0
	mov	w0,_basic_data_read_pointer
	.loc 1 542 0
	mov	#_bus_pirate_configuration+10,w0
	bset	[w0],#0
	.loc 1 544 0
	mov	#_basic_variables,w0
	repeat	#26-1
	clr	[w0++]
	.loc 1 534 0
	clr	w1
	.loc 1 532 0
	clr	w12
	.loc 1 531 0
	clr	w11
	.loc 1 548 0
	mov	#_basic_program_area,w9
	.loc 1 784 0
	mov.b	#-114,w13
	.loc 1 681 0
	mov.b	#34,w10
.L181:
	.loc 1 547 0
	cp0	w1
	.set ___BP___,50
	bra	nz,.L94
	.loc 1 548 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w11
	mov.b	#-33,w1
	sub.b	w11,w1,[w15]
	.set ___BP___,4
	bra	leu,.L95
	.loc 1 553 0
	ze	w11,w11
	sub	#224,w11
	.loc 1 554 0
	inc	w0,w1
	mov.b	[w9+w1],w12
	sl	w12,#8,w12
	.loc 1 555 0
	inc2	w0,w0
	.loc 1 554 0
	mov.b	[w9+w0],w0
	ze	w0,w0
	ior	w0,w12,w12
.L94:
	.loc 1 560 0
	mov	_basic_program_counter,w2
	add	w2,#3,w3
	mov.b	[w9+w3],w0
	ze	w0,w0
	clr	w1
	sub	w0,#128
	subb	w1,#0
	mov	#33,w4
	sub	w0,w4,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L185
	bra	w0
	.align	2
	.set	___PA___,0
.L125:
	bra	.L97
	bra	.L98
	bra	.L185
	bra	.L185
	bra	.L99
	bra	.L100
	bra	.L101
	bra	.L102
	bra	.L103
	bra	.L104
	bra	.L105
	bra	.L185
	bra	.L106
	bra	.L107
	bra	.L108
	bra	.L109
	bra	.L110
	bra	.L111
	bra	.L112
	bra	.L113
	bra	.L185
	bra	.L114
	bra	.L115
	bra	.L185
	bra	.L185
	bra	.L116
	bra	.L117
	bra	.L118
	bra	.L119
	bra	.L120
	bra	.L121
	bra	.L122
	bra	.L123
	bra	.L124
	.set	___PA___,1
.L97:
	.loc 1 563 0
	add	w2,#6,w0
	mov	w0,_basic_program_counter
	.loc 1 565 0
	add	w2,#4,w2
	mov.b	[w9+w2],w8
	ze	w8,w8
	sub	#65,w8
	.loc 1 566 0
	call	_assign
	.loc 1 565 0
	add	w8,w8,w8
	mov	#_basic_variables,w1
	mov	w0,[w1+w8]
	.loc 1 567 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 568 0
	clr.b	w8
	bra	.L183
.L98:
	.loc 1 572 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 574 0
	call	_assign
	cp0	w0
	.set ___BP___,50
	bra	nz,.L127
	.loc 1 580 0
	mov	_basic_program_counter,w1
	mov.b	[w9+w1],w0
	mov.b	#-125,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,4
	bra	z,.L128
	mov.b	#-32,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,95
	bra	leu,.L129
	bra	.L130
.L127:
	.loc 1 575 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w3
	inc	w0,w0
	mov	w0,_basic_program_counter
	.loc 1 558 0
	clr	w1
	.loc 1 575 0
	clr.b	w8
	mov.b	#-126,w2
	sub.b	w3,w2,[w15]
	.set ___BP___,72
	bra	nz,.L183
	.loc 1 577 0
	sub	w0,#3,w0
	mov	w0,_basic_program_counter
	.loc 1 576 0
	mov	#1,w1
	bra	.L183
.L129:
	.loc 1 527 0
	add	w1,w9,w2
	.loc 1 580 0
	mov.b	#-125,w3
	mov.b	#-32,w4
.L132:
	.loc 1 582 0
	inc	w1,w1
	.loc 1 580 0
	mov.b	[++w2],w0
	sub.b	w0,w3,[w15]
	.set ___BP___,4
	bra	z,.L128
	sub.b	w0,w4,[w15]
	.set ___BP___,95
	bra	leu,.L132
	bra	.L216
.L128:
	.loc 1 586 0
	dec2	w1,w1
	mov	w1,_basic_program_counter
	.loc 1 585 0
	mov	#1,w1
	.loc 1 586 0
	clr.b	w8
	bra	.L183
.L99:
.LBB36:
	.loc 1 595 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 597 0
	call	_assign
	sub	w15,#28,w1
	call	_search_line_number
	.loc 1 558 0
	clr	w1
	.loc 1 600 0
	mov.b	#6,w8
	.loc 1 597 0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L183
	.loc 1 598 0
	mov	[w15-28],w5
	mov	w5,_basic_program_counter
	clr.b	w8
	bra	.L183
.L100:
.LBE36:
.LBB37:
	.loc 1 609 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 611 0
	mov	_basic_current_stack_frame,w0
	.loc 1 558 0
	clr	w1
	.loc 1 621 0
	mov.b	#7,w8
	.loc 1 611 0
	sub	w0,#9,[w15]
	.set ___BP___,71
	bra	gtu,.L183
	.loc 1 612 0
	add	w0,w0,w1
	mov	#_basic_stack,w3
	add	w3,w1,w1
	.loc 1 613 0
	dec	w2,w2
	add	w2,w11,[w1]
	.loc 1 614 0
	inc	w0,w0
	mov	w0,_basic_current_stack_frame
	.loc 1 615 0
	call	_assign
	sub	w15,#28,w1
	call	_search_line_number
	.loc 1 558 0
	clr	w1
	.loc 1 618 0
	mov.b	#6,w8
	.loc 1 615 0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L183
	.loc 1 616 0
	mov	[w15-28],w0
	mov	w0,_basic_program_counter
	clr.b	w8
	bra	.L183
.L101:
.LBE37:
	.loc 1 627 0
	mov	#.LC1,w0
	call	_bp_write_string
	.loc 1 630 0
	mov	_basic_current_stack_frame,w0
	.loc 1 558 0
	clr	w1
	.loc 1 633 0
	mov.b	#8,w8
	.loc 1 630 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L183
	.loc 1 631 0
	dec	w0,w0
	mov	w0,_basic_current_stack_frame
	add	w0,w0,w0
	mov	#_basic_stack,w1
	mov	[w1+w0],w1
	mov	w1,_basic_program_counter
	.loc 1 558 0
	clr	w1
	.loc 1 631 0
	clr.b	w8
	bra	.L183
.L102:
	.loc 1 639 0
	add	w11,w3,w3
	mov	w3,_basic_program_counter
	.loc 1 558 0
	clr	w1
	.loc 1 640 0
	clr.b	w8
	bra	.L183
.L103:
	.loc 1 644 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 661 0
	mov	#_bus_pirate_configuration+10,w8
	.loc 1 645 0
	bra	.L212
.L142:
	.loc 1 647 0
	sub.b	w0,w10,[w15]
	.set ___BP___,72
	bra	nz,.L135
	.loc 1 648 0
	inc	w1,w1
	.loc 1 649 0
	mov.b	[w9+w1],w0
	sub.b	w0,w10,[w15]
	.set ___BP___,9
	bra	z,.L136
.L204:
	.loc 1 650 0
	bclr	[w8],#0
	.loc 1 652 0
	inc	w1,w1
	mov	w1,_basic_program_counter
	.loc 1 651 0
	call	_user_serial_transmit_character
	.loc 1 653 0
	bset	[w8],#0
	.loc 1 649 0
	mov	_basic_program_counter,w1
	mov.b	[w9+w1],w0
	sub.b	w0,w10,[w15]
	.set ___BP___,91
	bra	nz,.L204
.L136:
	.loc 1 655 0
	inc	w1,w1
	mov	w1,_basic_program_counter
	bra	.L212
.L135:
	.loc 1 656 0
	mov.b	#-65,w2
	add.b	w0,w2,w2
	sub.b	w2,#25,[w15]
	.set ___BP___,29
	bra	leu,.L139
	.loc 1 658 0
	mov.b	#-128,w3
	add.b	w0,w3,w3
	.loc 1 657 0
	mov.b	#95,w2
	sub.b	w3,w2,[w15]
	.set ___BP___,50
	bra	gtu,.L140
.L139:
	.loc 1 660 0
	call	_assign
	.loc 1 661 0
	bclr	[w8],#0
	.loc 1 662 0
	call	_bp_write_dec_word
	.loc 1 663 0
	bset	[w8],#0
	bra	.L212
.L140:
	.loc 1 664 0
	mov.b	#59,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,72
	bra	nz,.L212
	.loc 1 665 0
	inc	w1,w1
	mov	w1,_basic_program_counter
.L212:
	.loc 1 645 0
	mov	_basic_program_counter,w1
	mov.b	[w9+w1],w0
	mov.b	#-33,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,4
	bra	gtu,.L141
	mov.b	#-125,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,95
	bra	nz,.L142
.L141:
	.loc 1 668 0
	dec	w1,w1
	mov.b	[w9+w1],w1
	mov.b	#59,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,48
	bra	z,.L143
	.loc 1 669 0
	mov	#_bus_pirate_configuration+10,w8
	bclr	[w8],#0
	.loc 1 670 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 671 0
	bset	[w8],#0
.L143:
	.loc 1 673 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 674 0
	clr.b	w8
	bra	.L183
.L104:
	.loc 1 678 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#0
	.loc 1 679 0
	mov	_basic_program_counter,w1
	add	w1,#4,w1
	mov	w1,_basic_program_counter
	.loc 1 681 0
	mov.b	[w9+w1],w0
	sub.b	w0,w10,[w15]
	.set ___BP___,72
	bra	nz,.L144
	.loc 1 682 0
	inc	w1,w1
	.loc 1 683 0
	mov.b	[w9+w1],w0
	sub.b	w0,w10,[w15]
	.set ___BP___,9
	bra	z,.L145
.L205:
	.loc 1 685 0
	inc	w1,w1
	mov	w1,_basic_program_counter
	.loc 1 684 0
	call	_user_serial_transmit_character
	.loc 1 683 0
	mov	_basic_program_counter,w1
	mov.b	[w9+w1],w0
	sub.b	w0,w10,[w15]
	.set ___BP___,91
	bra	nz,.L205
.L145:
	.loc 1 687 0
	inc	w1,w1
	mov	w1,_basic_program_counter
.L144:
	.loc 1 689 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w2
	.loc 1 692 0
	mov.b	#3,w8
	.loc 1 689 0
	mov.b	#44,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,72
	bra	nz,.L147
	.loc 1 690 0
	inc	w0,w0
	mov	w0,_basic_program_counter
	clr.b	w8
.L147:
	.loc 1 695 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w14
	ze	w14,w14
	sub	#65,w14
	.loc 1 696 0
	clr	w3
	mov	#32767,w2
	mul.uu	w0, #0, w0
	call	_getnumber
	.loc 1 695 0
	add	w14,w14,w14
	mov	#_basic_variables,w1
	mov	w0,[w1+w14]
	.loc 1 697 0
	mov	_basic_program_counter,w0
	inc	w0,w0
	mov	w0,_basic_program_counter
	.loc 1 698 0
	call	_handle_else_statement
	.loc 1 699 0
	mov	#_bus_pirate_configuration+10,w0
	bset	[w0],#0
	.loc 1 558 0
	clr	w1
	.loc 1 700 0
	bra	.L183
.L105:
	.loc 1 704 0
	add	w2,#4,w2
	.loc 1 705 0
	mov	_basic_current_nested_for_index,w0
	.loc 1 708 0
	mov.b	#4,w8
	.loc 1 705 0
	sub	w0,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L148
	.loc 1 706 0
	inc	w0,w0
	mov	w0,_basic_current_nested_for_index
	clr.b	w8
.L148:
	.loc 1 711 0
	mov.b	[w9+w2],w14
	ze	w14,w14
	sub	#64,w14
	.loc 1 710 0
	mov	_basic_current_nested_for_index,w0
	mul.su	w0,#6,w0
	mov	#_basic_nested_for_loops+2,w3
	add	w3,w0,w0
	mov.b	w14,[w0]
	lsr	w14,#8,w1
	mov.b	w1,[w0+1]
	.loc 1 711 0
	inc	w2,w2
	mov	w2,_basic_program_counter
	.loc 1 713 0
	mov.b	[w9+w2],w1
	mov.b	#61,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,86
	bra	nz,.L193
	.loc 1 714 0
	inc	w2,w2
	mov	w2,_basic_program_counter
	.loc 1 717 0
	call	_assign
	.loc 1 716 0
	dec	w14,w14
	add	w14,w14,w14
	mov	#_basic_variables,w1
	mov	w0,[w1+w14]
	bra	.L149
.L193:
	.loc 1 719 0
	mov.b	#3,w8
.L149:
	.loc 1 721 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w1
	inc	w0,w0
	mov	w0,_basic_program_counter
	mov.b	#-117,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,86
	bra	nz,.L194
	.loc 1 722 0
	mov	_basic_current_nested_for_index,w14
	call	_assign
	mul.su	w14,#6,w2
	mov	#_basic_nested_for_loops+4,w1
	add	w1,w2,w1
	mov.b	w0,[w1]
	lsr	w0,#8,w0
	mov.b	w0,[w1+1]
	bra	.L150
.L194:
	.loc 1 724 0
	mov.b	#3,w8
.L150:
	.loc 1 726 0
	mov	_basic_program_counter,w0
	mov.b	[w9+w0],w2
	mov.b	#-33,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,50
	bra	leu,.L195
	.loc 1 727 0
	mov	_basic_current_nested_for_index,w2
	mul.su	w2,#6,w2
	mov	#_basic_nested_for_loops,w1
	add	w1,w2,w1
	mov.b	w0,[w1]
	lsr	w0,#8,w0
	mov.b	w0,[w1+1]
	bra	.L151
.L195:
	.loc 1 730 0
	mov.b	#3,w8
.L151:
	.loc 1 732 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 733 0
	bra	.L183
.L106:
	.loc 1 737 0
	add	w2,#4,w0
	.loc 1 739 0
	mov.b	[w9+w0],w5
	ze	w5,w5
	sub	#64,w5
	add	w2,#5,w2
	mov	w2,[w15-24]
	.loc 1 742 0
	mov	_basic_current_nested_for_index,w6
	mov	w6,w3
	clr	w0
	.loc 1 740 0
	mov.b	#5,w8
	.loc 1 743 0
	mov	#_basic_nested_for_loops,w1
	.loc 1 744 0
	dec	w5,w7
	add	w7,w7,w7
	mov	#_basic_variables,w14
	.loc 1 745 0
	add	w14,w7,w2
	mov	w2,[w15-26]
	mov	w5,[w15-16]
	bra	.L154
.L196:
	.loc 1 742 0
	mov	w3,w6
.L154:
	.loc 1 743 0
	mul.su	w0,#6,w4
	mov	w4,[w15-22]
	mov	w5,[w15-20]
	inc2	w4,w2
	mov.b	[w1+w2],w4
	ze	w4,w4
	add	w1,w2,w2
	mov.b	[w2+1],w2
	sl	w2,#8,w2
	ior	w4,w2,w4
	mov	[w15-16],w5
	sub	w4,w5,[w15]
	.set ___BP___,72
	bra	nz,.L152
	.loc 1 744 0
	mov	[w14+w7],w2
	mov	w2,[w15-18]
	mul.su	w0,#6,w4
	mov	w4,[w15-22]
	mov	w5,[w15-20]
	add	w4,#4,w2
	mov.b	[w1+w2],w8
	ze	w8,w8
	add	w1,w2,w2
	mov.b	[w2+1],w2
	sl	w2,#8,w2
	ior	w8,w2,w2
	mov	[w15-18],w5
	sub	w5,w2,[w15]
	.set ___BP___,50
	bra	geu,.L153
	.loc 1 745 0
	mov	[w15-26],w2
	inc	w5,[w2]
	.loc 1 746 0
	mul.su	w0,#6,w4
	mov	w4,[w15-22]
	mov	w5,[w15-20]
	mov	w4,w2
	mov.b	[w1+w2],w4
	ze	w4,w4
	add	w1,w2,w2
	mov.b	[w2+1],w2
	sl	w2,#8,w2
	ior	w4,w2,w2
	mov	w2,[w15-24]
	.loc 1 750 0
	clr.b	w8
	bra	.L152
.L153:
	.loc 1 748 0
	dec	w6,w3
	.loc 1 750 0
	clr.b	w8
.L152:
	.loc 1 742 0
	inc	w0,w0
	sub	w3,w0,[w15]
	.set ___BP___,80
	bra	geu,.L196
	mov	[w15-24],w5
	mov	w5,_basic_program_counter
	mov	w3,_basic_current_nested_for_index
	.loc 1 753 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 754 0
	bra	.L183
.L107:
	.loc 1 758 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 760 0
	clr.b	w8
	mov	_basic_data_read_pointer,w0
	cp0	w0
	.set ___BP___,50
	bra	nz,.L155
	.loc 1 762 0
	mov	#_basic_program_area+3,w0
	subr.b	w13,[w0],[w15]
	.set ___BP___,4
	bra	z,.L198
	.loc 1 763 0
	mov.b	[w9],w1
	.loc 1 770 0
	mov.b	#9,w8
	.loc 1 762 0
	cp0.b	w1
	.set ___BP___,4
	bra	z,.L155
	clr	w0
.L157:
	.loc 1 764 0
	ze	w1,w1
	sub	#221,w1
	add	w0,w1,w0
	.loc 1 762 0
	add	w0,#3,w1
	mov.b	[w9+w1],w1
	sub.b	w1,w13,[w15]
	.set ___BP___,4
	bra	z,.L156
	.loc 1 763 0
	mov.b	[w9+w0],w1
	.loc 1 762 0
	cp0.b	w1
	.set ___BP___,95
	bra	nz,.L157
	.loc 1 770 0
	mov.b	#9,w8
	bra	.L155
.L198:
	.loc 1 762 0
	clr	w0
.L156:
	.loc 1 767 0
	mov.b	[w9+w0],w1
	.loc 1 770 0
	mov.b	#9,w8
	.loc 1 767 0
	cp0.b	w1
	.set ___BP___,1
	bra	z,.L155
	.loc 1 768 0
	add	w0,#4,w0
	mov	w0,_basic_data_read_pointer
	clr.b	w8
.L155:
	.loc 1 773 0
	mov	_basic_program_counter,w14
	.loc 1 774 0
	mov	_basic_data_read_pointer,w0
	mov	w0,_basic_program_counter
	.loc 1 775 0
	mov.b	[w9+w14],w0
	ze	w0,w0
	mov	#-65,w1
	add	w0,w1,w1
	mov	w1,[w15-22]
	.loc 1 776 0
	call	_get_number_or_variable
	.loc 1 775 0
	mov	[w15-22],w2
	add	w2,w2,w1
	mov	#_basic_variables,w2
	mov	w0,[w2+w1]
	.loc 1 777 0
	mov	_basic_program_counter,w0
	mov	w0,_basic_data_read_pointer
	.loc 1 778 0
	inc	w14,w14
	mov	w14,_basic_program_counter
	.loc 1 780 0
	mov.b	[w9+w0],w2
	mov.b	#44,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,72
	bra	nz,.L158
	.loc 1 781 0
	inc	w0,w0
	mov	w0,_basic_data_read_pointer
.L158:
	.loc 1 783 0
	mov	_basic_data_read_pointer,w0
	mov.b	[w9+w0],w2
	mov.b	#-32,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,50
	bra	leu,.L159
	.loc 1 784 0
	add	w0,#3,w1
	mov.b	[w9+w1],w1
	sub.b	w1,w13,[w15]
	.set ___BP___,28
	bra	z,.L160
	.loc 1 785 0
	clr	w0
	mov	w0,_basic_data_read_pointer
	bra	.L159
.L160:
	.loc 1 787 0
	add	w0,#4,w0
	mov	w0,_basic_data_read_pointer
.L159:
	.loc 1 791 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 792 0
	bra	.L183
.L108:
	.loc 1 796 0
	add	w11,w3,w3
	mov	w3,_basic_program_counter
	.loc 1 558 0
	clr	w1
	.loc 1 797 0
	clr.b	w8
	bra	.L183
.L110:
	.loc 1 801 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 803 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	mov	#_enabled_protocols,w2
	mov	[w2+w0],w0
	call	w0
	.loc 1 804 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 805 0
	clr.b	w8
	bra	.L183
.L109:
	.loc 1 809 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 811 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	inc2	w0,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 812 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 813 0
	clr.b	w8
	bra	.L183
.L112:
	.loc 1 817 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 819 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#4,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 820 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 821 0
	clr.b	w8
	bra	.L183
.L111:
	.loc 1 825 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 827 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#6,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 828 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 829 0
	clr.b	w8
	bra	.L183
.L113:
	.loc 1 833 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 834 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#8,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w8
	call	_assign
	call	w8
	.loc 1 835 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 836 0
	clr.b	w8
	bra	.L183
.L120:
	.loc 1 840 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 842 0
	call	_assign
	cp0	w0
	.set ___BP___,50
	bra	z,.L161
	.loc 1 843 0
	call	_bp_aux_pin_set_high
	bra	.L162
.L161:
	.loc 1 845 0
	call	_bp_aux_pin_set_low
.L162:
	.loc 1 847 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 848 0
	clr.b	w8
	bra	.L183
.L117:
	.loc 1 852 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 853 0
	call	_assign
.LBB38:
.LBB39:
	.loc 2 105 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L163
.LBB40:
.LBB41:
	.loc 2 91 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 92 0
	bset.b	_PORTBbits+1,#1
	bra	.L164
.L163:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 2 96 0
	bclr.b	_TRISBbits+1,#1
	.loc 2 97 0
	bclr.b	_PORTBbits+1,#1
.L164:
.LBE43:
.LBE42:
.LBE39:
.LBE38:
	.loc 1 854 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 855 0
	clr.b	w8
	bra	.L183
.L116:
	.loc 1 859 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 861 0
	call	_assign
	cp0	w0
	.set ___BP___,50
	bra	z,.L165
	.loc 1 862 0
	mov	#_mode_configuration+2,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#0
	mov.b	w1,[w0]
	bra	.L166
.L165:
	.loc 1 864 0
	mov	#_mode_configuration+2,w0
	mov.b	#-4,w1
	and.b	w1,[w0],[w0]
.L166:
	.loc 1 866 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 867 0
	clr.b	w8
	bra	.L183
.L121:
.LBB44:
	.loc 1 870 0
	call	_assign
	mov	w0,w8
	.loc 1 871 0
	call	_assign
	mov	w0,w1
	.loc 1 874 0
	mov	_basic_program_counter,w0
	add	w0,#4,w0
	mov	w0,_basic_program_counter
	cp0	w8
	.set ___BP___,79
	bra	ge,.L167
	clr	w8
.L167:
	mov	w8,w0
	mov	#4000,w2
	sub	w0,w2,[w15]
	.set ___BP___,50
	bra	le,.L168
	mov	w2,w0
.L168:
	.loc 1 883 0
	cp0	w1
	.set ___BP___,73
	bra	gt,.L169
	.loc 1 884 0
	mov	#1,w1
.L169:
	.loc 1 890 0
	mov	#100,w2
	sub	w1,w2,[w15]
	.set ___BP___,50
	bra	le,.L170
	mov	w2,w1
.L170:
	call	_bp_update_pwm
	.loc 1 892 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 893 0
	clr.b	w8
	bra	.L183
.L122:
.LBE44:
.LBB45:
	.loc 1 897 0
	call	_assign
	.loc 1 900 0
	mov	_basic_program_counter,w1
	add	w1,#4,w1
	mov	w1,_basic_program_counter
	.loc 1 902 0
	cp0	w0
	.set ___BP___,73
	bra	gt,.L171
	.loc 1 903 0
	mov	#1,w0
.L171:
	.loc 1 909 0
	mov	#100,w1
	sub	w0,w1,[w15]
	.set ___BP___,50
	bra	le,.L172
	mov	w1,w0
.L172:
	call	_bp_update_duty_cycle
	.loc 1 911 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 912 0
	clr.b	w8
	bra	.L183
.L115:
.LBE45:
	.loc 1 917 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 919 0
	call	_assign
	cp0	w0
	.set ___BP___,50
	bra	z,.L173
	.loc 1 920 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#16,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	bra	.L174
.L173:
	.loc 1 922 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#18,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
.L174:
	.loc 1 924 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 925 0
	clr.b	w8
	bra	.L183
.L114:
	.loc 1 929 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 931 0
	call	_assign
	sub	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L177
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L178
	cp0	w0
	.set ___BP___,50
	bra	nz,.L175
	.loc 1 933 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#14,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 934 0
	bra	.L175
.L177:
	.loc 1 936 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#12,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 937 0
	bra	.L175
.L178:
	.loc 1 939 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#22,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
.L175:
	.loc 1 942 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 943 0
	clr.b	w8
	bra	.L183
.L118:
	.loc 1 947 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 948 0
	call	_assign
.LBB46:
.LBB47:
	.loc 2 83 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L179
.LBB48:
.LBB49:
	.loc 2 73 0
	bset.b	_TRISEbits,#4
	.loc 2 74 0
	bclr.b	_PORTEbits,#4
	bra	.L180
.L179:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 2 78 0
	bclr.b	_PORTEbits,#4
	.loc 2 79 0
	bclr.b	_TRISEbits,#4
.L180:
.LBE51:
.LBE50:
.LBE47:
.LBE46:
	.loc 1 949 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 950 0
	clr.b	w8
	bra	.L183
.L119:
	.loc 1 954 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 955 0
	call	_assign
	.loc 1 956 0
	call	_bp_delay_ms
	.loc 1 957 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 958 0
	clr.b	w8
	bra	.L183
.L123:
	.loc 1 962 0
	add	w2,#4,w2
	mov	w2,_basic_program_counter
	.loc 1 963 0
	call	_assign
	.loc 1 964 0
	mov	#_bus_pirate_configuration+9,w1
	ze	[w1],w2
	mov	#48,w1
	mul.ss	w2,w1,w2
	add	w2,#28,w1
	mov	#_enabled_protocols,w2
	mov	[w2+w1],w1
	call	w1
	.loc 1 965 0
	call	_handle_else_statement
	.loc 1 558 0
	clr	w1
	.loc 1 966 0
	clr.b	w8
	bra	.L183
.L124:
	.loc 1 969 0
	mov.b	#1,w8
	bra	.L96
.L185:
	.loc 1 973 0
	mov.b	#3,w8
.L96:
	.loc 1 978 0
	add	w3,w11,w3
	mov	w3,_basic_program_counter
	clr	w1
.L183:
	.loc 1 546 0
	cp0.b	w8
	.set ___BP___,95
	bra	z,.L181
	.loc 1 983 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#0
	.loc 1 985 0
	sub.b	w8,#1,[w15]
	.set ___BP___,54
	bra	leu,.L93
.L184:
	.loc 1 986 0
	mov	#tbloffset(_BPMSG1047_str),w0
	mov	#tblpage(_BPMSG1047_str),w1
	call	_bp_message_write_buffer
	.loc 1 987 0
	ze	w8,w0
	call	_bp_write_dec_word
	.loc 1 988 0
	mov	#tbloffset(_BPMSG1048_str),w0
	mov	#tblpage(_BPMSG1048_str),w1
	call	_bp_message_write_buffer
	.loc 1 989 0
	mov	w12,w0
	call	_bp_write_dec_word
	.loc 1 990 0
	mov	#tbloffset(_BPMSG1049_str),w0
	mov	#tblpage(_BPMSG1049_str),w1
	call	_bp_message_write_buffer
	.loc 1 991 0
	mov	_basic_program_counter,w0
	call	_bp_write_dec_word
	.loc 1 992 0
	mov	#.LC0,w0
	call	_bp_write_line
	bra	.L93
.L216:
	.loc 1 994 0
	mov	w1,_basic_program_counter
.L130:
.LBB52:
	.loc 1 558 0
	clr	w1
	clr.b	w8
	bra	.L183
.L95:
.LBE52:
	.loc 1 983 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#0
	.loc 1 549 0
	mov.b	#2,w8
	bra	.L184
.L93:
	.loc 1 994 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#16
	return	
	.set ___PA___,0
.LFE30:
	.size	_interpreter, .-_interpreter
	.align	2
	.global	_bp_basic_initialize	; export
	.type	_bp_basic_initialize,@function
_bp_basic_initialize:
.LFB35:
	.loc 1 1195 0
	.set ___PA___,1
	.loc 1 1196 0
	mov.b	#-31,w1
	mov	#_basic_program_area,w0
	mov.b	w1,[w0]
	.loc 1 1197 0
	setm.b	w0
	mov	#_basic_program_area+1,w1
	mov.b	w0,[w1]
	.loc 1 1198 0
	inc	w1,w1
	mov.b	w0,[w1]
	.loc 1 1199 0
	mov.b	#-95,w1
	mov	#_basic_program_area+3,w0
	mov.b	w1,[w0]
	.loc 1 1200 0
	mov	#_basic_program_area+4,w0
	repeat	#1020-1
	clr.b	[w0++]
	.loc 1 1201 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_bp_basic_initialize, .-_bp_basic_initialize
	.section .const,psv,page
.LC2:
	.asciz	"RUN"
.LC3:
	.asciz	"LIST"
.LC4:
	.asciz	"EXIT"
.LC5:
	.asciz	"NEW"
	.section	.text,code
	.align	2
	.global	_bp_basic_enter_interactive_interpreter	; export
	.type	_bp_basic_enter_interactive_interpreter,@function
_bp_basic_enter_interactive_interpreter:
.LFB34:
	.loc 1 1053 0
	.set ___PA___,1
	lnk	#38
.LCFI14:
	mov.d	w8,[w15++]
.LCFI15:
	mov.d	w10,[w15++]
.LCFI16:
	.loc 1 1059 0
	mov	_cmdstart,w7
	.loc 1 1065 0
	mov	_cmdend,w4
	sub	w7,w4,[w15]
	.set ___BP___,9
	bra	z,.L219
	.loc 1 1059 0
	mov	w7,w0
	.loc 1 1066 0
	mov	#_cmdbuf,w3
	mov.b	#-97,w6
	.loc 1 1069 0
	mov	#255,w5
.L221:
	.loc 1 1066 0
	mov.b	[w3+w0],w1
	add.b	w1,w6,w2
	sub.b	w2,#25,[w15]
	.set ___BP___,50
	bra	gtu,.L220
	.loc 1 1067 0
	bclr.b	w1,#5
	mov.b	w1,[w3+w0]
.L220:
	.loc 1 1069 0
	inc	w0,w0
	and	w0,w5,w0
	.loc 1 1065 0
	sub	w0,w4,[w15]
	.set ___BP___,91
	bra	nz,.L221
.L219:
	.loc 1 1074 0
	mov	#_cmdbuf,w0
	mov.b	[w0+w7],w1
	mov.b	#-48,w0
	add.b	w1,w0,w0
	sub.b	w0,#9,[w15]
	.set ___BP___,29
	bra	gtu,.L222
	mov	#-47,w0
	add	w0,w15,w0
	.loc 1 1053 0
	sub	w15,#12,w2
	.loc 1 1078 0
	clr.b	w1
.L223:
	mov.b	w1,[++w0]
	.loc 1 1077 0
	sub	w0,w2,[w15]
	.set ___BP___,97
	bra	nz,.L223
	.loc 1 1081 0
	call	_getint
	.loc 1 1082 0
	asr	w0,#8,w1
	mov.b	w1,[w15-45]
	.loc 1 1083 0
	mov.b	w0,[w15-44]
	.loc 1 1085 0
	sub	w15,#10,w1
	call	_search_line_number
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L224
	.loc 1 1086 0
	mov	[w15-10],w4
	mov	#_basic_program_area,w0
	mov.b	[w0+w4],w1
	ze	w1,w1
	.loc 1 1088 0
	mov	w4,w0
	mov	#1245,w5
	sub	w5,w1,w5
	sub	w4,w5,[w15]
	.set ___BP___,1
	bra	ge,.L225
	.loc 1 1053 0
	add	w1,w4,w1
	mov	#-222,w2
	add	w2,w1,w2
	mov	#_basic_program_area,w3
	add	w2,w3,w2
	add	w4,w3,w1
	add	w5,w3,w3
.L226:
	.loc 1 1089 0
	mov.b	[++w2],[w1++]
	.loc 1 1088 0
	sub	w1,w3,[w15]
	.set ___BP___,99
	bra	nz,.L226
	.loc 1 1053 0
	inc	w0,w0
	com	w4,w4
	add	w4,w5,w5
	add	w0,w5,w0
.L225:
	.loc 1 1091 0
	mov	#1024,w2
	sub	w2,w0,w2
	mov	#_basic_program_area,w1
	add	w0,w1,w0
	clr	w1
	call	_memset
.L224:
	.loc 1 1096 0
	call	_consumewhitechars
	.loc 1 1056 0
	clr.b	w9
	.loc 1 1094 0
	mov	#3,w8
	.loc 1 1110 0
	mov	#_cmdbuf,w10
	mov.b	#34,w11
	.loc 1 1097 0
	bra	.L227
.L232:
	.loc 1 1098 0
	cp0.b	w9
	.set ___BP___,71
	bra	nz,.L228
	.loc 1 1099 0
	call	_consumewhitechars
	.loc 1 1102 0
	call	_get_token
	ze	w0,w1
	.loc 1 1104 0
	.set ___BP___,0
	bra	z,.L228
	.loc 1 1105 0
	mov.b	w0,w3
	mov	#-46,w2
	add	w2,w15,w2
	mov.b	w3,[w2+w8]
	.loc 1 1106 0
	mov	#135,w0
	sub	w1,w0,[w15]
	.set ___BP___,72
	bra	nz,.L229
	bra	.L255
.L228:
	.loc 1 1110 0
	mov	_cmdstart,w0
	mov.b	[w10+w0],w1
	sub.b	w1,w11,[w15]
	.set ___BP___,72
	bra	nz,.L230
	.loc 1 1111 0
	btg.b	w9,#0
.L230:
	.loc 1 1113 0
	mov.b	w1,w3
	mov	#-46,w2
	add	w2,w15,w2
	mov.b	w3,[w2+w8]
	.loc 1 1114 0
	inc	w0,w0
	ze	w0,w0
	mov	w0,_cmdstart
	bra	.L229
.L255:
	.loc 1 1107 0
	mov.b	#1,w9
.L229:
	.loc 1 1116 0
	inc	w8,w8
	.loc 1 1117 0
	mov	#36,w0
	sub	w8,w0,[w15]
	.set ___BP___,96
	bra	nz,.L227
	.loc 1 1118 0
	mov	#tbloffset(_BPMSG1051_str),w0
	mov	#tblpage(_BPMSG1051_str),w1
	call	_bp_message_write_line
	.loc 1 1119 0
	bra	.L218
.L227:
	.loc 1 1097 0
	mov	_cmdend,w0
	mov	_cmdstart,w1
	sub	w1,w0,[w15]
	.set ___BP___,95
	bra	nz,.L232
	.loc 1 1124 0
	sub	w8,#3,w0
	sub	w0,#1,[w15]
	.set ___BP___,19
	bra	leu,.L218
	.loc 1 1128 0
	mov.b	#-36,w0
	add.b	w8,w0,w8
	mov.b	w8,[w15-46]
	.loc 1 1135 0
	mov	#_basic_program_area,w0
	mov.b	[w0],w7
	.loc 1 1138 0
	mov.b	[w15-45],w9
	sl	w9,#8,w9
	mov.b	[w15-44],w0
	ze	w0,w0
	add	w9,w0,w9
	clr	w5
	.loc 1 1130 0
	clr	w0
	.loc 1 1135 0
	mov	#_basic_program_area,w2
	mov.b	#-32,w3
	mov.b	w7,w10
	bra	.L233
.L236:
	sub.b	w7,w3,[w15]
	.set ___BP___,100
	bra	gtu,.L247
	bra	.L235
.L254:
	.loc 1 1134 0
	cp0	w0
	.set ___BP___,74
	bra	z,.L236
	.loc 1 1135 0
	mov	w5,[w15-10]
	.loc 1 1150 0
	ze	w8,w2
	sub	#221,w2
	.loc 1 1153 0
	mov	w0,w1
	sub	w5,w0,[w15]
	.set ___BP___,99
	bra	leu,.L253
	bra	.L240
.L247:
	.loc 1 1135 0
	mov.b	w10,w1
.L234:
	.loc 1 1136 0
	ze	w1,w1
	sub	#224,w1
	.loc 1 1137 0
	inc	w0,w4
	mov.b	[w2+w4],w6
	sl	w6,#8,w6
	inc2	w0,w4
	mov.b	[w2+w4],w4
	ze	w4,w4
	add	w6,w4,w4
	.loc 1 1139 0
	sub	w4,w9,[w15]
	.set ___BP___,50
	bra	geu,.L238
	.loc 1 1140 0
	add	w0,#3,w5
	add	w5,w1,w5
.L238:
	.loc 1 1142 0
	add	w1,#3,w1
	add	w0,w1,w0
.L233:
	.loc 1 1135 0
	mov.b	[w2+w0],w1
	sub.b	w1,w3,[w15]
	.set ___BP___,86
	bra	leu,.L254
	bra	.L234
.L253:
	.loc 1 1053 0
	inc	w0,w4
	mov	#_basic_program_area,w3
	add	w4,w3,w4
	add	w2,w0,w1
	inc	w1,w1
	add	w1,w3,w3
.L241:
	.loc 1 1154 0
	mov.b	[--w4],[--w3]
	.loc 1 1153 0
	dec	w0,w0
	mov	w0,w1
	sub	w5,w0,[w15]
	.set ___BP___,99
	bra	leu,.L241
.L240:
	.loc 1 1156 0
	add	w1,w5,w5
	mov	#_basic_program_area,w0
	add	w5,w0,w0
	mov	#-46,w3
	add	w3,w15,w3
	add	w3,w1,w1
	call	_memcpy
	bra	.L218
.L222:
	.loc 1 1158 0
	mov	#.LC2,w0
	call	_compare
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L242
	.loc 1 1159 0
	call	_interpreter
	.loc 1 1160 0
	mov	#.LC0,w0
	call	_bp_write_line
	bra	.L218
.L242:
	.loc 1 1161 0
	mov	#.LC3,w0
	call	_compare
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L243
	.loc 1 1162 0
	call	_list
	bra	.L218
.L243:
	.loc 1 1163 0
	mov	#.LC4,w0
	call	_compare
	cp0.b	w0
	.set ___BP___,38
	bra	z,.L244
	.loc 1 1164 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#2
	bra	.L218
.L244:
	.loc 1 1187 0
	mov	#.LC5,w0
	call	_compare
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L245
	.loc 1 1188 0
	call	_bp_basic_initialize
	bra	.L218
.L245:
	.loc 1 1190 0
	mov	#tbloffset(_BPMSG1052_str),w0
	mov	#tblpage(_BPMSG1052_str),w1
	call	_bp_message_write_line
	bra	.L218
.L235:
	bra	.L235
.L218:
	.loc 1 1193 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE34:
	.size	_bp_basic_enter_interactive_interpreter, .-_bp_basic_enter_interactive_interpreter
	.section	.bss,bss
	.type	_basic_program_area,@object
	.size	_basic_program_area, 1024
_basic_program_area:
	.skip	1024
	.section	.const,psv,page
.LC6:
	.asciz	"LET"
.LC7:
	.asciz	"IF"
.LC8:
	.asciz	"THEN"
.LC9:
	.asciz	"ELSE"
.LC10:
	.asciz	"GOTO"
.LC11:
	.asciz	"GOSUB"
.LC12:
	.asciz	"RETURN"
.LC13:
	.asciz	"REM"
.LC14:
	.asciz	"PRINT"
.LC15:
	.asciz	"INPUT"
.LC16:
	.asciz	"FOR"
.LC17:
	.asciz	"TO"
.LC18:
	.asciz	"NEXT"
.LC19:
	.asciz	"READ"
.LC20:
	.asciz	"DATA"
.LC21:
	.asciz	"STARTR"
.LC22:
	.asciz	"START"
.LC23:
	.asciz	"STOPR"
.LC24:
	.asciz	"STOP"
.LC25:
	.asciz	"SEND"
.LC26:
	.asciz	"RECEIVE"
.LC27:
	.asciz	"CLK"
.LC28:
	.asciz	"DAT"
.LC29:
	.asciz	"BITREAD"
.LC30:
	.asciz	"ADC"
.LC31:
	.asciz	"AUXPIN"
.LC32:
	.asciz	"PSU"
.LC33:
	.asciz	"PULLUP"
.LC34:
	.asciz	"DELAY"
.LC35:
	.asciz	"AUX"
.LC36:
	.asciz	"FREQ"
.LC37:
	.asciz	"DUTY"
.LC38:
	.asciz	"MACRO"
.LC39:
	.asciz	"END"
	.align	2
	.type	_tokens,@object
	.size	_tokens, 70
_tokens:
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.skip	2
	.section	.bss,bss
	.align	2
	.type	_basic_program_counter,@object
	.size	_basic_program_counter, 2
_basic_program_counter:
	.skip	2
	.align	2
	.type	_basic_current_nested_for_index,@object
	.size	_basic_current_nested_for_index, 2
_basic_current_nested_for_index:
	.skip	2
	.align	2
	.type	_basic_current_stack_frame,@object
	.size	_basic_current_stack_frame, 2
_basic_current_stack_frame:
	.skip	2
	.align	2
	.type	_basic_data_read_pointer,@object
	.size	_basic_data_read_pointer, 2
_basic_data_read_pointer:
	.skip	2
	.align	2
	.type	_basic_variables,@object
	.size	_basic_variables, 52
_basic_variables:
	.skip	52
	.align	2
	.type	_basic_stack,@object
	.size	_basic_stack, 20
_basic_stack:
	.skip	20
	.type	_basic_nested_for_loops,@object
	.size	_basic_nested_for_loops, 24
_basic_nested_for_loops:
	.skip	24
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -5
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
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
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -12
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -14
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -16
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -17
	.byte	0x8e
	.uleb128 0x10
	.byte	0x8c
	.uleb128 0xe
	.byte	0x8a
	.uleb128 0xc
	.byte	0x88
	.uleb128 0xa
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI14-.LFB34
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI16-.LCFI14
	.byte	0x8a
	.uleb128 0x18
	.byte	0x88
	.uleb128 0x16
	.align	4
.LEFDE22:
	.section	.text,code
.Letext0:
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 4 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 5 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 6 "../base.h"
	.file 7 "../core.h"
	.file 8 "../proc_menu.h"
	.section	.debug_info,info
	.4byte	0x19d9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../basic.c"
	.asciz	"C:\\\\Users\\\\avish\\\\Workspace\\\\Firmware\\\\busPirate.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x3
	.asciz	"int16_t"
	.byte	0x3
	.byte	0x14
	.4byte	0xb5
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
	.byte	0x3
	.byte	0x2b
	.4byte	0xe8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0x31
	.4byte	0x109
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
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
	.byte	0x4
	.byte	0x5
	.4byte	0x109
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x4
	.byte	0x2
	.4byte	0x172
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"short int"
	.uleb128 0x5
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xcd2
	.4byte	0x2f4
	.uleb128 0x6
	.asciz	"TRISB0"
	.byte	0x5
	.2byte	0xcd3
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB1"
	.byte	0x5
	.2byte	0xcd4
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB2"
	.byte	0x5
	.2byte	0xcd5
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB3"
	.byte	0x5
	.2byte	0xcd6
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB4"
	.byte	0x5
	.2byte	0xcd7
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB5"
	.byte	0x5
	.2byte	0xcd8
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB6"
	.byte	0x5
	.2byte	0xcd9
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB7"
	.byte	0x5
	.2byte	0xcda
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB8"
	.byte	0x5
	.2byte	0xcdb
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB9"
	.byte	0x5
	.2byte	0xcdc
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB10"
	.byte	0x5
	.2byte	0xcdd
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB11"
	.byte	0x5
	.2byte	0xcde
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB12"
	.byte	0x5
	.2byte	0xcdf
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB13"
	.byte	0x5
	.2byte	0xce0
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB14"
	.byte	0x5
	.2byte	0xce1
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB15"
	.byte	0x5
	.2byte	0xce2
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"TRISBBITS"
	.byte	0x5
	.2byte	0xce3
	.4byte	0x187
	.uleb128 0x5
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xce8
	.4byte	0x443
	.uleb128 0x6
	.asciz	"RB0"
	.byte	0x5
	.2byte	0xce9
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB1"
	.byte	0x5
	.2byte	0xcea
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB2"
	.byte	0x5
	.2byte	0xceb
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB3"
	.byte	0x5
	.2byte	0xcec
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB4"
	.byte	0x5
	.2byte	0xced
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB5"
	.byte	0x5
	.2byte	0xcee
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB6"
	.byte	0x5
	.2byte	0xcef
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB7"
	.byte	0x5
	.2byte	0xcf0
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB8"
	.byte	0x5
	.2byte	0xcf1
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB9"
	.byte	0x5
	.2byte	0xcf2
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB10"
	.byte	0x5
	.2byte	0xcf3
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB11"
	.byte	0x5
	.2byte	0xcf4
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB12"
	.byte	0x5
	.2byte	0xcf5
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB13"
	.byte	0x5
	.2byte	0xcf6
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB14"
	.byte	0x5
	.2byte	0xcf7
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB15"
	.byte	0x5
	.2byte	0xcf8
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"PORTBBITS"
	.byte	0x5
	.2byte	0xcf9
	.4byte	0x306
	.uleb128 0x5
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xd9e
	.4byte	0x514
	.uleb128 0x6
	.asciz	"TRISE0"
	.byte	0x5
	.2byte	0xd9f
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE1"
	.byte	0x5
	.2byte	0xda0
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE2"
	.byte	0x5
	.2byte	0xda1
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE3"
	.byte	0x5
	.2byte	0xda2
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE4"
	.byte	0x5
	.2byte	0xda3
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE5"
	.byte	0x5
	.2byte	0xda4
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE6"
	.byte	0x5
	.2byte	0xda5
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISE7"
	.byte	0x5
	.2byte	0xda6
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"TRISEBITS"
	.byte	0x5
	.2byte	0xda7
	.4byte	0x455
	.uleb128 0x5
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xdac
	.4byte	0x5cd
	.uleb128 0x6
	.asciz	"RE0"
	.byte	0x5
	.2byte	0xdad
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE1"
	.byte	0x5
	.2byte	0xdae
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE2"
	.byte	0x5
	.2byte	0xdaf
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE3"
	.byte	0x5
	.2byte	0xdb0
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE4"
	.byte	0x5
	.2byte	0xdb1
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE5"
	.byte	0x5
	.2byte	0xdb2
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE6"
	.byte	0x5
	.2byte	0xdb3
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RE7"
	.byte	0x5
	.2byte	0xdb4
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"PORTEBITS"
	.byte	0x5
	.2byte	0xdb5
	.4byte	0x526
	.uleb128 0x5
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xdd6
	.4byte	0x65f
	.uleb128 0x6
	.asciz	"TRISF0"
	.byte	0x5
	.2byte	0xdd7
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISF1"
	.byte	0x5
	.2byte	0xdd8
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISF3"
	.byte	0x5
	.2byte	0xdda
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISF4"
	.byte	0x5
	.2byte	0xddb
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISF5"
	.byte	0x5
	.2byte	0xddc
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"TRISFBITS"
	.byte	0x5
	.2byte	0xddd
	.4byte	0x5df
	.uleb128 0x5
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xde2
	.4byte	0x6e2
	.uleb128 0x6
	.asciz	"RF0"
	.byte	0x5
	.2byte	0xde3
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RF1"
	.byte	0x5
	.2byte	0xde4
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RF3"
	.byte	0x5
	.2byte	0xde6
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RF4"
	.byte	0x5
	.2byte	0xde7
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RF5"
	.byte	0x5
	.2byte	0xde8
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"PORTFBITS"
	.byte	0x5
	.2byte	0xde9
	.4byte	0x671
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.2byte	0xe70
	.4byte	0x785
	.uleb128 0x6
	.asciz	"DONE"
	.byte	0x5
	.2byte	0xe71
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SAMP"
	.byte	0x5
	.2byte	0xe72
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ASAM"
	.byte	0x5
	.2byte	0xe73
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC"
	.byte	0x5
	.2byte	0xe75
	.4byte	0xf9
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM"
	.byte	0x5
	.2byte	0xe76
	.4byte	0xf9
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ADSIDL"
	.byte	0x5
	.2byte	0xe78
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ADON"
	.byte	0x5
	.2byte	0xe7a
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.2byte	0xe7c
	.4byte	0x7f3
	.uleb128 0x6
	.asciz	"SSRC0"
	.byte	0x5
	.2byte	0xe7e
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC1"
	.byte	0x5
	.2byte	0xe7f
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC2"
	.byte	0x5
	.2byte	0xe80
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM0"
	.byte	0x5
	.2byte	0xe81
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM1"
	.byte	0x5
	.2byte	0xe82
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0xe6f
	.4byte	0x807
	.uleb128 0xa
	.4byte	0x6f4
	.uleb128 0xa
	.4byte	0x785
	.byte	0x0
	.uleb128 0x5
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xe6e
	.4byte	0x828
	.uleb128 0xb
	.4byte	0x7f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"AD1CON1BITS"
	.byte	0x5
	.2byte	0xe85
	.4byte	0x807
	.uleb128 0x5
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xf07
	.4byte	0x99b
	.uleb128 0x6
	.asciz	"PCFG0"
	.byte	0x5
	.2byte	0xf08
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG1"
	.byte	0x5
	.2byte	0xf09
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG2"
	.byte	0x5
	.2byte	0xf0a
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG3"
	.byte	0x5
	.2byte	0xf0b
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG4"
	.byte	0x5
	.2byte	0xf0c
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG5"
	.byte	0x5
	.2byte	0xf0d
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG6"
	.byte	0x5
	.2byte	0xf0e
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG7"
	.byte	0x5
	.2byte	0xf0f
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG8"
	.byte	0x5
	.2byte	0xf10
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG9"
	.byte	0x5
	.2byte	0xf11
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG10"
	.byte	0x5
	.2byte	0xf12
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG11"
	.byte	0x5
	.2byte	0xf13
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG12"
	.byte	0x5
	.2byte	0xf14
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG13"
	.byte	0x5
	.2byte	0xf15
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG14"
	.byte	0x5
	.2byte	0xf16
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG15"
	.byte	0x5
	.2byte	0xf17
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"AD1PCFGBITS"
	.byte	0x5
	.2byte	0xf18
	.4byte	0x83c
	.uleb128 0x4
	.byte	0x2
	.4byte	0x9b5
	.uleb128 0xc
	.byte	0x1
	.uleb128 0xd
	.byte	0x3
	.byte	0x6
	.byte	0x38
	.4byte	0xa9c
	.uleb128 0xe
	.asciz	"speed"
	.byte	0x6
	.byte	0x39
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"numbits"
	.byte	0x6
	.byte	0x3a
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.asciz	"alternate_aux"
	.byte	0x6
	.byte	0x3f
	.4byte	0xd9
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"periodicService"
	.byte	0x6
	.byte	0x41
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"little_endian"
	.byte	0x6
	.byte	0x47
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"high_impedance"
	.byte	0x6
	.byte	0x4c
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"int16"
	.byte	0x6
	.byte	0x51
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"write_with_read"
	.byte	0x6
	.byte	0x56
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"command_error"
	.byte	0x6
	.byte	0x5b
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x6
	.byte	0x5d
	.4byte	0x9b7
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0x1f
	.4byte	0xc72
	.uleb128 0xe
	.asciz	"start"
	.byte	0x7
	.byte	0x24
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"start_with_read"
	.byte	0x7
	.byte	0x29
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"stop"
	.byte	0x7
	.byte	0x2e
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.asciz	"stop_from_read"
	.byte	0x7
	.byte	0x36
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.asciz	"send"
	.byte	0x7
	.byte	0x47
	.4byte	0xc82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.asciz	"read"
	.byte	0x7
	.byte	0x51
	.4byte	0xc8e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.asciz	"clock_high"
	.byte	0x7
	.byte	0x56
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.asciz	"clock_low"
	.byte	0x7
	.byte	0x5b
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.asciz	"data_high"
	.byte	0x7
	.byte	0x60
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.asciz	"data_low"
	.byte	0x7
	.byte	0x65
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xe
	.asciz	"data_state"
	.byte	0x7
	.byte	0x6f
	.4byte	0xc8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.asciz	"clock_pulse"
	.byte	0x7
	.byte	0x74
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xe
	.asciz	"read_bit"
	.byte	0x7
	.byte	0x7b
	.4byte	0xca3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.asciz	"periodic_update"
	.byte	0x7
	.byte	0x86
	.4byte	0xca3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xe
	.asciz	"run_macro"
	.byte	0x7
	.byte	0x8d
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.asciz	"setup_prepare"
	.byte	0x7
	.byte	0x93
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xe
	.asciz	"setup_execute"
	.byte	0x7
	.byte	0x99
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.asciz	"cleanup"
	.byte	0x7
	.byte	0x9e
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xe
	.asciz	"print_pins_state"
	.byte	0x7
	.byte	0xa4
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.asciz	"print_settings"
	.byte	0x7
	.byte	0xa9
	.4byte	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xe
	.asciz	"name"
	.byte	0x7
	.byte	0xae
	.4byte	0xccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	0xf9
	.4byte	0xc82
	.uleb128 0x11
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.4byte	0xc72
	.uleb128 0x12
	.byte	0x1
	.4byte	0xf9
	.uleb128 0x4
	.byte	0x2
	.4byte	0xc88
	.uleb128 0x12
	.byte	0x1
	.4byte	0xc9a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x4
	.byte	0x2
	.4byte	0xc94
	.uleb128 0x13
	.byte	0x1
	.4byte	0xcb5
	.uleb128 0x11
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.4byte	0xca9
	.uleb128 0x14
	.4byte	0x172
	.4byte	0xccb
	.uleb128 0x15
	.4byte	0x109
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.4byte	0xcbb
	.uleb128 0x3
	.asciz	"bus_pirate_protocol_t"
	.byte	0x7
	.byte	0xaf
	.4byte	0xab8
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0xb4
	.4byte	0xd7f
	.uleb128 0x18
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0x18
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0x18
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0x18
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0x18
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0x18
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0x18
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0x18
	.asciz	"BP_PCATKBD"
	.sleb128 7
	.uleb128 0x18
	.asciz	"BP_PICPROG"
	.sleb128 8
	.uleb128 0x18
	.asciz	"BP_DIO"
	.sleb128 9
	.uleb128 0x18
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 10
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x7
	.byte	0xe9
	.4byte	0xced
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0xee
	.4byte	0xdc8
	.uleb128 0x18
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0x18
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0x18
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0x18
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x7
	.byte	0xf7
	.4byte	0xda7
	.uleb128 0xd
	.byte	0xc
	.byte	0x7
	.byte	0xf9
	.4byte	0xed9
	.uleb128 0xe
	.asciz	"terminal_input"
	.byte	0x7
	.byte	0xfa
	.4byte	0xed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"device_type"
	.byte	0x7
	.byte	0xfb
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"device_revision"
	.byte	0x7
	.byte	0xfc
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.asciz	"hardware_version"
	.byte	0x7
	.byte	0xfd
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.asciz	"terminal_speed"
	.byte	0x7
	.byte	0xfe
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.asciz	"display_mode"
	.byte	0x7
	.byte	0xff
	.4byte	0xdc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.asciz	"bus_mode"
	.byte	0x7
	.2byte	0x100
	.4byte	0xd7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.asciz	"quiet"
	.byte	0x7
	.2byte	0x101
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.asciz	"overflow"
	.byte	0x7
	.2byte	0x102
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.asciz	"basic"
	.byte	0x7
	.2byte	0x104
	.4byte	0xd9
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.4byte	0xd9
	.uleb128 0x7
	.asciz	"bus_pirate_configuration_t"
	.byte	0x7
	.2byte	0x106
	.4byte	0xde9
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.byte	0x90
	.4byte	0x1013
	.uleb128 0x18
	.asciz	"STATUS_CODE_UNKNOWN"
	.sleb128 0
	.uleb128 0x18
	.asciz	"STATUS_CODE_FINISHED"
	.sleb128 1
	.uleb128 0x18
	.asciz	"STATUS_CODE_PARTIAL_INSTRUCTION_ERROR"
	.sleb128 2
	.uleb128 0x18
	.asciz	"STATUS_CODE_SYNTAX_ERROR"
	.sleb128 3
	.uleb128 0x18
	.asciz	"STATUS_CODE_FOR_ERROR"
	.sleb128 4
	.uleb128 0x18
	.asciz	"STATUS_CODE_NEXT_ERROR"
	.sleb128 5
	.uleb128 0x18
	.asciz	"STATUS_CODE_GOTO_ERROR"
	.sleb128 6
	.uleb128 0x18
	.asciz	"STATUS_CODE_STACK_ERROR"
	.sleb128 7
	.uleb128 0x18
	.asciz	"STATUS_CODE_RETURN_ERROR"
	.sleb128 8
	.uleb128 0x18
	.asciz	"STATUS_CODE_DATA_ERROR"
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.asciz	"basic_status_code_t"
	.byte	0x1
	.byte	0xc3
	.4byte	0xf02
	.uleb128 0xd
	.byte	0x6
	.byte	0x1
	.byte	0xd4
	.4byte	0x1061
	.uleb128 0xe
	.asciz	"from"
	.byte	0x1
	.byte	0xd5
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"var"
	.byte	0x1
	.byte	0xd6
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"to"
	.byte	0x1
	.byte	0xd7
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.asciz	"basic_for_loop_t"
	.byte	0x1
	.byte	0xd8
	.4byte	0x102e
	.uleb128 0x1a
	.asciz	"bp_enable_pullup"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_enable_voltage_regulator"
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.asciz	"bp_set_voltage_regulator_state"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.4byte	0x1146
	.uleb128 0x1c
	.asciz	"state"
	.byte	0x2
	.byte	0x68
	.4byte	0xc9a
	.byte	0x0
	.uleb128 0x1b
	.asciz	"bp_set_pullup_state"
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.4byte	0x1171
	.uleb128 0x1c
	.asciz	"state"
	.byte	0x2
	.byte	0x52
	.4byte	0xc9a
	.byte	0x0
	.uleb128 0x1d
	.asciz	"handle_else_statement"
	.byte	0x1
	.2byte	0x164
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"search_line_number"
	.byte	0x1
	.2byte	0x16f
	.byte	0x1
	.4byte	0xc9a
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1224
	.uleb128 0x1f
	.asciz	"line"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1224
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.asciz	"result"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1229
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.asciz	"index"
	.byte	0x1
	.2byte	0x170
	.4byte	0x148
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.asciz	"token_length"
	.byte	0x1
	.2byte	0x171
	.4byte	0xd9
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.asciz	"current_line_number"
	.byte	0x1
	.2byte	0x172
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x16
	.4byte	0xf9
	.uleb128 0x4
	.byte	0x2
	.4byte	0xf9
	.uleb128 0x1e
	.asciz	"compare"
	.byte	0x1
	.2byte	0x401
	.byte	0x1
	.4byte	0xc9a
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x1272
	.uleb128 0x1f
	.asciz	"pointer"
	.byte	0x1
	.2byte	0x401
	.4byte	0x16c
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.asciz	"oldstart"
	.byte	0x1
	.2byte	0x402
	.4byte	0xb5
	.byte	0x0
	.uleb128 0x1e
	.asciz	"get_token"
	.byte	0x1
	.2byte	0x411
	.byte	0x1
	.4byte	0xd9
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x12a4
	.uleb128 0x20
	.asciz	"index"
	.byte	0x1
	.2byte	0x412
	.4byte	0x148
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x22
	.asciz	"list"
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x12d8
	.uleb128 0x21
	.asciz	"c"
	.byte	0x1
	.2byte	0x3e5
	.4byte	0xe8
	.uleb128 0x20
	.asciz	"lineno"
	.byte	0x1
	.2byte	0x3e6
	.4byte	0x109
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.asciz	"handle_special_token"
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	0xf9
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0x1353
	.uleb128 0x1f
	.asciz	"token"
	.byte	0x1
	.2byte	0x185
	.4byte	0x1353
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.4byte	.LBB31
	.4byte	.LBE31
	.uleb128 0x20
	.asciz	"adc_measurement"
	.byte	0x1
	.2byte	0x19f
	.4byte	0xf9
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.4byte	0x10e9
	.4byte	.LBB32
	.4byte	.LBE32
	.uleb128 0x24
	.4byte	0x10fc
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x1e
	.asciz	"get_number_or_variable"
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	0xa6
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x1394
	.uleb128 0x21
	.asciz	"temp"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xa6
	.byte	0x0
	.uleb128 0x1e
	.asciz	"get_multiplication_division_bitwise_ops"
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1
	.4byte	0xa6
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x13e3
	.uleb128 0x20
	.asciz	"temp"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xa6
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x1e
	.asciz	"assign"
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.4byte	0xa6
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1411
	.uleb128 0x20
	.asciz	"temp"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xa6
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x22
	.asciz	"interpreter"
	.byte	0x1
	.2byte	0x20f
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x1585
	.uleb128 0x21
	.asciz	"program_counter_updated"
	.byte	0x1
	.2byte	0x210
	.4byte	0xc9a
	.uleb128 0x21
	.asciz	"status"
	.byte	0x1
	.2byte	0x211
	.4byte	0x1013
	.uleb128 0x20
	.asciz	"len"
	.byte	0x1
	.2byte	0x213
	.4byte	0xb5
	.byte	0x1
	.byte	0x5b
	.uleb128 0x20
	.asciz	"lineno"
	.byte	0x1
	.2byte	0x214
	.4byte	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.asciz	"i"
	.byte	0x1
	.2byte	0x215
	.4byte	0xb5
	.uleb128 0x20
	.asciz	"ifstat"
	.byte	0x1
	.2byte	0x216
	.4byte	0xb5
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.asciz	"temp"
	.byte	0x1
	.2byte	0x218
	.4byte	0xb5
	.uleb128 0x25
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0x14c3
	.uleb128 0x26
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x250
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0x14e0
	.uleb128 0x26
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x25e
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1110
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0x1511
	.uleb128 0x28
	.4byte	0x1138
	.uleb128 0x24
	.4byte	0x10a6
	.4byte	.LBB40
	.4byte	.LBE40
	.uleb128 0x24
	.4byte	0x10c7
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0x153d
	.uleb128 0x21
	.asciz	"frequency"
	.byte	0x1
	.2byte	0x366
	.4byte	0xa6
	.uleb128 0x29
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x367
	.4byte	0xa6
	.byte	0x0
	.uleb128 0x25
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0x1557
	.uleb128 0x29
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x381
	.4byte	0xa6
	.byte	0x0
	.uleb128 0x2a
	.4byte	0x1146
	.4byte	.LBB46
	.4byte	.LBE46
	.uleb128 0x28
	.4byte	0x1163
	.uleb128 0x24
	.4byte	0x1079
	.4byte	.LBB48
	.4byte	.LBE48
	.uleb128 0x24
	.4byte	0x108f
	.4byte	.LBB50
	.4byte	.LBE50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.asciz	"bp_basic_initialize"
	.byte	0x1
	.2byte	0x4ab
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bp_basic_enter_interactive_interpreter"
	.byte	0x1
	.2byte	0x41d
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x167c
	.uleb128 0x21
	.asciz	"i"
	.byte	0x1
	.2byte	0x41e
	.4byte	0xb5
	.uleb128 0x21
	.asciz	"temp"
	.byte	0x1
	.2byte	0x41e
	.4byte	0xb5
	.uleb128 0x21
	.asciz	"end"
	.byte	0x1
	.2byte	0x41f
	.4byte	0xb5
	.uleb128 0x20
	.asciz	"len"
	.byte	0x1
	.2byte	0x41f
	.4byte	0xb5
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.asciz	"string_found"
	.byte	0x1
	.2byte	0x420
	.4byte	0xc9a
	.byte	0x1
	.byte	0x59
	.uleb128 0x20
	.asciz	"line"
	.byte	0x1
	.2byte	0x421
	.4byte	0x167c
	.byte	0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x20
	.asciz	"pos"
	.byte	0x1
	.2byte	0x422
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x21
	.asciz	"index"
	.byte	0x1
	.2byte	0x423
	.4byte	0x148
	.uleb128 0x21
	.asciz	"lineno1"
	.byte	0x1
	.2byte	0x425
	.4byte	0x109
	.uleb128 0x20
	.asciz	"lineno2"
	.byte	0x1
	.2byte	0x425
	.4byte	0x109
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x14
	.4byte	0xe8
	.4byte	0x168c
	.uleb128 0x15
	.4byte	0x109
	.byte	0x22
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF2
	.byte	0x5
	.2byte	0xce4
	.4byte	0x169a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x2f4
	.uleb128 0x2d
	.4byte	.LASF3
	.byte	0x5
	.2byte	0xcfa
	.4byte	0x16ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x443
	.uleb128 0x2d
	.4byte	.LASF4
	.byte	0x5
	.2byte	0xda8
	.4byte	0x16c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x514
	.uleb128 0x2d
	.4byte	.LASF5
	.byte	0x5
	.2byte	0xdb6
	.4byte	0x16d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x5cd
	.uleb128 0x2d
	.4byte	.LASF6
	.byte	0x5
	.2byte	0xdde
	.4byte	0x16e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x65f
	.uleb128 0x2d
	.4byte	.LASF7
	.byte	0x5
	.2byte	0xdea
	.4byte	0x16f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x6e2
	.uleb128 0x2d
	.4byte	.LASF8
	.byte	0x5
	.2byte	0xe86
	.4byte	0x170c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x828
	.uleb128 0x2d
	.4byte	.LASF9
	.byte	0x5
	.2byte	0xf19
	.4byte	0x171f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	0x99b
	.uleb128 0x14
	.4byte	0x172
	.4byte	0x1734
	.uleb128 0x15
	.4byte	0x109
	.byte	0xff
	.byte	0x0
	.uleb128 0x2f
	.asciz	"cmdbuf"
	.byte	0x8
	.byte	0x19
	.4byte	0x1724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.asciz	"cmdend"
	.byte	0x8
	.byte	0x1a
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF10
	.byte	0x8
	.byte	0x1b
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF11
	.byte	0x1
	.byte	0xcf
	.4byte	0xedf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF12
	.byte	0x1
	.byte	0xd0
	.4byte	0xa9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0xcd0
	.4byte	0x178b
	.uleb128 0x15
	.4byte	0x109
	.byte	0x9
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd2
	.4byte	0x177b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0xa6
	.4byte	0x17a8
	.uleb128 0x15
	.4byte	0x109
	.byte	0x19
	.byte	0x0
	.uleb128 0x31
	.asciz	"basic_variables"
	.byte	0x1
	.byte	0xda
	.4byte	0x1798
	.byte	0x5
	.byte	0x3
	.4byte	_basic_variables
	.uleb128 0x14
	.4byte	0xa6
	.4byte	0x17d5
	.uleb128 0x15
	.4byte	0x109
	.byte	0x9
	.byte	0x0
	.uleb128 0x31
	.asciz	"basic_stack"
	.byte	0x1
	.byte	0xdb
	.4byte	0x17c5
	.byte	0x5
	.byte	0x3
	.4byte	_basic_stack
	.uleb128 0x14
	.4byte	0x1061
	.4byte	0x17fe
	.uleb128 0x15
	.4byte	0x109
	.byte	0x3
	.byte	0x0
	.uleb128 0x31
	.asciz	"basic_nested_for_loops"
	.byte	0x1
	.byte	0xdc
	.4byte	0x17ee
	.byte	0x5
	.byte	0x3
	.4byte	_basic_nested_for_loops
	.uleb128 0x31
	.asciz	"basic_program_counter"
	.byte	0x1
	.byte	0xdd
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	_basic_program_counter
	.uleb128 0x31
	.asciz	"basic_current_nested_for_index"
	.byte	0x1
	.byte	0xde
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	_basic_current_nested_for_index
	.uleb128 0x31
	.asciz	"basic_current_stack_frame"
	.byte	0x1
	.byte	0xdf
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	_basic_current_stack_frame
	.uleb128 0x31
	.asciz	"basic_data_read_pointer"
	.byte	0x1
	.byte	0xe4
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	_basic_data_read_pointer
	.uleb128 0x14
	.4byte	0x16c
	.4byte	0x18cd
	.uleb128 0x15
	.4byte	0x109
	.byte	0x22
	.byte	0x0
	.uleb128 0x31
	.asciz	"tokens"
	.byte	0x1
	.byte	0xe6
	.4byte	0x18e1
	.byte	0x5
	.byte	0x3
	.4byte	_tokens
	.uleb128 0x16
	.4byte	0x18bd
	.uleb128 0x14
	.4byte	0xd9
	.4byte	0x18f7
	.uleb128 0x32
	.4byte	0x109
	.2byte	0x3ff
	.byte	0x0
	.uleb128 0x20
	.asciz	"basic_program_area"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x18e6
	.byte	0x5
	.byte	0x3
	.4byte	_basic_program_area
	.uleb128 0x2d
	.4byte	.LASF2
	.byte	0x5
	.2byte	0xce4
	.4byte	0x169a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF3
	.byte	0x5
	.2byte	0xcfa
	.4byte	0x16ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF4
	.byte	0x5
	.2byte	0xda8
	.4byte	0x16c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF5
	.byte	0x5
	.2byte	0xdb6
	.4byte	0x16d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF6
	.byte	0x5
	.2byte	0xdde
	.4byte	0x16e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF7
	.byte	0x5
	.2byte	0xdea
	.4byte	0x16f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF8
	.byte	0x5
	.2byte	0xe86
	.4byte	0x170c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF9
	.byte	0x5
	.2byte	0xf19
	.4byte	0x171f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.asciz	"cmdbuf"
	.byte	0x8
	.byte	0x19
	.4byte	0x1724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.asciz	"cmdend"
	.byte	0x8
	.byte	0x1a
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF10
	.byte	0x8
	.byte	0x1b
	.4byte	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF11
	.byte	0x1
	.byte	0xcf
	.4byte	0xedf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF12
	.byte	0x1
	.byte	0xd0
	.4byte	0xa9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd2
	.4byte	0x177b
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x51
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x19dd
	.4byte	0x1585
	.asciz	"bp_basic_initialize"
	.4byte	0x15a9
	.asciz	"bp_basic_enter_interactive_interpreter"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x200
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x19dd
	.4byte	0xa6
	.asciz	"int16_t"
	.4byte	0xd9
	.asciz	"uint8_t"
	.4byte	0xf9
	.asciz	"uint16_t"
	.4byte	0x148
	.asciz	"size_t"
	.4byte	0x187
	.asciz	"tagTRISBBITS"
	.4byte	0x2f4
	.asciz	"TRISBBITS"
	.4byte	0x306
	.asciz	"tagPORTBBITS"
	.4byte	0x443
	.asciz	"PORTBBITS"
	.4byte	0x455
	.asciz	"tagTRISEBITS"
	.4byte	0x514
	.asciz	"TRISEBITS"
	.4byte	0x526
	.asciz	"tagPORTEBITS"
	.4byte	0x5cd
	.asciz	"PORTEBITS"
	.4byte	0x5df
	.asciz	"tagTRISFBITS"
	.4byte	0x65f
	.asciz	"TRISFBITS"
	.4byte	0x671
	.asciz	"tagPORTFBITS"
	.4byte	0x6e2
	.asciz	"PORTFBITS"
	.4byte	0x807
	.asciz	"tagAD1CON1BITS"
	.4byte	0x828
	.asciz	"AD1CON1BITS"
	.4byte	0x83c
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x99b
	.asciz	"AD1PCFGBITS"
	.4byte	0xa9c
	.asciz	"mode_configuration_t"
	.4byte	0xcd0
	.asciz	"bus_pirate_protocol_t"
	.4byte	0xd7f
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0xdc8
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0xedf
	.asciz	"bus_pirate_configuration_t"
	.4byte	0x1013
	.asciz	"basic_status_code_t"
	.4byte	0x1061
	.asciz	"basic_for_loop_t"
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
.LASF1:
	.asciz	"duty_cycle"
.LASF5:
	.asciz	"PORTEbits"
.LASF8:
	.asciz	"AD1CON1bits"
.LASF2:
	.asciz	"TRISBbits"
.LASF9:
	.asciz	"AD1PCFGbits"
.LASF0:
	.asciz	"line_number"
.LASF6:
	.asciz	"TRISFbits"
.LASF7:
	.asciz	"PORTFbits"
.LASF3:
	.asciz	"PORTBbits"
.LASF10:
	.asciz	"cmdstart"
.LASF12:
	.asciz	"mode_configuration"
.LASF11:
	.asciz	"bus_pirate_configuration"
.LASF13:
	.asciz	"enabled_protocols"
.LASF4:
	.asciz	"TRISEbits"
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
