	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\jtag.c"
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
	.type	_jtag_setup,@function
_jtag_setup:
.LFB28:
	.file 1 "../jtag.c"
	.loc 1 220 0
	.set ___PA___,1
	.loc 1 221 0
	bset.b	_TRISDbits,#3
	.loc 1 222 0
	bclr.b	_TRISDbits,#2
	.loc 1 223 0
	bclr.b	_TRISDbits,#1
	.loc 1 224 0
	bclr.b	_TRISDbits,#4
	.loc 1 225 0
	bclr.b	_PORTDbits,#3
	.loc 1 226 0
	bclr.b	_PORTDbits,#2
	.loc 1 227 0
	bclr.b	_PORTDbits,#1
	.loc 1 228 0
	bclr.b	_PORTDbits,#4
	.loc 1 229 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_jtag_setup, .-_jtag_setup
	.align	2
	.type	_jtag_data_high,@function
_jtag_data_high:
.LFB32:
	.loc 1 268 0
	.set ___PA___,1
	.loc 1 269 0
	mov	_jtag_settings,w0
	lsr	w0,#2,w0
	and.b	w0,#1,w0
	mov.b	w0,w1
	btg.b	w1,#0
	and	w1,#1,w1
	add	w1,w1,w1
	mov	_TRISDbits,w2
	bclr	w2,#1
	ior	w1,w2,w2
	mov	w2,_TRISDbits
	.loc 1 270 0
	and	w0,#1,w0
	add	w0,w0,w0
	mov	_PORTDbits,w1
	bclr	w1,#1
	ior	w0,w1,w1
	mov	w1,_PORTDbits
	.loc 1 271 0
	mov	#20,w0
	call	_bp_delay_us
	.loc 1 272 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_jtag_data_high, .-_jtag_data_high
	.align	2
	.type	_jtag_clock_high,@function
_jtag_clock_high:
.LFB35:
	.loc 1 287 0
	.set ___PA___,1
	.loc 1 288 0
	mov	_jtag_settings,w0
	lsr	w0,#2,w0
	and.b	w0,#1,w0
	mov.b	w0,w1
	btg.b	w1,#0
	and	w1,#1,w1
	sl	w1,#2,w1
	mov	_TRISDbits,w2
	bclr	w2,#2
	ior	w1,w2,w2
	mov	w2,_TRISDbits
	.loc 1 289 0
	and	w0,#1,w0
	sl	w0,#2,w0
	mov	_PORTDbits,w1
	bclr	w1,#2
	ior	w0,w1,w1
	mov	w1,_PORTDbits
	.loc 1 290 0
	mov	#100,w0
	call	_bp_delay_us
	.loc 1 291 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_jtag_clock_high, .-_jtag_clock_high
	.align	2
	.type	_jtag_tms_high,@function
_jtag_tms_high:
.LFB37:
	.loc 1 299 0
	.set ___PA___,1
	.loc 1 300 0
	mov	_jtag_settings,w0
	lsr	w0,#2,w0
	and.b	w0,#1,w0
	mov.b	w0,w1
	btg.b	w1,#0
	and	w1,#1,w1
	sl	w1,#4,w1
	mov	_TRISDbits,w2
	bclr	w2,#4
	ior	w1,w2,w2
	mov	w2,_TRISDbits
	.loc 1 301 0
	and	w0,#1,w0
	sl	w0,#4,w0
	mov	_PORTDbits,w1
	bclr	w1,#4
	ior	w0,w1,w1
	mov	w1,_PORTDbits
	.loc 1 302 0
	mov	#20,w0
	call	_bp_delay_us
	.loc 1 303 0
	return	
	.set ___PA___,0
.LFE37:
	.size	_jtag_tms_high, .-_jtag_tms_high
	.align	2
	.type	_jtag_data_low,@function
_jtag_data_low:
.LFB33:
	.loc 1 274 0
	.set ___PA___,1
	.loc 1 275 0
	bclr.b	_PORTDbits,#1
	.loc 1 276 0
	bclr.b	_TRISDbits,#1
	.loc 1 277 0
	mov	#20,w0
	call	_bp_delay_us
	.loc 1 278 0
	return	
	.set ___PA___,0
