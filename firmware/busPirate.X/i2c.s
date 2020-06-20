	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\i2c.c"
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
	.type	_hardware_i2c_start,@function
_hardware_i2c_start:
.LFB34:
	.file 1 "../i2c.c"
	.loc 1 549 0
	.set ___PA___,1
	.loc 1 551 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,50
	bra	nz,.L2
	.loc 1 553 0
	bset.b	_I2C3CONbits,#0
.L3:
	.loc 1 554 0
	btst.b	_I2C3CONbits,#0
	.set ___BP___,86
	bra	nz,.L3
	bra	.L1
.L2:
	.loc 1 562 0
	bset.b	_I2C1CONbits,#0
.L5:
	.loc 1 564 0
	btst.b	_I2C1CONbits,#0
	.set ___BP___,86
	bra	nz,.L5
.L1:
	.loc 1 566 0
	return	
	.set ___PA___,0
.LFE34:
	.size	_hardware_i2c_start, .-_hardware_i2c_start
	.align	2
	.type	_hardware_i2c_stop,@function
_hardware_i2c_stop:
.LFB35:
	.loc 1 568 0
	.set ___PA___,1
	.loc 1 571 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,50
	bra	nz,.L9
	.loc 1 573 0
	bset.b	_I2C3CONbits,#2
.L10:
	.loc 1 574 0
	btst.b	_I2C3CONbits,#2
	.set ___BP___,86
	bra	nz,.L10
	bra	.L8
.L9:
	.loc 1 582 0
	bset.b	_I2C1CONbits,#2
.L12:
	.loc 1 584 0
	btst.b	_I2C1CONbits,#2
	.set ___BP___,86
	bra	nz,.L12
.L8:
	.loc 1 586 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_hardware_i2c_stop, .-_hardware_i2c_stop
	.align	2
	.type	_hardware_i2c_get_ack,@function
_hardware_i2c_get_ack:
.LFB36:
	.loc 1 588 0
	.set ___PA___,1
	.loc 1 590 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,61
	bra	nz,.L16
	.loc 1 592 0
	mov	_I2C3STATbits,w0
	lsr	w0,#15,w0
	bra	.L17
.L16:
	.loc 1 627 0
	mov	_I2C1STATbits,w0
	lsr	w0,#15,w0
.L17:
	.loc 1 629 0
	return	
	.set ___PA___,0
.LFE36:
	.size	_hardware_i2c_get_ack, .-_hardware_i2c_get_ack
	.align	2
	.type	_hardware_i2c_send_ack,@function
_hardware_i2c_send_ack:
.LFB37:
	.loc 1 631 0
	.set ___PA___,1
	.loc 1 633 0
	mov	#_i2c_state,w1
	mov.b	[w1],w1
	and.b	w1,#4,w1
	.set ___BP___,50
	bra	nz,.L19
	.loc 1 634 0
	and	w0,#1,w0
	sl	w0,#5,w0
	mov	_I2C3CONbits,w1
	bclr	w1,#5
	ior	w0,w1,w1
	mov	w1,_I2C3CONbits
	.loc 1 635 0
	bset.b	_I2C3CONbits,#4
.L20:
	.loc 1 636 0
	btst.b	_I2C3CONbits,#4
	.set ___BP___,86
	bra	nz,.L20
	bra	.L18
.L19:
	.loc 1 643 0
	and	w0,#1,w0
	sl	w0,#5,w0
	mov	_I2C1CONbits,w1
	bclr	w1,#5
	ior	w0,w1,w1
	mov	w1,_I2C1CONbits
	.loc 1 644 0
	bset.b	_I2C1CONbits,#4
.L22:
	.loc 1 646 0
	btst.b	_I2C1CONbits,#4
	.set ___BP___,86
	bra	nz,.L22
.L18:
	.loc 1 648 0
	return	
	.set ___PA___,0
.LFE37:
	.size	_hardware_i2c_send_ack, .-_hardware_i2c_send_ack
	.align	2
	.type	_hardware_i2c_write,@function
_hardware_i2c_write:
.LFB38:
	.loc 1 650 0
	.set ___PA___,1
	.loc 1 652 0
	mov	#_i2c_state,w1
	mov.b	[w1],w1
	and.b	w1,#4,w1
	.set ___BP___,50
	bra	nz,.L26
	.loc 1 653 0
	ze	w0,w0
	mov	w0,_I2C3TRN
	.loc 1 654 0
	mov	#16384,w1
.L27:
	mov	_I2C3STATbits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	nz,.L27
	bra	.L25
.L26:
	.loc 1 661 0
	ze	w0,w0
	mov	w0,_I2C1TRN
	.loc 1 692 0
	mov	#16384,w1
.L29:
	mov	_I2C1STATbits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	nz,.L29
.L25:
	.loc 1 696 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_hardware_i2c_write, .-_hardware_i2c_write
	.align	2
	.type	_hardware_i2c_read,@function
_hardware_i2c_read:
.LFB39:
	.loc 1 698 0
	.set ___PA___,1
	.loc 1 700 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,50
	bra	nz,.L33
	.loc 1 701 0
	bset.b	_I2C3CONbits,#3
.L34:
	.loc 1 702 0
	btst.b	_I2C3CONbits,#3
	.set ___BP___,86
	bra	nz,.L34
	.loc 1 705 0
	mov	_I2C3RCV,w0
	bra	.L35
.L33:
	.loc 1 709 0
	bset.b	_I2C1CONbits,#3
.L36:
	.loc 1 711 0
	btst.b	_I2C1CONbits,#3
	.set ___BP___,86
	bra	nz,.L36
	.loc 1 714 0
	mov	_I2C1RCV,w0
.L35:
	.loc 1 715 0
	return	
	.set ___PA___,0
.LFE39:
	.size	_hardware_i2c_read, .-_hardware_i2c_read
	.align	2
	.type	_hardware_i2c_setup,@function
_hardware_i2c_setup:
.LFB40:
	.loc 1 717 0
	.set ___PA___,1
	.loc 1 731 0
	mov	#-5377,w0
	and	_I2C3CON
	.loc 1 734 0
	clr	_I2C3ADD
	.loc 1 737 0
	clr	_I2C3MSK
	.loc 1 740 0
	mov	#_mode_configuration,w0
	ze	[w0],w0
	mov	#_HARDWARE_I2C_BRG_SPEEDS,w1
	mov.b	[w1+w0],w0
	ze	w0,w0
	mov	w0,_I2C3BRG
	.loc 1 743 0
	bset.b	_I2C3CONbits+1,#7
	.loc 1 809 0
	return	
	.set ___PA___,0
.LFE40:
	.size	_hardware_i2c_setup, .-_hardware_i2c_setup
	.align	2
	.type	_handle_pending_ack,@function
_handle_pending_ack:
.LFB42:
	.loc 1 917 0
	.set ___PA___,1
	.loc 1 918 0
	mov	#_i2c_state,w1
	mov.b	[w1],w1
	and.b	w1,#1,w1
	.set ___BP___,61
	bra	nz,.L41
	.loc 1 919 0
	call	_bitbang_write_bit
	bra	.L42
.L41:
	.loc 1 922 0
	call	_hardware_i2c_send_ack
.L42:
	.loc 1 925 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#1
	.loc 1 926 0
	return	
	.set ___PA___,0
.LFE42:
	.size	_handle_pending_ack, .-_handle_pending_ack
	.align	2
	.type	_i2c_write_then_read,@function
_i2c_write_then_read:
.LFB44:
	.loc 1 1107 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov.d	w12,[w15++]
.LCFI2:
	.loc 1 1109 0
	call	_user_serial_read_big_endian_word
	mov	w0,w9
	.loc 1 1112 0
	call	_user_serial_read_big_endian_word
	mov	w0,w12
	.loc 1 1124 0
	clr.b	w0
	.loc 1 1123 0
	mov	#4096,w1
	sub	w9,w1,[w15]
	.set ___BP___,39
	bra	gtu,.L44
	.loc 1 1128 0
	clr	w8
.LBB2:
	.loc 1 1158 0
	mov	#_bus_pirate_configuration,w11
.LBE2:
	.loc 1 1128 0
	cp0	w9
	.set ___BP___,50
	bra	nz,.L58
	cp0	w12
	.set ___BP___,61
	bra	nz,.L62
	bra	.L44
.L58:
.LBB3:
	.loc 1 1158 0
	add	w8,[w11],w10
	call	_user_serial_read_byte
	mov.b	w0,[w10]
	.loc 1 1157 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L58
.LBE3:
	.loc 1 1162 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0],w10
	.loc 1 1165 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 1168 0
	clr	w8
.L47:
.LBB4:
	.loc 1 1169 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0+w8],w0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 1171 0
	call	_bitbang_read_bit
	cp0.b	w0
	.set ___BP___,4
	bra	nz,.L56
	.loc 1 1168 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,95
	bra	gtu,.L47
.LBE4:
	.loc 1 1179 0
	cp0	w12
	.set ___BP___,100
	bra	z,.L48
.L52:
	sub	w9,#1,[w15]
	.set ___BP___,47
	bra	leu,.L49
	.loc 1 1181 0
	mov	#1,w0
	call	_bitbang_i2c_start
	.loc 1 1184 0
	bset.b	w10,#0
	ze	w10,w0
	call	_bitbang_write_value
	.loc 1 1186 0
	call	_bitbang_read_bit
	mov.b	w0,w1
	.loc 1 1188 0
	clr.b	w0
	.loc 1 1186 0
	cp0.b	w1
	.set ___BP___,61
	bra	z,.L49
	bra	.L44
.L51:
.LBB5:
	.loc 1 1215 0
	add	w8,[w11],w9
	call	_bitbang_read_value
	mov.b	w0,[w9]
	.loc 1 1218 0
	mov.b	w13,w0
	sub	w8,w10,[w15]
	.set ___BP___,50
	bra	geu,.L50
	clr.b	w0
.L50:
	call	_bitbang_write_bit
	.loc 1 1213 0
	inc	w8,w8
	sub	w12,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L51
.L48:
.LBE5:
	.loc 1 1222 0
	call	_bitbang_i2c_stop
	.loc 1 1225 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1228 0
	mov	w12,w1
	mov	_bus_pirate_configuration,w0
	call	_bp_write_buffer
	.loc 1 1232 0
	mov.b	#1,w0
	bra	.L44
.L56:
.LBB6:
	.loc 1 1173 0
	clr.b	w0
.L44:
.LBE6:
	.loc 1 1233 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.L62:
	.loc 1 1162 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0],w10
	.loc 1 1165 0
	clr	w0
	call	_bitbang_i2c_start
	bra	.L52
.L49:
	.loc 1 1193 0
	dec	w12,w10
	.loc 1 1213 0
	clr	w8
.LBB7:
	.loc 1 1215 0
	mov	#_bus_pirate_configuration,w11
	.loc 1 1218 0
	mov.b	#1,w13
	bra	.L51
.LBE7:
.LFE44:
	.size	_i2c_write_then_read, .-_i2c_write_then_read
	.section .const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_i2c_sniffer,@function
_i2c_sniffer:
.LFB41:
	.loc 1 813 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI3:
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	mov.d	w12,[w15++]
.LCFI6:
	mov	w14,[w15++]
.LCFI7:
	mov.b	w0,w14
	.loc 1 815 0
	call	_user_serial_ringbuffer_setup
	.loc 1 817 0
	bset.b	_TRISDbits,#1
	.loc 1 818 0
	bset.b	_TRISDbits,#2
	.loc 1 819 0
	bclr.b	_PORTDbits,#2
	.loc 1 820 0
	bclr.b	_PORTDbits,#1
	.loc 1 823 0
	bset.b	_CNEN4bits,#2
	.loc 1 824 0
	bset.b	_CNEN4bits,#3
	.loc 1 827 0
	bclr.b	_IFS1bits,#3
	.loc 1 829 0
	lsr	_PORTDbits,WREG
	and.b	w0,#1,w11
	.loc 1 830 0
	mov	_PORTDbits,w8
	sl	w8,#13,w8
	lsr	w8,#15,w8
	.loc 1 836 0
	clr.b	w0
	mov.b	w0,[w15-17]
	.loc 1 835 0
	mov.b	w0,[w15-16]
	.loc 1 834 0
	mov.b	w0,w12
	.loc 1 905 0
	mov.b	#1,w13
	.loc 1 904 0
	mov.b	w13,[w15-18]
	bra	.L83
.L77:
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	bra	.L83
.L78:
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	bra	.L83
.L79:
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
	bra	.L83
.L80:
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
.L83:
	.loc 1 839 0
	btst.b	_IFS1bits,#3
	.set ___BP___,50
	bra	nz,.L65
	.loc 1 843 0
	call	_user_serial_ringbuffer_process
	.loc 1 845 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L83
	.loc 1 846 0
	call	_user_serial_read_byte
	.loc 1 909 0
	bclr.b	_CNEN4bits,#2
	.loc 1 910 0
	bclr.b	_CNEN4bits,#3
	.loc 1 912 0
	cp0.b	w14
	.set ___BP___,61
	bra	z,.L63
	bra	.L84
.L65:
	.loc 1 854 0
	bclr.b	_IFS1bits,#3
	.loc 1 857 0
	lsr	_PORTDbits,WREG
	and.b	w0,#1,w10
	.loc 1 858 0
	mov	_PORTDbits,w9
	sl	w9,#13,w9
	lsr	w9,#15,w9
	.loc 1 861 0
	cp0.b	w12
	.set ___BP___,50
	bra	z,.L69
	cp0.b	w8
	.set ___BP___,50
	bra	nz,.L70
	cp0.b	w9
	.set ___BP___,50
	bra	z,.L69
	.loc 1 862 0
	mov.b	[w15-16],w2
	sub.b	w2,#7,[w15]
	.set ___BP___,50
	bra	gtu,.L71
	.loc 1 863 0
	mov.b	[w15-17],w1
	add.b	w1,w1,w0
	ior.b	w0,w10,w0
	mov.b	w0,[w15-17]
	.loc 1 864 0
	inc.b	w2,w2
	mov.b	w2,[w15-16]
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
	bra	.L83
.L71:
	.loc 1 866 0
	cp0.b	w14
	.set ___BP___,50
	bra	z,.L72
	.loc 1 868 0
	mov.b	[w15-17],w0
	call	_bp_write_hex_byte_to_ringbuffer
	bra	.L73
.L72:
	.loc 1 871 0
	mov.b	#92,w0
	call	_user_serial_ringbuffer_append
	.loc 1 872 0
	mov.b	[w15-17],w0
	call	_user_serial_ringbuffer_append
.L73:
	.loc 1 876 0
	mov.b	#43,w0
	cp0.b	w10
	.set ___BP___,50
	bra	z,.L74
	inc2.b	w0,w0
.L74:
	call	_user_serial_ringbuffer_append
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 880 0
	clr.b	w2
	mov.b	w2,[w15-16]
	bra	.L83
.L69:
	.loc 1 884 0
	cp0.b	w8
	.set ___BP___,70
	bra	z,.L77
.L70:
	cp0.b	w9
	.set ___BP___,50
	bra	z,.L78
	.loc 1 886 0
	cp0.b	w11
	.set ___BP___,50
	bra	z,.L75
	cp0.b	w10
	.set ___BP___,71
	bra	nz,.L79
	.loc 1 890 0
	mov.b	#91,w0
	call	_user_serial_ringbuffer_append
	.loc 1 888 0
	clr.b	w0
	mov.b	w0,[w15-16]
	.loc 1 887 0
	mov.b	w13,w12
	.loc 1 905 0
	mov.b	[w15-18],w8
	.loc 1 904 0
	mov.b	w0,w11
	.loc 1 890 0
	bra	.L83
.L75:
	.loc 1 893 0
	cp0.b	w10
	.set ___BP___,71
	bra	z,.L80
	.loc 1 897 0
	mov.b	#93,w0
	call	_user_serial_ringbuffer_append
	.loc 1 895 0
	clr.b	w1
	mov.b	w1,[w15-16]
	.loc 1 894 0
	mov.b	w1,w12
	.loc 1 905 0
	mov.b	w13,w8
	.loc 1 904 0
	mov.b	[w15-18],w11
	bra	.L83
.L84:
	.loc 1 913 0
	mov	#.LC0,w0
	call	_bp_write_line
.L63:
	.loc 1 915 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE41:
	.size	_i2c_sniffer, .-_i2c_sniffer
	.align	2
	.global	_i2c_read	; export
	.type	_i2c_read,@function
_i2c_read:
.LFB24:
	.loc 1 189 0
	.set ___PA___,1
	.loc 1 192 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L86
	.loc 1 193 0
	clr.b	w0
	call	_handle_pending_ack
	.loc 1 194 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 195 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 196 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
.L86:
	.loc 1 199 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L87
	.loc 1 200 0
	call	_bitbang_read_value
	bra	.L88
.L87:
	.loc 1 203 0
	call	_hardware_i2c_read
.L88:
	.loc 1 208 0
	mov	#_i2c_state,w1
	bset.b	[w1],#1
	.loc 1 209 0
	ze	w0,w0
	.loc 1 210 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_i2c_read, .-_i2c_read
	.align	2
	.global	_i2c_write	; export
	.type	_i2c_write,@function
_i2c_write:
.LFB25:
	.loc 1 212 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI8:
	mov	w0,w8
	.loc 1 213 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L90
	.loc 1 214 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 215 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 216 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 217 0
	clr.b	w0
	call	_handle_pending_ack
.L90:
	.loc 1 220 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,50
	bra	nz,.L91
	.loc 1 221 0
	mov	w8,w0
	call	_bitbang_write_value
	.loc 1 222 0
	call	_bitbang_read_bit
	ze	w0,w8
	bra	.L92
.L91:
	.loc 1 225 0
	mov.b	w8,w0
	call	_hardware_i2c_write
	.loc 1 226 0
	call	_hardware_i2c_get_ack
	ze	w0,w8
.L92:
	.loc 1 230 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 231 0
	cp0	w8
	.set ___BP___,61
	bra	nz,.L93
	.loc 1 232 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 233 0
	mov	#768,w0
	bra	.L94
.L93:
	.loc 1 236 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 237 0
	mov	#256,w0
.L94:
	.loc 1 238 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE25:
	.size	_i2c_write, .-_i2c_write
	.align	2
	.global	_i2c_start	; export
	.type	_i2c_start,@function
_i2c_start:
.LFB26:
	.loc 1 240 0
	.set ___PA___,1
	.loc 1 243 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L96
	.loc 1 244 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 245 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 247 0
	mov.b	#1,w0
	call	_handle_pending_ack
.L96:
	.loc 1 252 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,50
	bra	nz,.L97
	.loc 1 253 0
	clr	w0
	call	_bitbang_i2c_start
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L98
	.loc 1 255 0
	mov	#tbloffset(_MSG_WARNING_HEADER_str),w0
	mov	#tblpage(_MSG_WARNING_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 256 0
	mov	#tbloffset(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w0
	mov	#tblpage(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w1
	call	_bp_message_write_buffer
	.loc 1 257 0
	mov	#.LC0,w0
	call	_bp_write_line
	bra	.L98
.L97:
	.loc 1 261 0
	call	_hardware_i2c_start