.LFE33:
	.size	_jtag_data_low, .-_jtag_data_low
	.align	2
	.type	_jtag_clock_low,@function
_jtag_clock_low:
.LFB36:
	.loc 1 293 0
	.set ___PA___,1
	.loc 1 294 0
	bclr.b	_PORTDbits,#2
	.loc 1 295 0
	bclr.b	_TRISDbits,#2
	.loc 1 296 0
	mov	#100,w0
	call	_bp_delay_us
	.loc 1 297 0
	return	
	.set ___PA___,0
.LFE36:
	.size	_jtag_clock_low, .-_jtag_clock_low
	.align	2
	.type	_jtag_clock_ticks,@function
_jtag_clock_ticks:
.LFB34:
	.loc 1 280 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov	w0,w9
.LBB2:
	.loc 1 281 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L7
	clr	w8
.L9:
	.loc 1 282 0
	call	_jtag_clock_high
	.loc 1 283 0
	call	_jtag_clock_low
	.loc 1 281 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L9
.L7:
.LBE2:
	.loc 1 285 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE34:
	.size	_jtag_clock_ticks, .-_jtag_clock_ticks
	.align	2
	.type	_jtag_read_bit,@function
_jtag_read_bit:
.LFB31:
	.loc 1 261 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI1:
	.loc 1 262 0
	call	_jtag_clock_high
	.loc 1 263 0
	mov	_PORTDbits,w8
	lsr	w8,#3,w8
	and.b	w8,#1,w8
	.loc 1 264 0
	call	_jtag_clock_low
	.loc 1 266 0
	mov.b	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE31:
	.size	_jtag_read_bit, .-_jtag_read_bit
	.align	2
	.type	_jtag_write_bit,@function
_jtag_write_bit:
.LFB30:
	.loc 1 249 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI2:
	.loc 1 250 0
	cp0.b	w0
	.set ___BP___,61
	bra	nz,.L13
	.loc 1 251 0
	call	_jtag_data_low
	bra	.L14
.L13:
	.loc 1 253 0
	call	_jtag_data_high
.L14:
	.loc 1 255 0
	call	_jtag_clock_high
	.loc 1 256 0
	mov	_PORTDbits,w8
	lsr	w8,#3,w8
	and.b	w8,#1,w8
	.loc 1 257 0
	call	_jtag_clock_low
	.loc 1 259 0
	mov.b	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE30:
	.size	_jtag_write_bit, .-_jtag_write_bit
	.align	2
	.type	_jtag_read_byte,@function
_jtag_read_byte:
.LFB29:
	.loc 1 231 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	.loc 1 232 0
	call	_jtag_clock_low
	.loc 1 234 0
	mov	#_jtag_settings,w0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	.set ___BP___,71
	bra	z,.L16
	.loc 1 235 0
	mov	#_jtag_settings,w8
	mov	[w8],w0
	sl	w0,#11,w0
	lsr	w0,#15,w0
	call	_jtag_write_bit
	.loc 1 236 0
	bclr.b	[w8],#3
.L16:
	.loc 1 231 0
	mov	#8,w8
	clr.b	w9
.L17:
.LBB3:
	.loc 1 241 0
	call	_jtag_clock_high
	.loc 1 242 0
	mov	_PORTDbits,w1
	ze	w9,w0
	lsr	w0,w0
	sl	w1,#4,w9
	and	#128,w9
	ior.b	w0,w9,w9
	.loc 1 243 0
	call	_jtag_clock_low
	dec	w8,w8
	.loc 1 240 0
	.set ___BP___,88
	bra	nz,.L17
.LBE3:
	.loc 1 247 0
	mov.b	w9,w0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_jtag_read_byte, .-_jtag_read_byte
	.align	2
	.type	_jtag_tms_low,@function
_jtag_tms_low:
.LFB38:
	.loc 1 305 0
	.set ___PA___,1
	.loc 1 306 0
	bclr.b	_PORTDbits,#4
	.loc 1 307 0
	bclr.b	_TRISDbits,#4
	.loc 1 308 0
	mov	#20,w0
	call	_bp_delay_us
	.loc 1 309 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_jtag_tms_low, .-_jtag_tms_low
	.align	2
	.type	_jtag_reset,@function
_jtag_reset:
.LFB26:
	.loc 1 183 0
	.set ___PA___,1
	.loc 1 184 0
	call	_jtag_tms_high
	.loc 1 185 0
	mov	#10,w0
	call	_jtag_clock_ticks
	.loc 1 186 0
	call	_jtag_tms_low
	.loc 1 187 0
	mov	#_jtag_settings,w0
	mov.b	#-4,w1
	and.b	w1,[w0],[w0]
	.loc 1 188 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_jtag_reset, .-_jtag_reset
	.align	2
	.type	_jtag_set_state,@function
_jtag_set_state:
.LFB27:
	.loc 1 190 0
	.set ___PA___,1
	.loc 1 191 0
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L24
	sub.b	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L25
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L21
	.loc 1 196 0
	call	_jtag_reset
	.loc 1 197 0
	bra	.L21
.L25:
	.loc 1 200 0
	call	_jtag_tms_high
	.loc 1 201 0
	mov	#1,w0
	call	_jtag_clock_ticks
	.loc 1 202 0
	call	_jtag_tms_low
	.loc 1 203 0
	mov	#2,w0
	call	_jtag_clock_ticks
	.loc 1 204 0
	mov	#_jtag_settings,w0
	mov.b	[w0],w1
	ior.b	w1,#3,[w0]
	.loc 1 205 0
	bra	.L21
.L24:
	.loc 1 208 0
	call	_jtag_tms_high
	.loc 1 209 0
	mov	#2,w0
	call	_jtag_clock_ticks
	.loc 1 210 0
	call	_jtag_tms_low
	.loc 1 211 0
	mov	#2,w0
	call	_jtag_clock_ticks
	.loc 1 212 0
	mov	#_jtag_settings,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#1
	mov.b	w1,[w0]
.L21:
	.loc 1 218 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_jtag_set_state, .-_jtag_set_state
	.align	2
	.type	_jtag_leave_state,@function
_jtag_leave_state:
.LFB25:
	.loc 1 143 0
	.set ___PA___,1
	.loc 1 144 0
	mov	_jtag_settings,w0
	and	w0,#3,w0
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L29
	sub	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L30
	cp0	w0
	.set ___BP___,50
	bra	nz,.L26
	.loc 1 149 0
	call	_jtag_tms_low
	.loc 1 150 0
	mov	#1,w0
	call	_jtag_clock_ticks
	.loc 1 151 0
	mov	#_jtag_settings,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#0
	mov.b	w1,[w0]
	.loc 1 152 0
	bra	.L26
.L29:
	.loc 1 155 0
	mov	#_jtag_settings,w0
	mov.b	[w0],w0
	btst	w0,#3
	.set ___BP___,39
	bra	z,.L31
	.loc 1 156 0
	btst	w0,#4
	.set ___BP___,50
	bra	z,.L32
	.loc 1 157 0
	call	_jtag_data_high
	bra	.L33
.L32:
	.loc 1 159 0
	call	_jtag_data_low
.L33:
	.loc 1 161 0
	mov	#_jtag_settings,w0
	bclr.b	[w0],#3
.L31:
	.loc 1 163 0
	call	_jtag_tms_high
	.loc 1 164 0
	mov	#2,w0
	call	_jtag_clock_ticks
	.loc 1 165 0
	call	_jtag_tms_low
	.loc 1 166 0
	mov	#1,w0
	call	_jtag_clock_ticks
	.loc 1 167 0
	mov	#_jtag_settings,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#0
	mov.b	w1,[w0]
	.loc 1 168 0
	bra	.L26
.L30:
	.loc 1 171 0
	call	_jtag_tms_high
	.loc 1 172 0
	mov	#2,w0
	call	_jtag_clock_ticks
	.loc 1 173 0
	call	_jtag_tms_low
	.loc 1 174 0
	mov	#1,w0
	call	_jtag_clock_ticks
	.loc 1 175 0
	mov	#_jtag_settings,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#0
	mov.b	w1,[w0]
.L26:
	.loc 1 181 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_jtag_leave_state, .-_jtag_leave_state
	.align	2
	.global	_jtag	; export
	.type	_jtag,@function