.L98:
	.loc 1 265 0
	mov	#tbloffset(_MSG_I2C_START_BIT_str),w0
	mov	#tblpage(_MSG_I2C_START_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 266 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_i2c_start, .-_i2c_start
	.align	2
	.global	_i2c_stop	; export
	.type	_i2c_stop,@function
_i2c_stop:
.LFB27:
	.loc 1 268 0
	.set ___PA___,1
	.loc 1 269 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L100
	.loc 1 270 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 271 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 273 0
	mov.b	#1,w0
	call	_handle_pending_ack
.L100:
	.loc 1 276 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L101
	.loc 1 277 0
	call	_bitbang_i2c_stop
	bra	.L102
.L101:
	.loc 1 280 0
	call	_hardware_i2c_stop
.L102:
	.loc 1 284 0
	mov	#tbloffset(_MSG_I2C_STOP_BIT_str),w0
	mov	#tblpage(_MSG_I2C_STOP_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 285 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_i2c_stop, .-_i2c_stop
	.section .const,psv,page
.LC1:
	.asciz	" )"
	.section	.text,code
	.align	2
	.global	_i2c_print_settings	; export
	.type	_i2c_print_settings,@function
_i2c_print_settings:
.LFB28:
	.loc 1 287 0
	.set ___PA___,1
	.loc 1 288 0
	mov	#tbloffset(_BPMSG1068_str),w0
	mov	#tblpage(_BPMSG1068_str),w1
	call	_bp_message_write_buffer
	.loc 1 290 0
	mov	_i2c_state,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 294 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 295 0
	mov	#_mode_configuration,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 296 0
	mov	#.LC1,w0
	call	_bp_write_line
	.loc 1 297 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_i2c_print_settings, .-_i2c_print_settings
	.align	2
	.global	_i2c_setup_prepare	; export
	.type	_i2c_setup_prepare,@function
_i2c_setup_prepare:
.LFB29:
	.loc 1 299 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI9:
	.loc 1 306 0
	call	_consumewhitechars
	.loc 1 307 0
	call	_getint
	mov	w0,w8
	.loc 1 312 0
	call	_consumewhitechars
	.loc 1 313 0
	call	_getint
	.loc 1 316 0
	dec	w8,w1
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L109
	.loc 1 317 0
	mov	#_i2c_state,w1
	dec.b	w8,w8
	and.b	w8,#1,w8
	mov.b	[w1],w2
	bclr.b	w2,#0
	ior.b	w2,w8,[w1]
	.loc 1 323 0
	dec	w0,w1
	sub	w1,#3,[w15]
	.set ___BP___,0
	bra	gtu,.L109
	.loc 1 324 0
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	.loc 1 329 0
	cp0	w0
	.set ___BP___,100
	bra	nz,.L106
.L109:
	.loc 1 330 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 333 0
	mov	#tbloffset(_BPMSG1064_str),w0
	mov	#tblpage(_BPMSG1064_str),w1
	call	_bp_message_write_line
	.loc 1 334 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	#1,w0
	call	_getnumber
	mov	#_i2c_state,w1
	dec.b	w0,w0
	and.b	w0,#1,w0
	mov.b	[w1],w2
	bclr.b	w2,#0
	ior.b	w2,w0,w0
	mov.b	w0,[w1]
	.loc 1 339 0
	btst	w0,#0
	.set ___BP___,50
	bra	nz,.L107
	.loc 1 340 0
	mov	#tbloffset(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 341 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	#1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	bra	.L108
.L107:
	.loc 1 348 0
	mov	#tbloffset(_BPMSG1067_str),w0
	mov	#tblpage(_BPMSG1067_str),w1
	call	_bp_message_write_buffer
	.loc 1 349 0
	clr	w3
	mov	#3,w2
	mov	#1,w1
	mov	#1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	bra	.L108
.L106:
	.loc 1 357 0
	call	_i2c_print_settings
	.loc 1 359 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#1
.L108:
	.loc 1 362 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#4
	.loc 1 363 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_i2c_setup_prepare, .-_i2c_setup_prepare
	.align	2
	.global	_i2c_setup_execute	; export
	.type	_i2c_setup_execute,@function
_i2c_setup_execute:
.LFB30:
	.loc 1 365 0
	.set ___PA___,1
	.loc 1 366 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L111
	.loc 1 367 0
	bset.b	_TRISDbits,#1
	.loc 1 368 0
	bset.b	_TRISDbits,#2
	.loc 1 369 0
	bclr.b	_PORTDbits,#2
	.loc 1 370 0
	bclr.b	_PORTDbits,#1
	.loc 1 371 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#2,w0
	call	_bitbang_setup
	bra	.L110
.L111:
	.loc 1 374 0
	call	_hardware_i2c_setup
.L110:
	.loc 1 377 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_i2c_setup_execute, .-_i2c_setup_execute
	.align	2
	.global	_i2c_cleanup	; export
	.type	_i2c_cleanup,@function
_i2c_cleanup:
.LFB31:
	.loc 1 379 0
	.set ___PA___,1
	.loc 1 381 0
	mov	#_i2c_state,w1
	mov.b	[w1],w0
	bclr.b	w0,#1
	mov.b	w0,[w1]
	.loc 1 384 0
	btst	w0,#0
	.set ___BP___,39
	bra	z,.L113
	.loc 1 389 0
	bclr.b	_I2C3CONbits+1,#7
	.loc 1 392 0
	bclr.b	_I2C1CONbits+1,#7
.L113:
	.loc 1 402 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_i2c_cleanup, .-_i2c_cleanup
	.align	2
	.global	_i2c_macro	; export
	.type	_i2c_macro,@function
_i2c_macro:
.LFB32:
	.loc 1 404 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	mov.d	w12,[w15++]
.LCFI12:
	mov	w14,[w15++]
.LCFI13:
	.loc 1 407 0
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L119
	.set ___BP___,50
	bra	gtu,.L122
	cp0	w0
	.set ___BP___,50
	bra	z,.L117
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L116
	bra	.L139
.L122:
	sub	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L120
	sub	w0,#4,[w15]
	.set ___BP___,71
	bra	nz,.L116
	bra	.L140
.L117:
	.loc 1 410 0
	mov	#tbloffset(_BPMSG1069_str),w0
	mov	#tblpage(_BPMSG1069_str),w1
	call	_bp_message_write_buffer
	.loc 1 411 0
	bra	.L115
.L139:
	.loc 1 415 0
	clr	w1
	mov	#6,w0
	call	_bitbang_set_pins_high
	.loc 1 416 0
	mov	#tbloffset(_BPMSG1070_str),w0
	mov	#tblpage(_BPMSG1070_str),w1
	call	_bp_message_write_line
	.loc 1 418 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,50
	bra	nz,.L124
	btst.b	_PORTDbits,#2
	.set ___BP___,39
	bra	z,.L125
	clr	w12
	btst.b	_PORTDbits,#1
	.set ___BP___,61
	bra	nz,.L126
	bra	.L125
.L124:
	.loc 1 419 0
	clr	w12
	btst.b	_PORTDbits+9/8,#9%8
	.set ___BP___,50
	bra	nz,.L126
	btst.b	_PORTDbits+10/8,#10%8
	.set ___BP___,61
	bra	nz,.L126
.L125:
	.loc 1 423 0
	mov	#tbloffset(_MSG_WARNING_HEADER_str),w0
	mov	#tblpage(_MSG_WARNING_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 424 0
	mov	#tbloffset(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w0
	mov	#tblpage(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w1
	call	_bp_message_write_buffer
	.loc 1 425 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 426 0
	bra	.L115
.L126:
	.loc 1 430 0
	mov	#_i2c_state,w13
	.loc 1 459 0
	mov	#tbloffset(_MSG_I2C_READ_ADDRESS_END_str),w8
	mov	#tblpage(_MSG_I2C_READ_ADDRESS_END_str),w9
	.loc 1 448 0
	mov	#tbloffset(_MSG_I2C_WRITE_ADDRESS_END_str),w10
	mov	#tblpage(_MSG_I2C_WRITE_ADDRESS_END_str),w11
	.loc 1 429 0
	mov	#256,w14
.L137:
	.loc 1 430 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,50
	bra	nz,.L127
	.loc 1 431 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 432 0
	mov	w12,w0
	call	_bitbang_write_value
	.loc 1 433 0
	call	_bitbang_read_bit
	ze	w0,w0
	bra	.L128
.L127:
	.loc 1 436 0
	call	_hardware_i2c_start
	.loc 1 437 0
	mov.b	w12,w0
	call	_hardware_i2c_write
	.loc 1 438 0
	call	_hardware_i2c_get_ack
	ze	w0,w0
.L128:
	.loc 1 442 0
	cp0	w0
	.set ___BP___,71
	bra	nz,.L129
	.loc 1 443 0
	mov	w12,w0
	call	_bp_write_formatted_integer
	.loc 1 444 0
	mov.b	#40,w0
	call	_user_serial_transmit_character
	.loc 1 445 0
	asr	w12,w0
	call	_bp_write_formatted_integer
	.loc 1 447 0
	btst	w12,#0
	.set ___BP___,71
	bra	nz,.L130
	.loc 1 448 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	bra	.L129
.L130:
	.loc 1 450 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,50
	bra	nz,.L131
	.loc 1 451 0
	call	_bitbang_read_value
	.loc 1 452 0
	mov.b	#1,w0
	call	_bitbang_write_bit
	bra	.L132
.L131:
	.loc 1 455 0
	call	_hardware_i2c_read
	.loc 1 456 0
	mov.b	#1,w0
	call	_hardware_i2c_send_ack
.L132:
	.loc 1 459 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
.L129:
	.loc 1 463 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,50
	bra	nz,.L133
	.loc 1 464 0
	call	_bitbang_i2c_stop
	bra	.L134