_jtag:
.LFB24:
	.loc 1 75 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	.loc 1 76 0
	call	_jtag_setup
	.loc 1 77 0
	mov	#_jtag_settings,w0
	mov.b	[w0],w2
	bset.b	w2,#2
	.loc 1 79 0
	mov.b	#-25,w1
	and.b	w2,w1,[w0]
.LBB4:
.LBB5:
	.loc 1 114 0
	mov	#2,w10
.LBB6:
	.loc 1 115 0
	clr	w11
.L44:
.LBE6:
.LBE5:
	.loc 1 82 0
	call	_user_serial_read_byte
	.loc 1 84 0
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L38
	sub.b	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L39
	sub.b	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L44
	.loc 1 87 0
	call	_jtag_reset
	.loc 1 88 0
	call	_jtag_leave_state
	.loc 1 89 0
	bra	.L44
.L38:
.LBB8:
	.loc 1 92 0
	call	_jtag_reset
	.loc 1 93 0
	call	_jtag_data_high
	.loc 1 96 0
	call	_jtag_leave_state
	.loc 1 97 0
	mov.b	#2,w0
	call	_jtag_set_state
	.loc 1 98 0
	mov	#255,w0
	call	_jtag_clock_ticks
	.loc 1 99 0
	mov	#255,w0
	call	_jtag_clock_ticks
	.loc 1 100 0
	call	_jtag_leave_state
	.loc 1 101 0
	mov.b	#3,w0
	call	_jtag_set_state
	.loc 1 103 0
	call	_jtag_read_bit
	.loc 1 104 0
	ze	w0,w9
	dec	w9,w9
	lsr	w9,#15,w9
	.loc 1 109 0
	call	_jtag_leave_state
	.loc 1 110 0
	call	_jtag_reset
	.loc 1 112 0
	call	_jtag_leave_state
	.loc 1 113 0
	mov.b	#3,w0
	call	_jtag_set_state
	.loc 1 114 0
	sl	w9,w10,w0
	call	_user_serial_transmit_character
.LBB7:
	.loc 1 115 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L41
	mov	w11,w8
.L42:
	.loc 1 116 0
	call	_jtag_read_byte
	call	_user_serial_transmit_character
	.loc 1 117 0
	call	_jtag_read_byte
	call	_user_serial_transmit_character
	.loc 1 118 0
	call	_jtag_read_byte
	call	_user_serial_transmit_character
	.loc 1 119 0
	call	_jtag_read_byte
	call	_user_serial_transmit_character
	.loc 1 115 0
	inc	w8,w8
	sub	w8,w9,[w15]
	.set ___BP___,91
	bra	ltu,.L42
.L41:
.LBE7:
	.loc 1 121 0
	call	_jtag_leave_state
	.loc 1 122 0
	bra	.L44
.L39:
.LBE8:
	.loc 1 128 0
	call	_jtag_data_low
	.loc 1 129 0
	call	_jtag_clock_low
	.loc 1 130 0
	call	_jtag_tms_low
	.loc 1 131 0
	call	_xsvf_setup
	.loc 1 132 0
	call	_xsvfExecute
	call	_user_serial_transmit_character
	bra	.L44
.LBE4:
.LFE24:
	.size	_jtag, .-_jtag
	.section	.bss,bss
	.align	2
	.type	_jtag_settings,@object
	.size	_jtag_settings, 1