.L133:
	.loc 1 467 0
	call	_hardware_i2c_stop
.L134:
	.loc 1 429 0
	inc	w12,w12
	sub	w12,w14,[w15]
	.set ___BP___,99
	bra	nz,.L137
	.loc 1 471 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 473 0
	bra	.L115
.L119:
	.loc 1 476 0
	call	_i2c_cleanup
	.loc 1 478 0
	mov	#tbloffset(_MSG_SNIFFER_MESSAGE_str),w0
	mov	#tblpage(_MSG_SNIFFER_MESSAGE_str),w1
	call	_bp_message_write_line
	.loc 1 479 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 480 0
	mov.b	#1,w0
	call	_i2c_sniffer
	.loc 1 483 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,71
	bra	z,.L115
	.loc 1 485 0
	call	_hardware_i2c_setup
	bra	.L115
.L120:
	.loc 1 494 0
	mov	#tbloffset(_MSG_USING_ONBOARD_I2C_EEPROM_str),w0
	mov	#tblpage(_MSG_USING_ONBOARD_I2C_EEPROM_str),w1
	call	_bp_message_write_line
	.loc 1 496 0
	mov	#_i2c_state,w0
	bset.b	[w0],#2
	.loc 1 509 0
	mov	#-5377,w0
	and	_I2C1CON
	.loc 1 513 0
	clr	_I2C1ADD
	.loc 1 516 0
	clr	_I2C1MSK
	.loc 1 519 0
	mov	#_mode_configuration,w0
	ze	[w0],w0
	mov	#_HARDWARE_I2C_BRG_SPEEDS,w1
	mov.b	[w1+w0],w0
	ze	w0,w0
	mov	w0,_I2C1BRG
	.loc 1 522 0
	bset.b	_I2C1CONbits+1,#7
	.loc 1 525 0
	bclr.b	_I2C3CONbits+1,#7
	.loc 1 526 0
	bra	.L115
.L140:
	.loc 1 530 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#4,w0
	.set ___BP___,71
	bra	z,.L115
	.loc 1 531 0
	mov	#tbloffset(_MSG_ONBOARD_I2C_EEPROM_WRITE_PROTECT_DISABLED_str),w0
	mov	#tblpage(_MSG_ONBOARD_I2C_EEPROM_WRITE_PROTECT_DISABLED_str),w1
	call	_bp_message_write_line
	.loc 1 532 0
	bclr.b	_PORTDbits+1,#3
	bra	.L115
.L116:
	.loc 1 540 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L115:
	.loc 1 543 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE32:
	.size	_i2c_macro, .-_i2c_macro
	.align	2
	.global	_i2c_pins_state	; export
	.type	_i2c_pins_state,@function
_i2c_pins_state:
.LFB33:
	.loc 1 545 0
	.set ___PA___,1
	.loc 1 545 0
	mov	#tbloffset(_MSG_I2C_PINS_STATE_str),w0
	mov	#tblpage(_MSG_I2C_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE33:
	.size	_i2c_pins_state, .-_i2c_pins_state
	.align	2
	.global	_binary_io_enter_i2c_mode	; export
	.type	_binary_io_enter_i2c_mode,@function
_binary_io_enter_i2c_mode:
.LFB43:
	.loc 1 944 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI14:
	mov.d	w10,[w15++]
.LCFI15:
	mov.d	w12,[w15++]
.LCFI16:
	.loc 1 948 0
	bset.b	_TRISDbits,#1
	.loc 1 949 0
	bset.b	_TRISDbits,#2
	.loc 1 950 0
	bclr.b	_PORTDbits,#2
	.loc 1 951 0
	bclr.b	_PORTDbits,#1
	.loc 1 954 0
	bclr.b	_TRISDbits,#4
	.loc 1 956 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w1
	bset.b	w1,#4
	.loc 1 957 0
	bclr.b	w1,#3
	mov.b	w1,[w0]
	.loc 1 958 0
	mov	#3,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 959 0
	mov	#tbloffset(_MSG_I2C_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_I2C_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	.loc 1 962 0
	mov	#_inByte.8525,w11
	.loc 1 964 0
	mov	#_rawCommand.8526,w12
	.loc 1 1043 0
	mov	#_mode_configuration+2,w13
	.loc 1 974 0
	mov	#tbloffset(_MSG_I2C_MODE_IDENTIFIER_str),w8
	mov	#tblpage(_MSG_I2C_MODE_IDENTIFIER_str),w9
	.loc 1 1074 0
	mov	#_i.8527,w10
.L180:
	.loc 1 962 0
	call	_user_serial_read_byte
	mov.b	w0,[w11]
	.loc 1 964 0
	ze	w0,w2
	lsr	w2,#4,w2
	mov.b	w2,[w12]
	.loc 1 966 0
	sub.b	w2,#4,[w15]
	.set ___BP___,29
	bra	z,.L147
	.set ___BP___,50
	bra	gtu,.L150
	cp0.b	w2
	.set ___BP___,50
	bra	z,.L145
	sub.b	w2,#1,[w15]
	.set ___BP___,71
	bra	nz,.L144
	bra	.L181
.L150:
	sub.b	w2,#5,[w15]
	.set ___BP___,29
	bra	z,.L148
	sub.b	w2,#6,[w15]
	.set ___BP___,71
	bra	nz,.L144
	bra	.L182
.L145:
	.loc 1 968 0
	ze	w0,w0
	clr	w1
	sub	w0,#15,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L151
	bra	w0
	.align	2
	.set	___PA___,0
.L162:
	bra	.L142
	bra	.L153
	bra	.L154
	bra	.L155
	bra	.L156
	bra	.L151
	bra	.L157
	bra	.L158
	bra	.L159
	bra	.L160
	bra	.L151
	bra	.L151
	bra	.L151
	bra	.L151
	bra	.L151
	bra	.L161
	.set	___PA___,1
.L153:
	.loc 1 974 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 975 0
	bra	.L180
.L154:
	.loc 1 978 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 979 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 980 0
	bra	.L180
.L155:
	.loc 1 983 0
	call	_bitbang_i2c_stop
	.loc 1 984 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 985 0
	bra	.L180
.L156:
	.loc 1 988 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 989 0
	bra	.L180
.L157:
	.loc 1 992 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 993 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 994 0
	bra	.L180
.L158:
	.loc 1 997 0
	mov.b	#1,w0
	call	_bitbang_write_bit
	.loc 1 998 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 999 0
	bra	.L180
.L159:
	.loc 1 1002 0
	call	_i2c_write_then_read
	cp0.b	w0
	.set ___BP___,71
	bra	nz,.L180
	.loc 1 1003 0
	call	_user_serial_transmit_character
	bra	.L180
.L160:
	.loc 1 1009 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.L164:
	.loc 1 1013 0
	btst.b	_U1STAbits,#0
	.set ___BP___,86
	bra	z,.L164
	.loc 1 1016 0
	mov	_U1RXREG,w1
	mov.b	w1,w0
	mov.b	w1,[w11]
	.loc 1 1024 0
	sub.b	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L168
	.set ___BP___,50
	bra	gtu,.L172
	cp0.b	w1
	.set ___BP___,50
	bra	z,.L166
	sub.b	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L174
	bra	.L183
.L172:
	sub.b	w1,#16,[w15]
	.set ___BP___,29
	bra	z,.L170
	mov.b	#32,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L171
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L174
	bra	.L184
.L166:
	.loc 1 1027 0
	call	_bp_aux_pin_set_low
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1028 0
	bra	.L165
.L183:
	.loc 1 1031 0
	call	_bp_aux_pin_set_high
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1032 0
	bra	.L165
.L168:
	.loc 1 1035 0
	call	_bp_aux_pin_set_high_impedance
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1036 0
	bra	.L165
.L184:
	.loc 1 1039 0
	call	_bp_aux_pin_read
	ze	w0,w0
	.loc 1 1040 0
	bra	.L165
.L170:
	.loc 1 1043 0
	mov.b	#-4,w0
	and.b	w0,[w13],[w13]
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1044 0
	bra	.L165
.L171:
	.loc 1 1047 0
	mov.b	#-4,w0
	and.b	w0,[w13],w0
	bset.b	w0,#0
	mov.b	w0,[w13]
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1048 0
	bra	.L165
.L174:
	.loc 1 1023 0
	mov	#1,w0
.L165:
	.loc 1 1055 0
	call	_user_serial_transmit_character
	.loc 1 1056 0
	bra	.L180
.L161:
	.loc 1 1059 0
	clr.b	w0
	call	_i2c_sniffer
	.loc 1 1060 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1061 0
	bra	.L180
.L151:
	.loc 1 1064 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1065 0
	bra	.L180
.L181:
	.loc 1 1070 0
	and.b	w0,#15,w0
	.loc 1 1071 0
	inc.b	w0,[w11]
	.loc 1 1072 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1074 0
	clr.b	[w10]
	cp0.b	[w11]
	.set ___BP___,9
	bra	z,.L180
.L176:
	.loc 1 1076 0
	call	_user_serial_read_byte
	.loc 1 1075 0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 1078 0
	call	_bitbang_read_bit
	.loc 1 1077 0
	call	_user_serial_transmit_character
	.loc 1 1074 0
	inc.b	[w10],w0
	mov.b	w0,[w10]
	subr.b	w0,[w11],[w15]
	.set ___BP___,91
	bra	gtu,.L176
	bra	.L180
.L182:
	.loc 1 1084 0
	and.b	w0,#3,w0
	mov.b	w0,[w11]
	.loc 1 1085 0
	ze	w0,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 1086 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1087 0
	bra	.L180
.L147:
	.loc 1 1090 0
	call	_bp_binary_io_peripherals_set
	.loc 1 1091 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1092 0
	bra	.L180