_jtag_settings:
	.skip	1
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE28:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stddef.h"
	.file 4 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.section	.debug_info,info
	.4byte	0x105d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../jtag.c"
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
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0x31
	.4byte	0xf9
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
	.4byte	0xf9
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
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xcd2
	.4byte	0x2de
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0xcd3
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x171
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xce8
	.4byte	0x42d
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x4
	.2byte	0xce9
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x2f0
	.uleb128 0x4
	.asciz	"tagTRISDBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd56
	.4byte	0x554
	.uleb128 0x5
	.asciz	"TRISD0"
	.byte	0x4
	.2byte	0xd57
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x43f
	.uleb128 0x4
	.asciz	"tagPORTDBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd68
	.4byte	0x657
	.uleb128 0x5
	.asciz	"RD0"
	.byte	0x4
	.2byte	0xd69
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x566
	.uleb128 0x4
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xd9e
	.4byte	0x728
	.uleb128 0x5
	.asciz	"TRISE0"
	.byte	0x4
	.2byte	0xd9f
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x669
	.uleb128 0x4
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xdac
	.4byte	0x7e1
	.uleb128 0x5
	.asciz	"RE0"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x73a
	.uleb128 0x4
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xdd6
	.4byte	0x873
	.uleb128 0x5
	.asciz	"TRISF0"
	.byte	0x4
	.2byte	0xdd7
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x7f3
	.uleb128 0x4
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xde2
	.4byte	0x8f6
	.uleb128 0x5
	.asciz	"RF0"
	.byte	0x4
	.2byte	0xde3
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x885
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0xe70
	.4byte	0x999
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x4
	.2byte	0xe71
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xa07
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0xe7e
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xa1b
	.uleb128 0x9
	.4byte	0x908
	.uleb128 0x9
	.4byte	0x999
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xe6e
	.4byte	0xa3c
	.uleb128 0xa
	.4byte	0xa07
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0xe85
	.4byte	0xa1b
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xf07
	.4byte	0xbaf
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0xf08
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xa50
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x42
	.4byte	0xc22
	.uleb128 0xc
	.asciz	"state"
	.byte	0x1
	.byte	0x43
	.4byte	0xc9
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"hiz"
	.byte	0x1
	.byte	0x44
	.4byte	0xc9
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"bit_pending"
	.byte	0x1
	.byte	0x45
	.4byte	0xc9
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"delayed_bit"
	.byte	0x1
	.byte	0x46
	.4byte	0xc9
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"jtag_settings_t"
	.byte	0x1
	.byte	0x47
	.4byte	0xbc3
	.uleb128 0xd
	.asciz	"jtag_setup"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0xe
	.asciz	"jtag_data_high"
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0xe
	.asciz	"jtag_clock_high"
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0xe
	.asciz	"jtag_tms_high"
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.uleb128 0xe
	.asciz	"jtag_data_low"
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0xe
	.asciz	"jtag_clock_low"
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.asciz	"jtag_clock_ticks"
	.byte	0x1
	.2byte	0x118
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0xd35
	.uleb128 0x10
	.asciz	"ticks"
	.byte	0x1
	.2byte	0x118
	.4byte	0x138
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x12
	.asciz	"tick"
	.byte	0x1
	.2byte	0x119
	.4byte	0x138
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.asciz	"jtag_read_bit"
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	0xc9
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0xd67
	.uleb128 0x14
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x107
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x15
	.asciz	"jtag_write_bit"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.4byte	0xc9
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0xda8
	.uleb128 0x16
	.asciz	"value"
	.byte	0x1
	.byte	0xf9
	.4byte	0xda8
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x100
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x17
	.4byte	0xdad
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x15
	.asciz	"jtag_read_byte"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.4byte	0xc9
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0xe06
	.uleb128 0x18
	.asciz	"value"
	.byte	0x1
	.byte	0xef
	.4byte	0xc9
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x19
	.asciz	"bit_index"
	.byte	0x1
	.byte	0xf0
	.4byte	0x138
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.asciz	"jtag_tms_low"
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.uleb128 0xd
	.asciz	"jtag_reset"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.asciz	"jtag_set_state"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0xe70
	.uleb128 0x16
	.asciz	"new_state"
	.byte	0x1
	.byte	0xbe
	.4byte	0xe70
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.4byte	0xc9
	.uleb128 0xd
	.asciz	"jtag_leave_state"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.byte	0x1
	.asciz	"jtag"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0xefb
	.uleb128 0x11
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x18
	.asciz	"cmd"
	.byte	0x1
	.byte	0x52
	.4byte	0xc9
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x19
	.asciz	"words"
	.byte	0x1
	.byte	0x66
	.4byte	0xe9
	.uleb128 0x11
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x18
	.asciz	"word_counter"
	.byte	0x1
	.byte	0x73
	.4byte	0x138
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF1
	.byte	0x4
	.2byte	0xce4
	.4byte	0xf09
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x2de
	.uleb128 0x1c
	.4byte	.LASF2
	.byte	0x4
	.2byte	0xcfa
	.4byte	0xf1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x42d
	.uleb128 0x1c
	.4byte	.LASF3
	.byte	0x4
	.2byte	0xd64
	.4byte	0xf2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x554
	.uleb128 0x1c
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xd76
	.4byte	0xf42
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x657
	.uleb128 0x1c
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xda8
	.4byte	0xf55
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x728
	.uleb128 0x1c
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xdb6
	.4byte	0xf68
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x7e1
	.uleb128 0x1c
	.4byte	.LASF7
	.byte	0x4
	.2byte	0xdde
	.4byte	0xf7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x873
	.uleb128 0x1c
	.4byte	.LASF8
	.byte	0x4
	.2byte	0xdea
	.4byte	0xf8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x8f6
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x4
	.2byte	0xe86
	.4byte	0xfa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0xa3c
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x4
	.2byte	0xf19
	.4byte	0xfb4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0xbaf
	.uleb128 0x18
	.asciz	"jtag_settings"
	.byte	0x1
	.byte	0x49
	.4byte	0xc22
	.byte	0x5
	.byte	0x3
	.4byte	_jtag_settings
	.uleb128 0x1c
	.4byte	.LASF1
	.byte	0x4
	.2byte	0xce4
	.4byte	0xf09
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF2
	.byte	0x4
	.2byte	0xcfa
	.4byte	0xf1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF3
	.byte	0x4
	.2byte	0xd64
	.4byte	0xf2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF4
	.byte	0x4
	.2byte	0xd76
	.4byte	0xf42
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF5
	.byte	0x4
	.2byte	0xda8
	.4byte	0xf55
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF6
	.byte	0x4
	.2byte	0xdb6
	.4byte	0xf68
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF7
	.byte	0x4
	.2byte	0xdde
	.4byte	0xf7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF8
	.byte	0x4
	.2byte	0xdea
	.4byte	0xf8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x4
	.2byte	0xe86
	.4byte	0xfa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x4
	.2byte	0xf19
	.4byte	0xfb4
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x17
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1061
	.4byte	0xe94
	.asciz	"jtag"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x184
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1061
	.4byte	0xc9
	.asciz	"uint8_t"
	.4byte	0xe9
	.asciz	"uint16_t"
	.4byte	0x138
	.asciz	"size_t"
	.4byte	0x171
	.asciz	"tagTRISBBITS"
	.4byte	0x2de
	.asciz	"TRISBBITS"
	.4byte	0x2f0
	.asciz	"tagPORTBBITS"
	.4byte	0x42d
	.asciz	"PORTBBITS"
	.4byte	0x43f
	.asciz	"tagTRISDBITS"
	.4byte	0x554
	.asciz	"TRISDBITS"
	.4byte	0x566
	.asciz	"tagPORTDBITS"
	.4byte	0x657
	.asciz	"PORTDBITS"
	.4byte	0x669
	.asciz	"tagTRISEBITS"
	.4byte	0x728
	.asciz	"TRISEBITS"
	.4byte	0x73a
	.asciz	"tagPORTEBITS"
	.4byte	0x7e1
	.asciz	"PORTEBITS"
	.4byte	0x7f3
	.asciz	"tagTRISFBITS"
	.4byte	0x873
	.asciz	"TRISFBITS"
	.4byte	0x885
	.asciz	"tagPORTFBITS"
	.4byte	0x8f6
	.asciz	"PORTFBITS"
	.4byte	0xa1b
	.asciz	"tagAD1CON1BITS"
	.4byte	0xa3c
	.asciz	"AD1CON1BITS"
	.4byte	0xa50
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xbaf
	.asciz	"AD1PCFGBITS"
	.4byte	0xc22
	.asciz	"jtag_settings_t"
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
.LASF6:
	.asciz	"PORTEbits"
.LASF9:
	.asciz	"AD1CON1bits"
.LASF8:
	.asciz	"PORTFbits"
.LASF3:
	.asciz	"TRISDbits"
.LASF5:
	.asciz	"TRISEbits"
.LASF2:
	.asciz	"PORTBbits"
.LASF7:
	.asciz	"TRISFbits"
.LASF0:
	.asciz	"input_bit"
.LASF10:
	.asciz	"AD1PCFGbits"
.LASF4:
	.asciz	"PORTDbits"
.LASF1:
	.asciz	"TRISBbits"
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