.L148:
	.loc 1 1096 0
	call	_bp_binary_io_pullup_control
	call	_user_serial_transmit_character
	.loc 1 1097 0
	bra	.L180
.L144:
	.loc 1 1101 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L180
.L142:
	.loc 1 1105 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_binary_io_enter_i2c_mode, .-_binary_io_enter_i2c_mode
	.section	.bss,bss
	.type	_i.8527,@object
	.size	_i.8527, 1
_i.8527:
	.skip	1
	.type	_rawCommand.8526,@object
	.size	_rawCommand.8526, 1
_rawCommand.8526:
	.skip	1
	.type	_inByte.8525,@object
	.size	_inByte.8525, 1
_inByte.8525:
	.skip	1
	.align	2
	.type	_i2c_state,@object
	.size	_i2c_state, 1
_i2c_state:
	.skip	1
	.section	.const,psv,page
	.type	_HARDWARE_I2C_BRG_SPEEDS,@object
	.size	_HARDWARE_I2C_BRG_SPEEDS, 3
_HARDWARE_I2C_BRG_SPEEDS:
	.byte -99
	.byte 37
	.byte 13
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI0-.LFB44
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -8
	.byte	0x8c
	.uleb128 0x6
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI10-.LFB32
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -9
	.byte	0x8e
	.uleb128 0x8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI14-.LFB43
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE40:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 4 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 5 "../base.h"
	.file 6 "../bitbang.h"
	.file 7 "../core.h"
	.section	.debug_info,info
	.4byte	0x2356
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../i2c.c"
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
	.byte	0x2
	.byte	0x2b
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0x31
	.4byte	0xf8
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
	.byte	0x3
	.byte	0x5
	.4byte	0xf8
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
	.asciz	"tagCNEN4BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x10b
	.4byte	0x2ad
	.uleb128 0x5
	.asciz	"CN49IE"
	.byte	0x4
	.2byte	0x10d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN50IE"
	.byte	0x4
	.2byte	0x10e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN51IE"
	.byte	0x4
	.2byte	0x10f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN52IE"
	.byte	0x4
	.2byte	0x110
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN53IE"
	.byte	0x4
	.2byte	0x111
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN54IE"
	.byte	0x4
	.2byte	0x112
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN55IE"
	.byte	0x4
	.2byte	0x113
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN56IE"
	.byte	0x4
	.2byte	0x114
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN58IE"
	.byte	0x4
	.2byte	0x116
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN59IE"
	.byte	0x4
	.2byte	0x117
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN60IE"
	.byte	0x4
	.2byte	0x118
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN61IE"
	.byte	0x4
	.2byte	0x119
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN62IE"
	.byte	0x4
	.2byte	0x11a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN63IE"
	.byte	0x4
	.2byte	0x11b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"CNEN4BITS"
	.byte	0x4
	.2byte	0x11c
	.4byte	0x170
	.uleb128 0x4
	.asciz	"tagIFS1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x3f1
	.uleb128 0x5
	.asciz	"SI2C1IF"
	.byte	0x4
	.2byte	0x1b2
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"MI2C1IF"
	.byte	0x4
	.2byte	0x1b3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMIF"
	.byte	0x4
	.2byte	0x1b4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CNIF"
	.byte	0x4
	.2byte	0x1b5
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT1IF"
	.byte	0x4
	.2byte	0x1b6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC7IF"
	.byte	0x4
	.2byte	0x1b8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC8IF"
	.byte	0x4
	.2byte	0x1b9
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC3IF"
	.byte	0x4
	.2byte	0x1bb
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC4IF"
	.byte	0x4
	.2byte	0x1bc
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T4IF"
	.byte	0x4
	.2byte	0x1bd
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T5IF"
	.byte	0x4
	.2byte	0x1be
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"INT2IF"
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2RXIF"
	.byte	0x4
	.2byte	0x1c0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U2TXIF"
	.byte	0x4
	.2byte	0x1c1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"IFS1BITS"
	.byte	0x4
	.2byte	0x1c2
	.4byte	0x2bf
	.uleb128 0x4
	.asciz	"tagI2C1CONBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xa0d
	.4byte	0x543
	.uleb128 0x5
	.asciz	"SEN"
	.byte	0x4
	.2byte	0xa0e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RSEN"
	.byte	0x4
	.2byte	0xa0f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PEN"
	.byte	0x4
	.2byte	0xa10
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RCEN"
	.byte	0x4
	.2byte	0xa11
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKEN"
	.byte	0x4
	.2byte	0xa12
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKDT"
	.byte	0x4
	.2byte	0xa13
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"STREN"
	.byte	0x4
	.2byte	0xa14
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"GCEN"
	.byte	0x4
	.2byte	0xa15
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SMEN"
	.byte	0x4
	.2byte	0xa16
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"DISSLW"
	.byte	0x4
	.2byte	0xa17
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"A10M"
	.byte	0x4
	.2byte	0xa18
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IPMIEN"
	.byte	0x4
	.2byte	0xa19
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SCLREL"
	.byte	0x4
	.2byte	0xa1a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2CSIDL"
	.byte	0x4
	.2byte	0xa1b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2CEN"
	.byte	0x4
	.2byte	0xa1d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"I2C1CONBITS"
	.byte	0x4
	.2byte	0xa1e
	.4byte	0x402
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xa25
	.4byte	0x65f
	.uleb128 0x5
	.asciz	"TBF"
	.byte	0x4
	.2byte	0xa26
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RBF"
	.byte	0x4
	.2byte	0xa27
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"R_NOT_W"
	.byte	0x4
	.2byte	0xa28
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"S"
	.byte	0x4
	.2byte	0xa29
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"P"
	.byte	0x4
	.2byte	0xa2a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"D_NOT_A"
	.byte	0x4
	.2byte	0xa2b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2COV"
	.byte	0x4
	.2byte	0xa2c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IWCOL"
	.byte	0x4
	.2byte	0xa2d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADD10"
	.byte	0x4
	.2byte	0xa2e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"GCSTAT"
	.byte	0x4
	.2byte	0xa2f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"BCL"
	.byte	0x4
	.2byte	0xa30
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRSTAT"
	.byte	0x4
	.2byte	0xa32
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKSTAT"
	.byte	0x4
	.2byte	0xa33
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xa35
	.4byte	0x68d
	.uleb128 0x5
	.asciz	"R_W"
	.byte	0x4
	.2byte	0xa37
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"D_A"
	.byte	0x4
	.2byte	0xa39
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.2byte	0xa24
	.4byte	0x6a1
	.uleb128 0x9
	.4byte	0x557
	.uleb128 0x9
	.4byte	0x65f
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagI2C1STATBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xa23
	.4byte	0x6c3
	.uleb128 0xa
	.4byte	0x68d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"I2C1STATBITS"
	.byte	0x4
	.2byte	0xa3c
	.4byte	0x6a1
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xabb
	.4byte	0x800
	.uleb128 0x5
	.asciz	"URXDA"
	.byte	0x4
	.2byte	0xabc
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OERR"
	.byte	0x4
	.2byte	0xabd
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FERR"
	.byte	0x4
	.2byte	0xabe
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PERR"
	.byte	0x4
	.2byte	0xabf
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RIDLE"
	.byte	0x4
	.2byte	0xac0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADDEN"
	.byte	0x4
	.2byte	0xac1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"URXISEL"
	.byte	0x4
	.2byte	0xac2
	.4byte	0xe8
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRMT"
	.byte	0x4
	.2byte	0xac3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBF"
	.byte	0x4
	.2byte	0xac4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXEN"
	.byte	0x4
	.2byte	0xac5
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBRK"
	.byte	0x4
	.2byte	0xac6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXISEL0"
	.byte	0x4
	.2byte	0xac8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXINV"
	.byte	0x4
	.2byte	0xac9
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXISEL1"
	.byte	0x4
	.2byte	0xaca
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xacc
	.4byte	0x838
	.uleb128 0x5
	.asciz	"URXISEL0"
	.byte	0x4
	.2byte	0xace
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"URXISEL1"
	.byte	0x4
	.2byte	0xacf
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.2byte	0xaba
	.4byte	0x84c
	.uleb128 0x9
	.4byte	0x6d8
	.uleb128 0x9
	.4byte	0x800
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xab9
	.4byte	0x86b
	.uleb128 0xa
	.4byte	0x838
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"U1STABITS"
	.byte	0x4
	.2byte	0xad2
	.4byte	0x84c
	.uleb128 0x4
	.asciz	"tagI2C3CONBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xc0e
	.4byte	0x9be
	.uleb128 0x5
	.asciz	"SEN"
	.byte	0x4
	.2byte	0xc0f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RSEN"
	.byte	0x4
	.2byte	0xc10
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PEN"
	.byte	0x4
	.2byte	0xc11
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RCEN"
	.byte	0x4
	.2byte	0xc12
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKEN"
	.byte	0x4
	.2byte	0xc13
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKDT"
	.byte	0x4
	.2byte	0xc14
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"STREN"
	.byte	0x4
	.2byte	0xc15
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"GCEN"
	.byte	0x4
	.2byte	0xc16
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SMEN"
	.byte	0x4
	.2byte	0xc17
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"DISSLW"
	.byte	0x4
	.2byte	0xc18
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"A10M"
	.byte	0x4
	.2byte	0xc19
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IPMIEN"
	.byte	0x4
	.2byte	0xc1a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SCLREL"
	.byte	0x4
	.2byte	0xc1b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2CSIDL"
	.byte	0x4
	.2byte	0xc1c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2CEN"
	.byte	0x4
	.2byte	0xc1e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"I2C3CONBITS"
	.byte	0x4
	.2byte	0xc1f
	.4byte	0x87d
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xc26
	.4byte	0xada
	.uleb128 0x5
	.asciz	"TBF"
	.byte	0x4
	.2byte	0xc27
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RBF"
	.byte	0x4
	.2byte	0xc28
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"R_NOT_W"
	.byte	0x4
	.2byte	0xc29
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"S"
	.byte	0x4
	.2byte	0xc2a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"P"
	.byte	0x4
	.2byte	0xc2b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"D_NOT_A"
	.byte	0x4
	.2byte	0xc2c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"I2COV"
	.byte	0x4
	.2byte	0xc2d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IWCOL"
	.byte	0x4
	.2byte	0xc2e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADD10"
	.byte	0x4
	.2byte	0xc2f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"GCSTAT"
	.byte	0x4
	.2byte	0xc30
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"BCL"
	.byte	0x4
	.2byte	0xc31
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRSTAT"
	.byte	0x4
	.2byte	0xc33
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ACKSTAT"
	.byte	0x4
	.2byte	0xc34
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xc36
	.4byte	0xb08
	.uleb128 0x5
	.asciz	"R_W"
	.byte	0x4
	.2byte	0xc38
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"D_A"
	.byte	0x4
	.2byte	0xc3a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.2byte	0xc25
	.4byte	0xb1c
	.uleb128 0x9
	.4byte	0x9d2
	.uleb128 0x9
	.4byte	0xada
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagI2C3STATBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xc24
	.4byte	0xb3e
	.uleb128 0xa
	.4byte	0xb08
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"I2C3STATBITS"
	.byte	0x4
	.2byte	0xc3d
	.4byte	0xb1c
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xcd2
	.4byte	0xcc0
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0xcd3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB1"
	.byte	0x4
	.2byte	0xcd4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB2"
	.byte	0x4
	.2byte	0xcd5
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB3"
	.byte	0x4
	.2byte	0xcd6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB4"
	.byte	0x4
	.2byte	0xcd7
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB5"
	.byte	0x4
	.2byte	0xcd8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB6"
	.byte	0x4
	.2byte	0xcd9
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB7"
	.byte	0x4
	.2byte	0xcda
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB8"
	.byte	0x4
	.2byte	0xcdb
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB9"
	.byte	0x4
	.2byte	0xcdc
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB10"
	.byte	0x4
	.2byte	0xcdd
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB11"
	.byte	0x4
	.2byte	0xcde
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB12"
	.byte	0x4
	.2byte	0xcdf
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB13"
	.byte	0x4
	.2byte	0xce0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB14"
	.byte	0x4
	.2byte	0xce1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB15"
	.byte	0x4
	.2byte	0xce2
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISBBITS"
	.byte	0x4
	.2byte	0xce3
	.4byte	0xb53
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xce8
	.4byte	0xe0f
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x4
	.2byte	0xce9
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB1"
	.byte	0x4
	.2byte	0xcea
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB2"
	.byte	0x4
	.2byte	0xceb
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB3"
	.byte	0x4
	.2byte	0xcec
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB4"
	.byte	0x4
	.2byte	0xced
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB5"
	.byte	0x4
	.2byte	0xcee
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB6"
	.byte	0x4
	.2byte	0xcef
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB7"
	.byte	0x4
	.2byte	0xcf0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB8"
	.byte	0x4
	.2byte	0xcf1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB9"
	.byte	0x4
	.2byte	0xcf2
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB10"
	.byte	0x4
	.2byte	0xcf3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB11"
	.byte	0x4
	.2byte	0xcf4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB12"
	.byte	0x4
	.2byte	0xcf5
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB13"
	.byte	0x4
	.2byte	0xcf6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB14"
	.byte	0x4
	.2byte	0xcf7
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB15"
	.byte	0x4
	.2byte	0xcf8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTBBITS"
	.byte	0x4
	.2byte	0xcf9
	.4byte	0xcd2
	.uleb128 0x4
	.asciz	"tagTRISDBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd56
	.4byte	0xf36
	.uleb128 0x5
	.asciz	"TRISD0"
	.byte	0x4
	.2byte	0xd57
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD1"
	.byte	0x4
	.2byte	0xd58
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD2"
	.byte	0x4
	.2byte	0xd59
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD3"
	.byte	0x4
	.2byte	0xd5a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD4"
	.byte	0x4
	.2byte	0xd5b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD5"
	.byte	0x4
	.2byte	0xd5c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD6"
	.byte	0x4
	.2byte	0xd5d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD7"
	.byte	0x4
	.2byte	0xd5e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD8"
	.byte	0x4
	.2byte	0xd5f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD9"
	.byte	0x4
	.2byte	0xd60
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD10"
	.byte	0x4
	.2byte	0xd61
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISD11"
	.byte	0x4
	.2byte	0xd62
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISDBITS"
	.byte	0x4
	.2byte	0xd63
	.4byte	0xe21
	.uleb128 0x4
	.asciz	"tagPORTDBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd68
	.4byte	0x1039
	.uleb128 0x5
	.asciz	"RD0"
	.byte	0x4
	.2byte	0xd69
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD1"
	.byte	0x4
	.2byte	0xd6a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD2"
	.byte	0x4
	.2byte	0xd6b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD3"
	.byte	0x4
	.2byte	0xd6c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD4"
	.byte	0x4
	.2byte	0xd6d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD5"
	.byte	0x4
	.2byte	0xd6e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD6"
	.byte	0x4
	.2byte	0xd6f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD7"
	.byte	0x4
	.2byte	0xd70
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD8"
	.byte	0x4
	.2byte	0xd71
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD9"
	.byte	0x4
	.2byte	0xd72
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD10"
	.byte	0x4
	.2byte	0xd73
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RD11"
	.byte	0x4
	.2byte	0xd74
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTDBITS"
	.byte	0x4
	.2byte	0xd75
	.4byte	0xf48
	.uleb128 0x4
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd9e
	.4byte	0x110a
	.uleb128 0x5
	.asciz	"TRISE0"
	.byte	0x4
	.2byte	0xd9f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE1"
	.byte	0x4
	.2byte	0xda0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE2"
	.byte	0x4
	.2byte	0xda1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE3"
	.byte	0x4
	.2byte	0xda2
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE4"
	.byte	0x4
	.2byte	0xda3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE5"
	.byte	0x4
	.2byte	0xda4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE6"
	.byte	0x4
	.2byte	0xda5
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE7"
	.byte	0x4
	.2byte	0xda6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISEBITS"
	.byte	0x4
	.2byte	0xda7
	.4byte	0x104b
	.uleb128 0x4
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xdac
	.4byte	0x11c3
	.uleb128 0x5
	.asciz	"RE0"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE1"
	.byte	0x4
	.2byte	0xdae
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE2"
	.byte	0x4
	.2byte	0xdaf
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE3"
	.byte	0x4
	.2byte	0xdb0
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE4"
	.byte	0x4
	.2byte	0xdb1
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE5"
	.byte	0x4
	.2byte	0xdb2
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE6"
	.byte	0x4
	.2byte	0xdb3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE7"
	.byte	0x4
	.2byte	0xdb4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTEBITS"
	.byte	0x4
	.2byte	0xdb5
	.4byte	0x111c
	.uleb128 0x4
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xdd6
	.4byte	0x1255
	.uleb128 0x5
	.asciz	"TRISF0"
	.byte	0x4
	.2byte	0xdd7
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF1"
	.byte	0x4
	.2byte	0xdd8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF3"
	.byte	0x4
	.2byte	0xdda
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF4"
	.byte	0x4
	.2byte	0xddb
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF5"
	.byte	0x4
	.2byte	0xddc
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISFBITS"
	.byte	0x4
	.2byte	0xddd
	.4byte	0x11d5
	.uleb128 0x4
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xde2
	.4byte	0x12d8
	.uleb128 0x5
	.asciz	"RF0"
	.byte	0x4
	.2byte	0xde3
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF1"
	.byte	0x4
	.2byte	0xde4
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF3"
	.byte	0x4
	.2byte	0xde6
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF4"
	.byte	0x4
	.2byte	0xde7
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF5"
	.byte	0x4
	.2byte	0xde8
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTFBITS"
	.byte	0x4
	.2byte	0xde9
	.4byte	0x1267
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xe70
	.4byte	0x137b
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x4
	.2byte	0xe71
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SAMP"
	.byte	0x4
	.2byte	0xe72
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ASAM"
	.byte	0x4
	.2byte	0xe73
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC"
	.byte	0x4
	.2byte	0xe75
	.4byte	0xe8
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM"
	.byte	0x4
	.2byte	0xe76
	.4byte	0xe8
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADSIDL"
	.byte	0x4
	.2byte	0xe78
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADON"
	.byte	0x4
	.2byte	0xe7a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xe7c
	.4byte	0x13e9
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0xe7e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC1"
	.byte	0x4
	.2byte	0xe7f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC2"
	.byte	0x4
	.2byte	0xe80
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM0"
	.byte	0x4
	.2byte	0xe81
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM1"
	.byte	0x4
	.2byte	0xe82
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.2byte	0xe6f
	.4byte	0x13fd
	.uleb128 0x9
	.4byte	0x12ea
	.uleb128 0x9
	.4byte	0x137b
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xe6e
	.4byte	0x141e
	.uleb128 0xa
	.4byte	0x13e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0xe85
	.4byte	0x13fd
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xf07
	.4byte	0x1591
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0xf08
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG1"
	.byte	0x4
	.2byte	0xf09
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG2"
	.byte	0x4
	.2byte	0xf0a
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG3"
	.byte	0x4
	.2byte	0xf0b
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG4"
	.byte	0x4
	.2byte	0xf0c
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG5"
	.byte	0x4
	.2byte	0xf0d
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG6"
	.byte	0x4
	.2byte	0xf0e
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG7"
	.byte	0x4
	.2byte	0xf0f
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG8"
	.byte	0x4
	.2byte	0xf10
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG9"
	.byte	0x4
	.2byte	0xf11
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG10"
	.byte	0x4
	.2byte	0xf12
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG11"
	.byte	0x4
	.2byte	0xf13
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG12"
	.byte	0x4
	.2byte	0xf14
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG13"
	.byte	0x4
	.2byte	0xf15
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG14"
	.byte	0x4
	.2byte	0xf16
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG15"
	.byte	0x4
	.2byte	0xf17
	.4byte	0xe8
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1PCFGBITS"
	.byte	0x4
	.2byte	0xf18
	.4byte	0x1432
	.uleb128 0xb
	.byte	0x3
	.byte	0x5
	.byte	0x38
	.4byte	0x168a
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x5
	.byte	0x39
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x5
	.byte	0x3a
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x5
	.byte	0x3f
	.4byte	0xc8
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"periodicService"
	.byte	0x5
	.byte	0x41
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"little_endian"
	.byte	0x5
	.byte	0x47
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"high_impedance"
	.byte	0x5
	.byte	0x4c
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"int16"
	.byte	0x5
	.byte	0x51
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"write_with_read"
	.byte	0x5
	.byte	0x56
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"command_error"
	.byte	0x5
	.byte	0x5b
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x5
	.byte	0x5d
	.4byte	0x15a5
	.uleb128 0xe
	.byte	0x2
	.byte	0x6
	.byte	0x1b
	.4byte	0x1709
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
	.byte	0x6
	.byte	0x34
	.4byte	0x1745
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
	.byte	0x7
	.byte	0xb4
	.4byte	0x17e0
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
	.byte	0x7
	.byte	0xe9
	.4byte	0x174e
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0xee
	.4byte	0x1829
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
	.byte	0x7
	.byte	0xf7
	.4byte	0x1808
	.uleb128 0xb
	.byte	0xc
	.byte	0x7
	.byte	0xf9
	.4byte	0x193a
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x7
	.byte	0xfa
	.4byte	0x193a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x7
	.byte	0xfb
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x7
	.byte	0xfc
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x7
	.byte	0xfd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x7
	.byte	0xfe
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x7
	.byte	0xff
	.4byte	0x1829
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.asciz	"bus_mode"
	.byte	0x7
	.2byte	0x100
	.4byte	0x17e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.asciz	"quiet"
	.byte	0x7
	.2byte	0x101
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"overflow"
	.byte	0x7
	.2byte	0x102
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"basic"
	.byte	0x7
	.2byte	0x104
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0xc8
	.uleb128 0x6
	.asciz	"bus_pirate_configuration_t"
	.byte	0x7
	.2byte	0x106
	.4byte	0x184a
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x3b
	.4byte	0x19b9
	.uleb128 0xd
	.asciz	"mode"
	.byte	0x1
	.byte	0x44
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"acknowledgment_pending"
	.byte	0x1
	.byte	0x49
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"to_eeprom"
	.byte	0x1
	.byte	0x50
	.4byte	0xc8
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"i2c_state_t"
	.byte	0x1
	.byte	0x54
	.4byte	0x1963
	.uleb128 0x12
	.asciz	"hardware_i2c_start"
	.byte	0x1
	.2byte	0x225
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.uleb128 0x12
	.asciz	"hardware_i2c_stop"
	.byte	0x1
	.2byte	0x238
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.asciz	"hardware_i2c_get_ack"
	.byte	0x1
	.2byte	0x24c
	.byte	0x1
	.4byte	0x1745
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.asciz	"hardware_i2c_send_ack"
	.byte	0x1
	.2byte	0x277
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1a6f
	.uleb128 0x15
	.asciz	"ack"
	.byte	0x1
	.2byte	0x277
	.4byte	0x1745
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.asciz	"hardware_i2c_write"
	.byte	0x1
	.2byte	0x28a
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x1aa6
	.uleb128 0x15
	.asciz	"value"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x1aa6
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.4byte	0xc8
	.uleb128 0x13
	.asciz	"hardware_i2c_read"
	.byte	0x1
	.2byte	0x2ba
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.uleb128 0x12
	.asciz	"hardware_i2c_setup"
	.byte	0x1
	.2byte	0x2cd
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.asciz	"handle_pending_ack"
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b2b
	.uleb128 0x15
	.asciz	"bus_bit"
	.byte	0x1
	.2byte	0x395
	.4byte	0x1b2b
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.4byte	0x1745
	.uleb128 0x17
	.asciz	"i2c_write_then_read"
	.byte	0x1
	.2byte	0x453
	.byte	0x1
	.4byte	0x1745
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0x1bf7
	.uleb128 0x18
	.asciz	"bytes_to_write"
	.byte	0x1
	.2byte	0x455
	.4byte	0x137
	.uleb128 0x19
	.asciz	"bytes_to_read"
	.byte	0x1
	.2byte	0x458
	.4byte	0x137
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.asciz	"i2c_address"
	.byte	0x1
	.2byte	0x46c
	.4byte	0xc8
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1bbe
	.uleb128 0x19
	.asciz	"index"
	.byte	0x1
	.2byte	0x485
	.4byte	0x137
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x1bdc
	.uleb128 0x19
	.asciz	"index"
	.byte	0x1
	.2byte	0x490
	.4byte	0x137
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x19
	.asciz	"index"
	.byte	0x1
	.2byte	0x4bd
	.4byte	0x137
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.asciz	"i2c_sniffer"
	.byte	0x1
	.2byte	0x32d
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x1cbc
	.uleb128 0x15
	.asciz	"interactive_mode"
	.byte	0x1
	.2byte	0x32d
	.4byte	0x1745
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.asciz	"old_sda"
	.byte	0x1
	.2byte	0x33d
	.4byte	0x1745
	.byte	0x1
	.byte	0x5b
	.uleb128 0x19
	.asciz	"old_scl"
	.byte	0x1
	.2byte	0x33e
	.4byte	0x1745
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.asciz	"new_sda"
	.byte	0x1
	.2byte	0x33f
	.4byte	0x1745
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.asciz	"new_scl"
	.byte	0x1
	.2byte	0x340
	.4byte	0x1745
	.byte	0x1
	.byte	0x59
	.uleb128 0x19
	.asciz	"collect_data"
	.byte	0x1
	.2byte	0x342
	.4byte	0x1745
	.byte	0x1
	.byte	0x5c
	.uleb128 0x19
	.asciz	"data_bits"
	.byte	0x1
	.2byte	0x343
	.4byte	0xc8
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x19
	.asciz	"data_value"
	.byte	0x1
	.2byte	0x344
	.4byte	0xc8
	.byte	0x2
	.byte	0x7f
	.sleb128 -17
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"i2c_read"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0xe8
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x1cec
	.uleb128 0x1d
	.asciz	"value"
	.byte	0x1
	.byte	0xbe
	.4byte	0xc8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"i2c_write"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	0xf8
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1d19
	.uleb128 0x1e
	.asciz	"c"
	.byte	0x1
	.byte	0xd4
	.4byte	0xf8
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_start"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_stop"
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_print_settings"
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"i2c_setup_prepare"
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1db2
	.uleb128 0x19
	.asciz	"HW"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xa4
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.asciz	"speed"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa4
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_setup_execute"
	.byte	0x1
	.2byte	0x16d
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_cleanup"
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"i2c_macro"
	.byte	0x1
	.2byte	0x194
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x1e27
	.uleb128 0x15
	.asciz	"c"
	.byte	0x1
	.2byte	0x194
	.4byte	0xf8
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.asciz	"i"
	.byte	0x1
	.2byte	0x195
	.4byte	0xa4
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_pins_state"
	.byte	0x1
	.2byte	0x221
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"binary_io_enter_i2c_mode"
	.byte	0x1
	.2byte	0x3b0
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0x1eca
	.uleb128 0x19
	.asciz	"inByte"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xd7
	.byte	0x5
	.byte	0x3
	.4byte	_inByte.8525
	.uleb128 0x19
	.asciz	"rawCommand"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xd7
	.byte	0x5
	.byte	0x3
	.4byte	_rawCommand.8526
	.uleb128 0x19
	.asciz	"i"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xd7
	.byte	0x5
	.byte	0x3
	.4byte	_i.8527
	.uleb128 0x18
	.asciz	"fw"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0xf8
	.uleb128 0x19
	.asciz	"fr"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0xf8
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x11d
	.4byte	0x1ed8
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x2ad
	.uleb128 0x22
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1c3
	.4byte	0x1eeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x3f1
	.uleb128 0x24
	.asciz	"I2C1RCV"
	.byte	0x4
	.2byte	0xa06
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xe8
	.uleb128 0x24
	.asciz	"I2C1TRN"
	.byte	0x4
	.2byte	0xa08
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1BRG"
	.byte	0x4
	.2byte	0xa0a
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1CON"
	.byte	0x4
	.2byte	0xa0c
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF2
	.byte	0x4
	.2byte	0xa1f
	.4byte	0x1f4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x543
	.uleb128 0x22
	.4byte	.LASF3
	.byte	0x4
	.2byte	0xa3d
	.4byte	0x1f5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x6c3
	.uleb128 0x24
	.asciz	"I2C1ADD"
	.byte	0x4
	.2byte	0xa40
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1MSK"
	.byte	0x4
	.2byte	0xa42
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xad3
	.4byte	0x1f95
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x86b
	.uleb128 0x24
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0xad8
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3RCV"
	.byte	0x4
	.2byte	0xc07
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3TRN"
	.byte	0x4
	.2byte	0xc09
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3BRG"
	.byte	0x4
	.2byte	0xc0b
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3CON"
	.byte	0x4
	.2byte	0xc0d
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xc20
	.4byte	0x2002
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x9be
	.uleb128 0x22
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xc3e
	.4byte	0x2015
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xb3e
	.uleb128 0x24
	.asciz	"I2C3ADD"
	.byte	0x4
	.2byte	0xc41
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3MSK"
	.byte	0x4
	.2byte	0xc43
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF7
	.byte	0x4
	.2byte	0xce4
	.4byte	0x204c
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xcc0
	.uleb128 0x22
	.4byte	.LASF8
	.byte	0x4
	.2byte	0xcfa
	.4byte	0x205f
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xe0f
	.uleb128 0x22
	.4byte	.LASF9
	.byte	0x4
	.2byte	0xd64
	.4byte	0x2072
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xf36
	.uleb128 0x22
	.4byte	.LASF10
	.byte	0x4
	.2byte	0xd76
	.4byte	0x2085
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x1039
	.uleb128 0x22
	.4byte	.LASF11
	.byte	0x4
	.2byte	0xda8
	.4byte	0x2098
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x110a
	.uleb128 0x22
	.4byte	.LASF12
	.byte	0x4
	.2byte	0xdb6
	.4byte	0x20ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x11c3
	.uleb128 0x22
	.4byte	.LASF13
	.byte	0x4
	.2byte	0xdde
	.4byte	0x20be
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x1255
	.uleb128 0x22
	.4byte	.LASF14
	.byte	0x4
	.2byte	0xdea
	.4byte	0x20d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x12d8
	.uleb128 0x22
	.4byte	.LASF15
	.byte	0x4
	.2byte	0xe86
	.4byte	0x20e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x141e
	.uleb128 0x22
	.4byte	.LASF16
	.byte	0x4
	.2byte	0xf19
	.4byte	0x20f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x1591
	.uleb128 0x1d
	.asciz	"i2c_state"
	.byte	0x1
	.byte	0x59
	.4byte	0x19b9
	.byte	0x5
	.byte	0x3
	.4byte	_i2c_state
	.uleb128 0x25
	.4byte	.LASF17
	.byte	0x1
	.byte	0x60
	.4byte	0x1940
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF18
	.byte	0x1
	.byte	0x61
	.4byte	0x168a
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	0xc8
	.4byte	0x213d
	.uleb128 0x27
	.4byte	0xf8
	.byte	0x2
	.byte	0x0
	.uleb128 0x1d
	.asciz	"HARDWARE_I2C_BRG_SPEEDS"
	.byte	0x1
	.byte	0x74
	.4byte	0x2162
	.byte	0x5
	.byte	0x3
	.4byte	_HARDWARE_I2C_BRG_SPEEDS
	.uleb128 0x16
	.4byte	0x212d
	.uleb128 0x22
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x11d
	.4byte	0x1ed8
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1c3
	.4byte	0x1eeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1RCV"
	.byte	0x4
	.2byte	0xa06
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1TRN"
	.byte	0x4
	.2byte	0xa08
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1BRG"
	.byte	0x4
	.2byte	0xa0a
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1CON"
	.byte	0x4
	.2byte	0xa0c
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF2
	.byte	0x4
	.2byte	0xa1f
	.4byte	0x1f4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF3
	.byte	0x4
	.2byte	0xa3d
	.4byte	0x1f5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1ADD"
	.byte	0x4
	.2byte	0xa40
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C1MSK"
	.byte	0x4
	.2byte	0xa42
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xad3
	.4byte	0x1f95
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"U1RXREG"
	.byte	0x4
	.2byte	0xad8
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3RCV"
	.byte	0x4
	.2byte	0xc07
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3TRN"
	.byte	0x4
	.2byte	0xc09
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3BRG"
	.byte	0x4
	.2byte	0xc0b
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3CON"
	.byte	0x4
	.2byte	0xc0d
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xc20
	.4byte	0x2002
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xc3e
	.4byte	0x2015
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3ADD"
	.byte	0x4
	.2byte	0xc41
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"I2C3MSK"
	.byte	0x4
	.2byte	0xc43
	.4byte	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF7
	.byte	0x4
	.2byte	0xce4
	.4byte	0x204c
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF8
	.byte	0x4
	.2byte	0xcfa
	.4byte	0x205f
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF9
	.byte	0x4
	.2byte	0xd64
	.4byte	0x2072
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF10
	.byte	0x4
	.2byte	0xd76
	.4byte	0x2085
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF11
	.byte	0x4
	.2byte	0xda8
	.4byte	0x2098
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF12
	.byte	0x4
	.2byte	0xdb6
	.4byte	0x20ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF13
	.byte	0x4
	.2byte	0xdde
	.4byte	0x20be
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF14
	.byte	0x4
	.2byte	0xdea
	.4byte	0x20d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF15
	.byte	0x4
	.2byte	0xe86
	.4byte	0x20e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF16
	.byte	0x4
	.2byte	0xf19
	.4byte	0x20f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF17
	.byte	0x1
	.byte	0x60
	.4byte	0x1940
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF18
	.byte	0x1
	.byte	0x61
	.4byte	0x168a
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
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xd5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x235a
	.4byte	0x1cbc
	.asciz	"i2c_read"
	.4byte	0x1cec
	.asciz	"i2c_write"
	.4byte	0x1d19
	.asciz	"i2c_start"
	.4byte	0x1d32
	.asciz	"i2c_stop"
	.4byte	0x1d4b
	.asciz	"i2c_print_settings"
	.4byte	0x1d6e
	.asciz	"i2c_setup_prepare"
	.4byte	0x1db2
	.asciz	"i2c_setup_execute"
	.4byte	0x1dd4
	.asciz	"i2c_cleanup"
	.4byte	0x1df0
	.asciz	"i2c_macro"
	.4byte	0x1e27
	.asciz	"i2c_pins_state"
	.4byte	0x1e46
	.asciz	"binary_io_enter_i2c_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x2e6
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x235a
	.4byte	0xc8
	.asciz	"uint8_t"
	.4byte	0xe8
	.asciz	"uint16_t"
	.4byte	0x137
	.asciz	"size_t"
	.4byte	0x170
	.asciz	"tagCNEN4BITS"
	.4byte	0x2ad
	.asciz	"CNEN4BITS"
	.4byte	0x2bf
	.asciz	"tagIFS1BITS"
	.4byte	0x3f1
	.asciz	"IFS1BITS"
	.4byte	0x402
	.asciz	"tagI2C1CONBITS"
	.4byte	0x543
	.asciz	"I2C1CONBITS"
	.4byte	0x6a1
	.asciz	"tagI2C1STATBITS"
	.4byte	0x6c3
	.asciz	"I2C1STATBITS"
	.4byte	0x84c
	.asciz	"tagU1STABITS"
	.4byte	0x86b
	.asciz	"U1STABITS"
	.4byte	0x87d
	.asciz	"tagI2C3CONBITS"
	.4byte	0x9be
	.asciz	"I2C3CONBITS"
	.4byte	0xb1c
	.asciz	"tagI2C3STATBITS"
	.4byte	0xb3e
	.asciz	"I2C3STATBITS"
	.4byte	0xb53
	.asciz	"tagTRISBBITS"
	.4byte	0xcc0
	.asciz	"TRISBBITS"
	.4byte	0xcd2
	.asciz	"tagPORTBBITS"
	.4byte	0xe0f
	.asciz	"PORTBBITS"
	.4byte	0xe21
	.asciz	"tagTRISDBITS"
	.4byte	0xf36
	.asciz	"TRISDBITS"
	.4byte	0xf48
	.asciz	"tagPORTDBITS"
	.4byte	0x1039
	.asciz	"PORTDBITS"
	.4byte	0x104b
	.asciz	"tagTRISEBITS"
	.4byte	0x110a
	.asciz	"TRISEBITS"
	.4byte	0x111c
	.asciz	"tagPORTEBITS"
	.4byte	0x11c3
	.asciz	"PORTEBITS"
	.4byte	0x11d5
	.asciz	"tagTRISFBITS"
	.4byte	0x1255
	.asciz	"TRISFBITS"
	.4byte	0x1267
	.asciz	"tagPORTFBITS"
	.4byte	0x12d8
	.asciz	"PORTFBITS"
	.4byte	0x13fd
	.asciz	"tagAD1CON1BITS"
	.4byte	0x141e
	.asciz	"AD1CON1BITS"
	.4byte	0x1432
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x1591
	.asciz	"AD1PCFGBITS"
	.4byte	0x168a
	.asciz	"mode_configuration_t"
	.4byte	0x17e0
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0x1829
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0x1940
	.asciz	"bus_pirate_configuration_t"
	.4byte	0x19b9
	.asciz	"i2c_state_t"
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
.LASF10:
	.asciz	"PORTDbits"
.LASF6:
	.asciz	"I2C3STATbits"
.LASF0:
	.asciz	"CNEN4bits"
.LASF15:
	.asciz	"AD1CON1bits"
.LASF7:
	.asciz	"TRISBbits"
.LASF11:
	.asciz	"TRISEbits"
.LASF2:
	.asciz	"I2C1CONbits"
.LASF3:
	.asciz	"I2C1STATbits"
.LASF8:
	.asciz	"PORTBbits"
.LASF17:
	.asciz	"bus_pirate_configuration"
.LASF12:
	.asciz	"PORTEbits"
.LASF1:
	.asciz	"IFS1bits"
.LASF18:
	.asciz	"mode_configuration"
.LASF13:
	.asciz	"TRISFbits"
.LASF14:
	.asciz	"PORTFbits"
.LASF9:
	.asciz	"TRISDbits"
.LASF16:
	.asciz	"AD1PCFGbits"
.LASF4:
	.asciz	"U1STAbits"
.LASF5:
	.asciz	"I2C3CONbits"
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
