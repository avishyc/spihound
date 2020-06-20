	.file "C:\\Users\\avish\\Workspace\\Firmware\\busPirate.X\\..\\jtag\\micro.c"
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
	.global	_xsvfDoIllegalCmd	; export
	.type	_xsvfDoIllegalCmd,@function
_xsvfDoIllegalCmd:
.LFB33:
	.file 1 "../jtag/micro.c"
	.loc 1 958 0
	.set ___PA___,1
	mov	w0,w1
	.loc 1 964 0
	mov	#4,w0
	mov	w0,[w1+6]
	.loc 1 966 0
	return	
	.set ___PA___,0
.LFE33:
	.size	_xsvfDoIllegalCmd, .-_xsvfDoIllegalCmd
	.align	2
	.global	_xsvfDoXCOMPLETE	; export
	.type	_xsvfDoXCOMPLETE,@function
_xsvfDoXCOMPLETE:
.LFB34:
	.loc 1 976 0
	.set ___PA___,1
	.loc 1 977 0
	mov.b	#1,w1
	mov.b	w1,[w0]
	.loc 1 979 0
	clr	w0
	return	
	.set ___PA___,0
.LFE34:
	.size	_xsvfDoXCOMPLETE, .-_xsvfDoXCOMPLETE
	.align	2
	.global	_xsvfDoXCOMMENT	; export
	.type	_xsvfDoXCOMMENT,@function
_xsvfDoXCOMMENT:
.LFB49:
	.loc 1 1455 0
	.set ___PA___,1
	lnk	#2
.LCFI0:
	mov	w8,[w15++]
.LCFI1:
	mov	w0,w8
.L4:
	.loc 1 1467 0
	sub	w15,#4,w0
	call	_readByte
	.loc 1 1472 0
	mov.b	[w15-4],w0
	cp0.b	w0
	.set ___BP___,86
	bra	nz,.L4
	.loc 1 1474 0
	clr	w0
	mov	w0,[w8+6]
	.loc 1 1477 0
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE49:
	.size	_xsvfDoXCOMMENT, .-_xsvfDoXCOMMENT
	.align	2
	.global	_xsvfDoXENDXR	; export
	.type	_xsvfDoXENDXR,@function
_xsvfDoXENDXR:
.LFB48:
	.loc 1 1398 0
	.set ___PA___,1
	lnk	#2
.LCFI2:
	mov	w8,[w15++]
.LCFI3:
	mov	w0,w8
	.loc 1 1403 0
	sub	w15,#4,w0
	call	_readByte
	.loc 1 1404 0
	mov.b	[w15-4],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L7
	.loc 1 1411 0
	mov.b	[w8+1],w1
	sub.b	w1,#19,[w15]
	.set ___BP___,72
	bra	nz,.L8
	.loc 1 1413 0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L9
	.loc 1 1415 0
	mov.b	#1,w0
	mov.b	w0,[w8+9]
	clr	w0
	bra	.L10
.L9:
	.loc 1 1419 0
	mov.b	#13,w0
	mov.b	w0,[w8+9]
	clr	w0
	bra	.L10
.L8:
	.loc 1 1426 0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L11
	.loc 1 1428 0
	mov.b	#1,w0
	mov.b	w0,[w8+10]
	clr	w0
	bra	.L10
.L11:
	.loc 1 1432 0
	mov.b	#6,w0
	mov.b	w0,[w8+10]
	clr	w0
	bra	.L10
.L7:
	.loc 1 1441 0
	mov	#5,w0
	mov	w0,[w8+6]
.L10:
	.loc 1 1444 0
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE48:
	.size	_xsvfDoXENDXR, .-_xsvfDoXENDXR
	.align	2
	.global	_xsvfDoXREPEAT	; export
	.type	_xsvfDoXREPEAT,@function
_xsvfDoXREPEAT:
.LFB40:
	.loc 1 1138 0
	.set ___PA___,1
	.loc 1 1139 0
	add	w0,#11,w0
	call	_readByte
	.loc 1 1143 0
	clr	w0
	return	
	.set ___PA___,0
.LFE40:
	.size	_xsvfDoXREPEAT, .-_xsvfDoXREPEAT
	.align	2
	.global	_xsvfDoXSETSDRMASKS	; export
	.type	_xsvfDoXSETSDRMASKS,@function
_xsvfDoXSETSDRMASKS:
.LFB43:
	.loc 1 1209 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	mov	w0,w8
	.loc 1 1211 0
	mov	[w8+20],w1
	mov	#238,w0
	add	w0,w8,w0
	call	_readVal
	.loc 1 1213 0
	mov	[w8+20],w1
	mov	#292,w0
	add	w0,w8,w0
	call	_readVal
	.loc 1 1223 0
	clr	w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_xsvfDoXSETSDRMASKS, .-_xsvfDoXSETSDRMASKS
	.align	2
	.global	_xsvfDoXTDOMASK	; export
	.type	_xsvfDoXTDOMASK,@function
_xsvfDoXTDOMASK:
.LFB35:
	.loc 1 989 0
	.set ___PA___,1
	.loc 1 990 0
	mov	[w0+20],w1
	add	#184,w0
	call	_readVal
	.loc 1 995 0
	clr	w0
	return	
	.set ___PA___,0
.LFE35:
	.size	_xsvfDoXTDOMASK, .-_xsvfDoXTDOMASK
	.align	2
	.global	_xsvfDoXRUNTEST	; export
	.type	_xsvfDoXRUNTEST,@function
_xsvfDoXRUNTEST:
.LFB39:
	.loc 1 1123 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI5:
	mov	w0,w9
	.loc 1 1124 0
	add	w9,#22,w8
	mov	#4,w1
	mov	w8,w0
	call	_readVal
	.loc 1 1125 0
	mov	w8,w0
	call	_value
	mov	w0,[w9+12]
	mov	w1,[w9+14]
	.loc 1 1128 0
	clr	w0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE39:
	.size	_xsvfDoXRUNTEST, .-_xsvfDoXRUNTEST
	.align	2
	.global	_xsvfInfoInit	; export
	.type	_xsvfInfoInit,@function
_xsvfInfoInit:
.LFB24:
	.loc 1 333 0
	.set ___PA___,1
	.loc 1 337 0
	clr.b	w4
	mov.b	w4,[w0]
	.loc 1 338 0
	mov.b	w4,[w0+1]
	.loc 1 339 0
	mul.uu	w2,#0,w2
	mov	w2,[w0+2]
	mov	w3,[w0+4]
	.loc 1 340 0
	clr	w1
	mov	w1,[w0+6]
	.loc 1 341 0
	mov.b	w1,[w0+11]
	.loc 1 342 0
	mov.b	w4,[w0+8]
	.loc 1 343 0
	mov.b	#1,w4
	mov.b	w4,[w0+9]
	.loc 1 344 0
	mov.b	w4,[w0+10]
	.loc 1 345 0
	mov	w2,[w0+16]
	mov	w3,[w0+18]
	.loc 1 346 0
	mov	w1,[w0+20]
	.loc 1 347 0
	mov	w2,[w0+12]
	mov	w3,[w0+14]
	.loc 1 350 0
	mov	w1,w0
	return	
	.set ___PA___,0
.LFE24:
	.size	_xsvfInfoInit, .-_xsvfInfoInit
	.align	2
	.global	_xsvfInfoCleanup	; export
	.type	_xsvfInfoCleanup,@function
_xsvfInfoCleanup:
.LFB25:
	.loc 1 359 0
	.set ___PA___,1
	.loc 1 360 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_xsvfInfoCleanup, .-_xsvfInfoCleanup
	.align	2
	.global	_xsvfGetAsNumBytes	; export
	.type	_xsvfGetAsNumBytes,@function
_xsvfGetAsNumBytes:
.LFB26:
	.loc 1 370 0
	.set ___PA___,1
	.loc 1 371 0
	add	w0,#7,w2
	addc	w1,#0,w3
	.set ___BP___,79
	bra	nn,.L19
	add	w2,#7,w2
	addc	w3,#0,w3
.L19:
	sl	w3,#13,w4
	lsr	w2,#3,w0
	ior	w4,w0,w0
	.loc 1 372 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_xsvfGetAsNumBytes, .-_xsvfGetAsNumBytes
	.align	2
	.global	_xsvfDoXSDRSIZE	; export
	.type	_xsvfDoXSDRSIZE,@function
_xsvfDoXSDRSIZE:
.LFB41:
	.loc 1 1153 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI6:
	mov	w0,w9
	.loc 1 1156 0
	add	w9,#22,w8
	mov	#4,w1
	mov	w8,w0
	call	_readVal
	.loc 1 1157 0
	mov	w8,w0
	call	_value
	mov	w0,[w9+16]
	mov	w1,[w9+18]
	.loc 1 1158 0
	call	_xsvfGetAsNumBytes
	mov	w0,[w9+20]
	.loc 1 1155 0
	clr	w1
	.loc 1 1160 0
	mov	#50,w2
	sub	w0,w2,[w15]
	.set ___BP___,33
	bra	le,.L21
	.loc 1 1163 0
	mov	#6,w1
	mov	w1,[w9+6]
.L21:
	.loc 1 1166 0
	mov	w1,w0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE41:
	.size	_xsvfDoXSDRSIZE, .-_xsvfDoXSDRSIZE
	.align	2
	.global	_xsvfTmsTransition	; export
	.type	_xsvfTmsTransition,@function
_xsvfTmsTransition:
.LFB27:
	.loc 1 382 0
	.set ___PA___,1
	.loc 1 383 0
	mov	w0,w1
	mov	#1,w0
	call	_setPort
	.loc 1 384 0
	mul.uu	w0, #0, w0
	call	_setPort
	.loc 1 385 0
	mov	#1,w1
	clr	w0
	call	_setPort
	.loc 1 386 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_xsvfTmsTransition, .-_xsvfTmsTransition
	.align	2
	.global	_xsvfGotoTapState	; export
	.type	_xsvfGotoTapState,@function
_xsvfGotoTapState:
.LFB28:
	.loc 1 403 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI7:
	mov.d	w10,[w15++]
.LCFI8:
	mov.d	w12,[w15++]
.LCFI9:
	mov	w0,w10
	mov.b	w1,w8
	.loc 1 408 0
	cp0.b	w8
	.set ___BP___,71
	bra	nz,.L25
	.loc 1 411 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 412 0
	clr	w11
	.loc 1 414 0
	clr	w8
	.loc 1 415 0
	mov	#1,w9
.L26:
	.loc 1 414 0
	mov	w8,w1
	mov	w8,w0
	call	_setPort
	.loc 1 415 0
	mov.d	w8,w0
	call	_setPort
	.loc 1 412 0
	inc	w11,w11
	sub	w11,#5,[w15]
	.set ___BP___,83
	bra	nz,.L26
	.loc 1 417 0
	clr.b	[w10]
	.loc 1 407 0
	clr	w9
	bra	.L27
.L25:
	.loc 1 422 0
	mov.b	[w10],w0
	sub.b	w0,w8,[w15]
	.set ___BP___,28
	bra	z,.L28
	sub.b	w8,#7,[w15]
	.set ___BP___,55
	bra	nz,.L29
	.loc 1 427 0
	mov	#5,w9
	.loc 1 423 0
	sub.b	w0,#6,[w15]
	.set ___BP___,62
	bra	nz,.L27
	bra	.L30
.L29:
	sub.b	w8,#14,[w15]
	.set ___BP___,42
	bra	nz,.L30
	.loc 1 427 0
	mov	#5,w9
	.loc 1 424 0
	sub.b	w0,#13,[w15]
	.set ___BP___,62
	bra	nz,.L27
	bra	.L30
.L28:
	.loc 1 435 0
	sub.b	w0,#6,[w15]
	.set ___BP___,86
	bra	nz,.L31
	.loc 1 437 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 438 0
	mov.b	#7,w0
	mov.b	w0,[w10]
	bra	.L30
.L31:
	.loc 1 442 0
	sub.b	w0,#13,[w15]
	.set ___BP___,86
	bra	nz,.L30
	.loc 1 444 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 445 0
	mov.b	#14,w0
	mov.b	w0,[w10]
.L30:
	.loc 1 593 0
	clr	w9
	.loc 1 454 0
	mov	#15,w12
	mov	#0,w13
	.loc 1 593 0
	mov	#5,w11
	bra	.L65
.L61:
	.loc 1 454 0
	ze	w0,w0
	clr	w1
	sub	w0,w12,[w15]
	subb	w1,w13,[w15]
	.set ___BP___,50
	bra	gtu,.L33
	bra	w0
	.align	2
	.set	___PA___,0
.L50:
	bra	.L34
	bra	.L35
	bra	.L36
	bra	.L37
	bra	.L38
	bra	.L39
	bra	.L40
	bra	.L41
	bra	.L42
	bra	.L43
	bra	.L44
	bra	.L45
	bra	.L46
	bra	.L47
	bra	.L48
	bra	.L49
	.set	___PA___,1
.L34:
	.loc 1 457 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 458 0
	mov.b	#1,w0
	mov.b	w0,[w10]
	.loc 1 459 0
	bra	.L65
.L35:
	.loc 1 461 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 462 0
	mov.b	#2,w0
	mov.b	w0,[w10]
	.loc 1 463 0
	bra	.L65
.L36:
	.loc 1 465 0
	sub.b	w8,#8,[w15]
	.set ___BP___,50
	bra	leu,.L52
	.loc 1 467 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 468 0
	mov.b	#9,w0
	mov.b	w0,[w10]
	bra	.L65
.L52:
	.loc 1 472 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 473 0
	mov.b	#3,w0
	mov.b	w0,[w10]
	bra	.L65
.L37:
	.loc 1 477 0
	sub.b	w8,#4,[w15]
	.set ___BP___,72
	bra	nz,.L53
	.loc 1 479 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 480 0
	mov.b	#4,w0
	mov.b	w0,[w10]
	bra	.L65
.L53:
	.loc 1 484 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 485 0
	mov.b	#5,w0
	mov.b	w0,[w10]
	bra	.L65
.L38:
	.loc 1 489 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 490 0
	mov.b	#5,w0
	mov.b	w0,[w10]
	.loc 1 491 0
	bra	.L65
.L39:
	.loc 1 493 0
	sub.b	w8,#6,[w15]
	.set ___BP___,72
	bra	nz,.L54
	.loc 1 495 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 496 0
	mov.b	#6,w0
	mov.b	w0,[w10]
	bra	.L65
.L54:
	.loc 1 500 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 501 0
	mov.b	#8,w0
	mov.b	w0,[w10]
	bra	.L65
.L40:
	.loc 1 505 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 506 0
	mov.b	#7,w0
	mov.b	w0,[w10]
	.loc 1 507 0
	bra	.L65
.L41:
	.loc 1 509 0
	sub.b	w8,#4,[w15]
	.set ___BP___,72
	bra	nz,.L55
	.loc 1 511 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 512 0
	mov.b	#4,w0
	mov.b	w0,[w10]
	bra	.L65
.L55:
	.loc 1 516 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 517 0
	mov.b	#8,w0
	mov.b	w0,[w10]
	bra	.L65
.L42:
	.loc 1 521 0
	sub.b	w8,#1,[w15]
	.set ___BP___,72
	bra	nz,.L56
	.loc 1 523 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 524 0
	mov.b	#1,w0
	mov.b	w0,[w10]
	bra	.L65
.L56:
	.loc 1 528 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 529 0
	mov.b	#2,w0
	mov.b	w0,[w10]
	bra	.L65
.L43:
	.loc 1 533 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 534 0
	mov.b	#10,w0
	mov.b	w0,[w10]
	.loc 1 535 0
	bra	.L65
.L44:
	.loc 1 537 0
	sub.b	w8,#11,[w15]
	.set ___BP___,72
	bra	nz,.L57
	.loc 1 539 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 540 0
	mov.b	#11,w0
	mov.b	w0,[w10]
	bra	.L65
.L57:
	.loc 1 544 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 545 0
	mov.b	#12,w0
	mov.b	w0,[w10]
	bra	.L65
.L45:
	.loc 1 549 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 550 0
	mov.b	#12,w0
	mov.b	w0,[w10]
	.loc 1 551 0
	bra	.L65
.L46:
	.loc 1 553 0
	sub.b	w8,#13,[w15]
	.set ___BP___,72
	bra	nz,.L58
	.loc 1 555 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 556 0
	mov.b	#13,w0
	mov.b	w0,[w10]
	bra	.L65
.L58:
	.loc 1 560 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 561 0
	mov.b	#15,w0
	mov.b	w0,[w10]
	bra	.L65
.L47:
	.loc 1 565 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 566 0
	mov.b	#14,w0
	mov.b	w0,[w10]
	.loc 1 567 0
	bra	.L65
.L48:
	.loc 1 569 0
	sub.b	w8,#11,[w15]
	.set ___BP___,72
	bra	nz,.L59
	.loc 1 571 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 572 0
	mov.b	#11,w0
	mov.b	w0,[w10]
	bra	.L65
.L59:
	.loc 1 576 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 577 0
	mov.b	#15,w0
	mov.b	w0,[w10]
	bra	.L65
.L49:
	.loc 1 581 0
	sub.b	w8,#1,[w15]
	.set ___BP___,72
	bra	nz,.L60
	.loc 1 583 0
	clr	w0
	call	_xsvfTmsTransition
	.loc 1 584 0
	mov.b	#1,w0
	mov.b	w0,[w10]
	bra	.L65
.L60:
	.loc 1 588 0
	mov	#1,w0
	call	_xsvfTmsTransition
	.loc 1 589 0
	mov.b	#2,w0
	mov.b	w0,[w10]
	bra	.L65
.L33:
	.loc 1 594 0
	mov.b	w8,[w10]
	.loc 1 593 0
	mov	w11,w9
.L65:
	.loc 1 452 0
	mov.b	[w10],w0
	sub.b	w0,w8,[w15]
	.set ___BP___,91
	bra	nz,.L61
.L27:
	.loc 1 603 0
	mov	w9,w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_xsvfGotoTapState, .-_xsvfGotoTapState
	.align	2
	.global	_xsvfDoXWAIT	; export
	.type	_xsvfDoXWAIT,@function
_xsvfDoXWAIT:
.LFB50:
	.loc 1 1489 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	mov	w12,[w15++]
.LCFI12:
	mov	w0,w10
	.loc 1 1496 0
	add	w10,#22,w8
	mov	#1,w1
	mov	w8,w0
	call	_readVal
	.loc 1 1497 0
	mov.b	[w10+24],w12
	.loc 1 1500 0
	mov	#1,w1
	mov	w8,w0
	call	_readVal
	.loc 1 1501 0
	mov.b	[w10+24],w11
	.loc 1 1504 0
	mov	#4,w1
	mov	w8,w0
	call	_readVal
	.loc 1 1505 0
	mov	w8,w0
	call	_value
	mov.d	w0,w8
	.loc 1 1510 0
	mov.b	[w10+8],w0
	sub.b	w0,w12,[w15]
	.set ___BP___,48
	bra	z,.L67
	.loc 1 1512 0
	add	w10,#8,w0
	mov.b	w12,w1
	call	_xsvfGotoTapState
.L67:
	.loc 1 1516 0
	mov.d	w8,w0
	call	_waitTime
	.loc 1 1519 0
	mov.b	[w10+8],w0
	sub.b	w0,w11,[w15]
	.set ___BP___,37
	bra	z,.L68
	.loc 1 1521 0
	add	w10,#8,w0
	mov.b	w11,w1
	call	_xsvfGotoTapState
.L68:
	.loc 1 1525 0
	clr	w0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE50:
	.size	_xsvfDoXWAIT, .-_xsvfDoXWAIT
	.align	2
	.global	_xsvfDoXSTATE	; export
	.type	_xsvfDoXSTATE,@function
_xsvfDoXSTATE:
.LFB47:
	.loc 1 1376 0
	.set ___PA___,1
	lnk	#2
.LCFI13:
	mov	w8,[w15++]
.LCFI14:
	mov	w0,w8
	.loc 1 1379 0
	sub	w15,#4,w0
	call	_readByte
	.loc 1 1380 0
	add	w8,#8,w0
	mov.b	[w15-4],w1
	call	_xsvfGotoTapState
	.loc 1 1381 0
	cp0	w0
	.set ___BP___,39
	bra	z,.L70
	.loc 1 1383 0
	mov	w0,[w8+6]
.L70:
	.loc 1 1386 0
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE47:
	.size	_xsvfDoXSTATE, .-_xsvfDoXSTATE
	.align	2
	.global	_xsvfShiftOnly	; export
	.type	_xsvfShiftOnly,@function
_xsvfShiftOnly:
.LFB29:
	.loc 1 623 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI15:
	mov.d	w8,[w15++]
.LCFI16:
	mov.d	w10,[w15++]
.LCFI17:
	mov.d	w12,[w15++]
.LCFI18:
	mov	w14,[w15++]
.LCFI19:
	mov.d	w0,w8
	mov	w4,[w15-16]
	.loc 1 634 0
	clr	w14
	.loc 1 635 0
	cp0	w3
	.set ___BP___,15
	bra	z,.L72
	.loc 1 637 0
	mov	[w2],[w3]
	.loc 1 638 0
	inc2	[w2],w14
	add	w3,w14,w14
.L72:
	.loc 1 642 0
	mov	[w2],w0
	.loc 1 643 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,9
	bra	z,.L71
	.loc 1 642 0
	inc2	w0,w0
	add	w2,w0,w0
	mov	w0,[w15-18]
	.loc 1 648 0
	clr	w11
.L79:
	.loc 1 646 0
	mov	[w15-18],w0
	mov.b	[--w0],w12
	mov	w0,[w15-18]
	.loc 1 647 0
	clr.b	w13
	.loc 1 648 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,4
	bra	z,.L74
	mov	w11,w10
.L77:
	.loc 1 650 0
	sub	w8,#1,w8
	subb	w9,#0,w9
	.loc 1 651 0
	mov	[w15-16],w0
	cp0	w0
	.set ___BP___,50
	bra	z,.L75
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,71
	bra	nz,.L75
	.loc 1 654 0
	mov	#1,w1
	mov	#1,w0
	call	_setPort
.L75:
	.loc 1 658 0
	and	w12,#1,w1
	mov	#2,w0
	call	_setPort
	.loc 1 662 0
	mov	w11,w1
	mov	w11,w0
	call	_setPort
	.loc 1 664 0
	cp0	w14
	.set ___BP___,30
	bra	z,.L76
	.loc 1 667 0
	call	_readTDOBit
	.loc 1 668 0
	ze	w0,w0
	sl	w0,w10,w0
	ior.b	w13,w0,w13
.L76:
	.loc 1 672 0
	mov	#1,w1
	mov	w11,w0
	call	_setPort
	.loc 1 648 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,4
	bra	z,.L74
	inc	w10,w10
	sub	w10,#8,[w15]
	.set ___BP___,11
	bra	z,.L74
	.loc 1 659 0
	ze	w12,w12
	lsr	w12,w12
	bra	.L77
.L74:
	.loc 1 676 0
	cp0	w14
	.set ___BP___,15
	bra	z,.L78
	.loc 1 678 0
	mov.b	w13,[--w14]
.L78:
	.loc 1 643 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,91
	bra	nz,.L79
.L71:
	.loc 1 681 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE29:
	.size	_xsvfShiftOnly, .-_xsvfShiftOnly
	.align	2
	.global	_xsvfShift	; export
	.type	_xsvfShift,@function
_xsvfShift:
.LFB30:
	.loc 1 717 0
	.set ___PA___,1
	add	w15,#18,w15
.LCFI20:
	mov.d	w8,[w15++]
.LCFI21:
	mov.d	w10,[w15++]
.LCFI22:
	mov.d	w12,[w15++]
.LCFI23:
	mov	w14,[w15++]
.LCFI24:
	mov	w0,w13
	mov.b	w1,[w15-22]
	mov.d	w2,w8
	mov	w4,[w15-24]
	mov	w5,[w15-18]
	mov	w6,[w15-20]
	mov	w7,[w15-26]
	mov	[w15-42],w10
	mov	[w15-40],w11
	.loc 1 726 0
	mov.b	[w15-38],w2
	xor.b	w1,w2,w0
	ze	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
	mov	w0,[w15-16]
	.loc 1 736 0
	clr.b	w12
	clr	w14
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	nz,.L96
	.loc 1 723 0
	clr	w0
	.loc 1 739 0
	sub	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,71
	bra	z,.L85
	.loc 1 742 0
	mov.b	#1,w1
	mov	w13,w0
	call	_xsvfGotoTapState
	.loc 1 744 0
	mov.d	w10,w0
	call	_waitTime
	.loc 1 723 0
	clr	w0
	bra	.L85
.L96:
	.loc 1 752 0
	mov.b	[w15-22],w1
	mov	w13,w0
	call	_xsvfGotoTapState
	.loc 1 755 0
	mov	[w15-16],w4
	mov	[w15-18],w3
	mov	[w15-24],w2
	mov.d	w8,w0
	call	_xsvfShiftOnly
	.loc 1 757 0
	mov	[w15-20],w0
	cp0	w0
	.set ___BP___,30
	bra	z,.L86
	.loc 1 760 0
	mov	[w15-26],w2
	mov	[w15-18],w1
	call	_EqualLenVal
	mov	w0,w14
	btsc	w14,#15
	neg	w14,w14
	dec	w14,w14
	lsr	w14,#15,w14
.L86:
	.loc 1 765 0
	mov	[w15-16],w1
	cp0	w1
	.set ___BP___,50
	bra	z,.L87
	.loc 1 768 0
	inc.b	[w13],[w13]
	.loc 1 772 0
	cp0	w14
	.set ___BP___,29
	bra	z,.L88
	sub	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	z,.L88
	mov.b	[w15-44],w2
	sub.b	w12,w2,[w15]
	.set ___BP___,71
	bra	geu,.L88
	.loc 1 785 0
	mov.b	#6,w1
	mov	w13,w0
	call	_xsvfGotoTapState
	.loc 1 787 0
	mov.b	#4,w1
	mov	w13,w0
	call	_xsvfGotoTapState
	.loc 1 789 0
	sl	w11,#14,w1
	lsr	w10,#2,w0
	ior	w1,w0,w0
	mov	w0,[w15-30]
	asr	w11,#2,w2
	mov	w2,[w15-28]
	mov	[w15-30],w0
	mov	[w15-28],w1
	add	w0,w10,w10
	addc	w1,w11,w11
	bra	.L89
.L88:
	.loc 1 794 0
	mov.b	[w15-38],w1
	mov	w13,w0
	call	_xsvfGotoTapState
.L89:
	.loc 1 797 0
	sub	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,71
	bra	z,.L87
	.loc 1 800 0
	mov.b	#1,w1
	mov	w13,w0
	call	_xsvfGotoTapState
	.loc 1 802 0
	mov.d	w10,w0
	call	_waitTime
.L87:
	.loc 1 805 0
	cp0	w14
	.set ___BP___,4
	bra	z,.L94
	inc.b	w12,w12
	dec.b	w12,w0
	mov.b	[w15-44],w1
	sub.b	w1,w0,[w15]
	.set ___BP___,86
	bra	gtu,.L96
	bra	.L100
.L91:
	.loc 1 821 0
	mov	#3,w0
	.loc 1 819 0
	mov.b	[w15-44],w2
	sub.b	w2,w12,[w15]
	.set ___BP___,33
	bra	ltu,.L85
	.loc 1 825 0
	mov	#2,w0
	bra	.L85
.L94:
	.loc 1 723 0
	clr	w0
.L85:
	.loc 1 830 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#18
	return	
	.set ___PA___,0
.L100:
	.loc 1 819 0
	mov.b	[w15-44],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L91
	.loc 1 825 0
	mov	#2,w0
	bra	.L85
.LFE30:
	.size	_xsvfShift, .-_xsvfShift
	.align	2
	.global	_xsvfDoXSDR	; export
	.type	_xsvfDoXSDR,@function
_xsvfDoXSDR:
.LFB38:
	.loc 1 1098 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI25:
	mov	w0,w8
	.loc 1 1100 0
	add	w8,#22,w9
	mov	[w8+20],w1
	mov	w9,w0
	call	_readVal
	.loc 1 1102 0
	mov	#184,w7
	add	w7,w8,w7
	mov	[w8+16],w2
	mov	[w8+18],w3
	add	w8,#8,w0
	mov.b	[w8+11],w1
	mov	w1,[w15++]
.LCFI26:
	mov	[w8+12],w4
	mov	[w8+14],w5
	mov.d	w4,[w15++]
.LCFI27:
	mov.b	[w8+10],w5
	mov	w5,[w15++]
.LCFI28:
	mov	#76,w6
	add	w6,w8,w6
	mov	#130,w5
	add	w5,w8,w5
	mov	w9,w4
	mov.b	#4,w1
.LCFI29:
	call	_xsvfShift
	.loc 1 1108 0
	sub	w15,#8,w15
.LCFI30:
	cp0	w0
	.set ___BP___,39
	bra	z,.L102
	.loc 1 1110 0
	mov	w0,[w8+6]
.L102:
	.loc 1 1113 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE38:
	.size	_xsvfDoXSDR, .-_xsvfDoXSDR
	.align	2
	.global	_xsvfDoXSIR2	; export
	.type	_xsvfDoXSIR2,@function
_xsvfDoXSIR2:
.LFB37:
	.loc 1 1052 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI31:
	mov.d	w10,[w15++]
.LCFI32:
	mov	w0,w11
	.loc 1 1058 0
	add	w11,#22,w10
	mov	#2,w1
	mov	w10,w0
	call	_readVal
	.loc 1 1059 0
	mov	w10,w0
	call	_value
	mov.d	w0,w8
	.loc 1 1060 0
	call	_xsvfGetAsNumBytes
	mov	w0,w1
	.loc 1 1065 0
	mov	#6,w0
	.loc 1 1063 0
	mov	#50,w2
	sub	w1,w2,[w15]
	.set ___BP___,71
	bra	gt,.L104
	.loc 1 1070 0
	mov	w10,w0
	call	_readVal
	.loc 1 1073 0
	add	w11,#8,w0
	clr	[w15++]
.LCFI33:
	mov	[w11+12],w2
	mov	[w11+14],w3
	mov.d	w2,[w15++]
.LCFI34:
	mov.b	[w11+9],w3
	mov	w3,[w15++]
.LCFI35:
	mul.uu	w6, #0, w6
	clr	w5
	mov	w10,w4
	mov.d	w8,w2
	mov.b	#11,w1
.LCFI36:
	call	_xsvfShift
	.loc 1 1080 0
	sub	w15,#8,w15
.LCFI37:
	cp0	w0
	.set ___BP___,100
	bra	z,.L105
.L104:
	.loc 1 1082 0
	mov	w0,[w11+6]
.L105:
	.loc 1 1085 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE37:
	.size	_xsvfDoXSIR2, .-_xsvfDoXSIR2
	.align	2
	.global	_xsvfDoXSIR	; export
	.type	_xsvfDoXSIR,@function
_xsvfDoXSIR:
.LFB36:
	.loc 1 1007 0
	.set ___PA___,1
	lnk	#2
.LCFI38:
	mov.d	w8,[w15++]
.LCFI39:
	mov	w0,w8
	.loc 1 1013 0
	sub	w15,#6,w0
	call	_readByte
	.loc 1 1014 0
	mov.b	[w15-6],w2
	ze	w2,w0
	clr	w1
	call	_xsvfGetAsNumBytes
	mov	w0,w1
	.loc 1 1020 0
	mov	#6,w0
	.loc 1 1018 0
	mov	#50,w2
	sub	w1,w2,[w15]
	.set ___BP___,71
	bra	gt,.L108
	.loc 1 1025 0
	add	w8,#22,w9
	mov	w9,w0
	call	_readVal
	.loc 1 1028 0
	mov.b	[w15-6],w4
	ze	w4,w2
	clr	w3
	add	w8,#8,w0
	clr	[w15++]
	mov	[w8+12],w4
	mov	[w8+14],w5
	mov.d	w4,[w15++]
	mov.b	[w8+9],w5
	mov	w5,[w15++]
	mul.uu	w6, #0, w6
	clr	w5
	mov	w9,w4
	mov.b	#11,w1
.LCFI40:
	call	_xsvfShift
	.loc 1 1035 0
	sub	w15,#8,w15
	cp0	w0
	.set ___BP___,100
	bra	z,.L109
.L108:
	.loc 1 1037 0
	mov	w0,[w8+6]
.L109:
	.loc 1 1040 0
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE36:
	.size	_xsvfDoXSIR, .-_xsvfDoXSIR
	.align	2
	.global	_xsvfBasicXSDRTDO	; export
	.type	_xsvfBasicXSDRTDO,@function
_xsvfBasicXSDRTDO:
.LFB31:
	.loc 1 856 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI41:
	mov.d	w8,[w15++]
.LCFI42:
	mov.d	w10,[w15++]
.LCFI43:
	mov.d	w12,[w15++]
.LCFI44:
	mov	w14,[w15++]
.LCFI45:
	mov	w0,[w15-16]
	mov.d	w2,w10
	mov	w1,w13
	mov	w4,w12
	mov	w5,w14
	mov	w6,w9
	mov	w7,w8
	.loc 1 857 0
	mov.d	w12,w0
	call	_readVal
	.loc 1 858 0
	cp0	w9
	.set ___BP___,21
	bra	z,.L112
	.loc 1 860 0
	mov	w13,w1
	mov	w9,w0
	call	_readVal
.L112:
	.loc 1 862 0
	mov.b	[w15-30],w0
	mov	w0,[w15++]
.LCFI46:
	mov	[w15-30],w0
	mov	[w15-28],w1
	mov.d	w0,[w15++]
.LCFI47:
	mov.b	[w15-30],w1
	mov	w1,[w15++]
.LCFI48:
	mov	w8,w7
	mov	w9,w6
	mov	w14,w5
	mov	w12,w4
	mov.d	w10,w2
	mov.b	#4,w1
	mov	[w15-24],w0
.LCFI49:
	call	_xsvfShift
	sub	w15,#8,w15
.LCFI50:
	.loc 1 865 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE31:
	.size	_xsvfBasicXSDRTDO, .-_xsvfBasicXSDRTDO
	.align	2
	.global	_xsvfDoXSDRTDOBCE	; export
	.type	_xsvfDoXSDRTDOBCE,@function
_xsvfDoXSDRTDOBCE:
.LFB46:
	.loc 1 1347 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI51:
	mov	w0,w8
	.loc 1 1350 0
	mov.b	[w8+1],w0
	mov.b	#4,w4
	sub.b	w0,#17,[w15]
	.set ___BP___,72
	bra	nz,.L114
	mov.b	[w8+10],w4
.L114:
	.loc 1 1352 0
	mov	[w8+20],w1
	mov	[w8+16],w2
	mov	[w8+18],w3
	add	w8,#8,w0
	clr	[w15++]
.LCFI52:
	clr	[w15++]
	clr	[w15++]
.LCFI53:
	push	w4
.LCFI54:
	clr	w7
	mov	#76,w6
	add	w6,w8,w6
	mov	#130,w5
	add	w5,w8,w5
	add	w8,#22,w4
.LCFI55:
	call	_xsvfBasicXSDRTDO
	.loc 1 1360 0
	sub	w15,#8,w15
.LCFI56:
	cp0	w0
	.set ___BP___,39
	bra	z,.L115
	.loc 1 1362 0
	mov	w0,[w8+6]
.L115:
	.loc 1 1365 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE46:
	.size	_xsvfDoXSDRTDOBCE, .-_xsvfDoXSDRTDOBCE
	.align	2
	.global	_xsvfDoXSDRBCE	; export
	.type	_xsvfDoXSDRBCE,@function
_xsvfDoXSDRBCE:
.LFB45:
	.loc 1 1316 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI57:
	mov	w0,w8
	.loc 1 1319 0
	mov.b	[w8+1],w0
	mov.b	#4,w4
	sub.b	w0,#14,[w15]
	.set ___BP___,72
	bra	nz,.L118
	mov.b	[w8+10],w4
.L118:
	.loc 1 1321 0
	mov	[w8+20],w1
	mov	[w8+16],w2
	mov	[w8+18],w3
	add	w8,#8,w0
	clr	[w15++]
.LCFI58:
	clr	[w15++]
	clr	[w15++]
.LCFI59:
	push	w4
.LCFI60:
	mul.uu	w6, #0, w6
	clr	w5
	add	w8,#22,w4
.LCFI61:
	call	_xsvfBasicXSDRTDO
	.loc 1 1328 0
	sub	w15,#8,w15
.LCFI62:
	cp0	w0
	.set ___BP___,39
	bra	z,.L119
	.loc 1 1330 0
	mov	w0,[w8+6]
.L119:
	.loc 1 1333 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE45:
	.size	_xsvfDoXSDRBCE, .-_xsvfDoXSDRBCE
	.align	2
	.global	_xsvfDoXSDRTDO	; export
	.type	_xsvfDoXSDRTDO,@function
_xsvfDoXSDRTDO:
.LFB42:
	.loc 1 1178 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI63:
	mov	w0,w8
	.loc 1 1180 0
	mov	#184,w7
	add	w7,w8,w7
	mov	[w8+20],w1
	mov	[w8+16],w2
	mov	[w8+18],w3
	add	w8,#8,w0
	mov.b	[w8+11],w4
	mov	w4,[w15++]
.LCFI64:
	mov	[w8+12],w4
	mov	[w8+14],w5
	mov.d	w4,[w15++]
.LCFI65:
	mov.b	[w8+10],w5
	mov	w5,[w15++]
.LCFI66:
	mov	#76,w6
	add	w6,w8,w6
	mov	#130,w5
	add	w5,w8,w5
	add	w8,#22,w4
.LCFI67:
	call	_xsvfBasicXSDRTDO
	.loc 1 1190 0
	sub	w15,#8,w15
.LCFI68:
	cp0	w0
	.set ___BP___,39
	bra	z,.L122
	.loc 1 1192 0
	mov	w0,[w8+6]
.L122:
	.loc 1 1195 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE42:
	.size	_xsvfDoXSDRTDO, .-_xsvfDoXSDRTDO
	.align	2
	.global	_xsvfDoSDRMasking	; export
	.type	_xsvfDoSDRMasking,@function
_xsvfDoSDRMasking:
.LFB32:
	.loc 1 883 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI69:
	mov.d	w10,[w15++]
.LCFI70:
	mov.d	w12,[w15++]
.LCFI71:
	mov	w0,w9
	mov	w1,w8
	mov	w3,w10
	.loc 1 893 0
	mov	w9,w1
	mov	w9,w0
	call	_addVal
	.loc 1 897 0
	mov	[w8],w6
	.loc 1 898 0
	mov	[w10],w0
	dec	w0,w7
	.set ___BP___,1
	bra	n,.L123
	.loc 1 879 0
	inc2	w0,w0
	add	w10,w0,w10
	inc2	w7,w0
	add	w9,w0,w9
	.loc 1 896 0
	clr.b	w2
	.loc 1 895 0
	mov.b	w2,w5
	.loc 1 908 0
	mov.b	#1,w13
	.loc 1 917 0
	mov.b	w13,w11
.L132:
	.loc 1 901 0
	mov.b	[--w10],w0
	.loc 1 902 0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L125
	.loc 1 879 0
	mov	w9,w12
	.loc 1 905 0
	mov.b	[w9],w3
	.loc 1 908 0
	mov.b	w13,w1
.L131:
	.loc 1 911 0
	btst	w0,#0
	.set ___BP___,50
	bra	z,.L126
	.loc 1 913 0
	cp0.b	w2
	.set ___BP___,50
	bra	nz,.L127
	.loc 1 916 0
	dec	w6,w6
	inc2	w6,w2
	mov.b	[w8+w2],w5
	.loc 1 917 0
	mov.b	w11,w2
.L127:
	.loc 1 921 0
	and.b	w2,w5,w4
	.set ___BP___,50
	bra	z,.L128
	.loc 1 923 0
	ior.b	w3,w1,w3
	bra	.L129
.L128:
	.loc 1 927 0
	com.b	w1,w4
	and.b	w4,w3,w3
.L129:
	.loc 1 931 0
	add.b	w2,w2,w2
.L126:
	.loc 1 934 0
	ze	w0,w0
	lsr	w0,w0
	.loc 1 909 0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L130
	.loc 1 933 0
	add.b	w1,w1,w1
	bra	.L131
.L130:
	.loc 1 938 0
	mov.b	w3,[w12]
.L125:
	.loc 1 898 0
	dec	w7,w7
	dec	w9,w9
	add	w7,#1,[w15]
	.set ___BP___,98
	bra	nz,.L132
.L123:
	.loc 1 941 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE32:
	.size	_xsvfDoSDRMasking, .-_xsvfDoSDRMasking
	.align	2
	.global	_xsvfDoXSDRINC	; export
	.type	_xsvfDoXSDRINC,@function
_xsvfDoXSDRINC:
.LFB44:
	.loc 1 1244 0
	.set ___PA___,1
	add	w15,#12,w15
.LCFI72:
	mov.d	w8,[w15++]
.LCFI73:
	mov.d	w10,[w15++]
.LCFI74:
	mov.d	w12,[w15++]
.LCFI75:
	mov	w14,[w15++]
.LCFI76:
	mov	w0,w9
	.loc 1 1251 0
	add	w9,#22,w11
	mov	[w9+20],w1
	mov	w11,w0
	call	_readVal
	.loc 1 1252 0
	mov	#184,w0
	add	w9,w0,w0
	mov	w0,[w15-16]
	mov	#76,w1
	add	w9,w1,w1
	mov	w1,[w15-18]
	mov	#130,w14
	add	w14,w9,w14
	add	w9,#8,w13
	mov	[w9+16],w2
	mov	[w9+18],w3
	mov.b	[w9+11],w0
	mov	w0,[w15++]
.LCFI77:
	mov	[w9+12],w0
	mov	[w9+14],w1
	mov.d	w0,[w15++]
.LCFI78:
	mov.b	[w9+10],w1
	mov	w1,[w15++]
.LCFI79:
	mov	[w15-24],w7
	mov	[w15-26],w6
	mov	w14,w5
	mov	w11,w4
	mov.b	#4,w1
	mov	w13,w0
.LCFI80:
	call	_xsvfShift
	mov	w0,w10
	.loc 1 1258 0
	sub	w15,#8,w15
.LCFI81:
	cp0	w10
	.set ___BP___,50
	bra	nz,.L135
	.loc 1 1262 0
	mov	[w9+292],w3
	clr	w8
	cp0	w3
	.set ___BP___,9
	bra	le,.L136
	clr	w0
	clr.b	w2
.L139:
	.loc 1 1264 0
	add	#294,w0
	mov.b	[w9+w0],w0
	.loc 1 1265 0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L137
.L143:
	.loc 1 1267 0
	ze	w0,w0
	and	w0,#1,w1
	add	w8,w1,w8
	.loc 1 1268 0
	lsr	w0,w0
	.loc 1 1265 0
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L143
.L137:
	.loc 1 1262 0
	inc.b	w2,w2
	ze	w2,w0
	sub	w0,w3,[w15]
	.set ___BP___,91
	bra	lt,.L139
.L136:
	.loc 1 1273 0
	sub	w15,#24,w0
.LCFI82:
	call	_readByte
	.loc 1 1276 0
	mov.b	[w15-24],w0
	cp0.b	w0
	.set ___BP___,4
	bra	z,.L140
	.loc 1 1278 0
	mul.su	w8,#1,w0
	call	_xsvfGetAsNumBytes
	mov	w0,[w15-20]
	.loc 1 1276 0
	clr.b	w8
	.loc 1 1278 0
	mov	#346,w12
	add	w12,w9,w12
	.loc 1 1280 0
	mov	#292,w1
	add	w9,w1,w1
	mov	w1,[w15-22]
	mov	#238,w10
	add	w10,w9,w10
.L141:
	.loc 1 1278 0
	mov	[w15-20],w1
	mov	w12,w0
	call	_readVal
	.loc 1 1280 0
	mov	[w15-22],w3
	mov	w10,w2
	mov	w12,w1
	mov	w11,w0
	call	_xsvfDoSDRMasking
	.loc 1 1284 0
	mov	[w9+16],w2
	mov	[w9+18],w3
	mov.b	[w9+11],w0
	mov	w0,[w15++]
.LCFI83:
	mov	[w9+12],w0
	mov	[w9+14],w1
	mov.d	w0,[w15++]
.LCFI84:
	mov.b	[w9+10],w1
	mov	w1,[w15++]
.LCFI85:
	mov	[w15-24],w7
	mov	[w15-26],w6
	mov	w14,w5
	mov	w11,w4
	mov.b	#4,w1
	mov	w13,w0
.LCFI86:
	call	_xsvfShift
	.loc 1 1276 0
	sub	w15,#8,w15
.LCFI87:
	cp0	w0
	.set ___BP___,4
	bra	nz,.L147
	inc.b	w8,w8
	mov.b	[w15-24],w1
	sub.b	w1,w8,[w15]
	.set ___BP___,95
	bra	gtu,.L141
	mov	w0,w10
	bra	.L140
.L147:
	mov	w0,w10
.L135:
	.loc 1 1298 0
	mov	w10,[w9+6]
.L140:
	.loc 1 1301 0
	mov	w10,w0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#12
	return	
	.set ___PA___,0
.LFE44:
	.size	_xsvfDoXSDRINC, .-_xsvfDoXSDRINC
	.align	2
	.global	_xsvfInitialize	; export
	.type	_xsvfInitialize,@function
_xsvfInitialize:
.LFB51:
	.loc 1 1543 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI88:
	mov	w0,w8
	.loc 1 1545 0
	mov	w8,w0
	call	_xsvfInfoInit
	mov	w0,[w8+6]
	.loc 1 1547 0
	cp0	w0
	.set ___BP___,61
	bra	nz,.L149
	.loc 1 1550 0
	add	w8,#8,w0
	clr.b	w1
	call	_xsvfGotoTapState
	mov	w0,[w8+6]
.L149:
	mov	[w8+6],w0
	.loc 1 1555 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE51:
	.size	_xsvfInitialize, .-_xsvfInitialize
	.align	2
	.global	_xsvfRun	; export
	.type	_xsvfRun,@function
_xsvfRun:
.LFB52:
	.loc 1 1568 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI89:
	mov	w0,w8
	.loc 1 1570 0
	mov	[w8+6],w0
	cp0	w0
	.set ___BP___,39
	bra	nz,.L151
	cp0.b	[w8]
	.set ___BP___,61
	bra	nz,.L151
	.loc 1 1573 0
	inc	w8,w0
	call	_readByte
	.loc 1 1574 0
	mov	[w8+2],w0
	mov	[w8+4],w1
	add	w0,#1,w0
	addc	w1,#0,w1
	mov	w0,[w8+2]
	mov	w1,[w8+4]
	.loc 1 1576 0
	mov.b	[w8+1],w0
	sub.b	w0,#23,[w15]
	.set ___BP___,61
	bra	gtu,.L152
	.loc 1 1580 0
	ze	w0,w0
	add	w0,w0,w0
	mov	#_xsvf_pfDoCmd,w1
	mov	[w1+w0],w1
	mov	w8,w0
	call	w1
	bra	.L151
.L152:
	.loc 1 1585 0
	mov	w8,w0
	call	_xsvfDoIllegalCmd
.L151:
	mov	[w8+6],w0
	.loc 1 1590 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE52:
	.size	_xsvfRun, .-_xsvfRun
	.align	2
	.global	_xsvfCleanup	; export
	.type	_xsvfCleanup,@function
_xsvfCleanup:
.LFB53:
	.loc 1 1599 0
	.set ___PA___,1
	.loc 1 1601 0
	return	
	.set ___PA___,0
.LFE53:
	.size	_xsvfCleanup, .-_xsvfCleanup
	.align	2
	.global	_xsvfExecute	; export
	.type	_xsvfExecute,@function
_xsvfExecute:
.LFB54:
	.loc 1 1616 0
	.set ___PA___,1
	lnk	#400
.LCFI90:
	.loc 1 1619 0
	mov	#-400,w0
	add	w0,w15,w0
	call	_xsvfInitialize
	.loc 1 1621 0
	mov	[w15-394],w0
	cp0	w0
	.set ___BP___,4
	bra	nz,.L155
	mov.b	[w15-400],w1
	cp0.b	w1
	.set ___BP___,4
	bra	nz,.L155
.L157:
	.loc 1 1623 0
	mov	#-400,w0
	add	w0,w15,w0
	call	_xsvfRun
	.loc 1 1621 0
	mov	[w15-394],w0
	cp0	w0
	.set ___BP___,4
	bra	nz,.L155
	mov.b	[w15-400],w1
	cp0.b	w1
	.set ___BP___,95
	bra	z,.L157
.L155:
	.loc 1 1629 0
	ulnk	
	return	
	.set ___PA___,0
.LFE54:
	.size	_xsvfExecute, .-_xsvfExecute
	.global	_xsvf_pfDoCmd	; export
	.section	.data,data
	.align	2
	.type	_xsvf_pfDoCmd,@object
	.size	_xsvf_pfDoCmd, 48
_xsvf_pfDoCmd:
	.word	handle(_xsvfDoXCOMPLETE)
	.word	handle(_xsvfDoXTDOMASK)
	.word	handle(_xsvfDoXSIR)
	.word	handle(_xsvfDoXSDR)
	.word	handle(_xsvfDoXRUNTEST)
	.word	handle(_xsvfDoIllegalCmd)
	.word	handle(_xsvfDoIllegalCmd)
	.word	handle(_xsvfDoXREPEAT)
	.word	handle(_xsvfDoXSDRSIZE)
	.word	handle(_xsvfDoXSDRTDO)
	.word	handle(_xsvfDoXSETSDRMASKS)
	.word	handle(_xsvfDoXSDRINC)
	.word	handle(_xsvfDoXSDRBCE)
	.word	handle(_xsvfDoXSDRBCE)
	.word	handle(_xsvfDoXSDRBCE)
	.word	handle(_xsvfDoXSDRTDOBCE)
	.word	handle(_xsvfDoXSDRTDOBCE)
	.word	handle(_xsvfDoXSDRTDOBCE)
	.word	handle(_xsvfDoXSTATE)
	.word	handle(_xsvfDoXENDXR)
	.word	handle(_xsvfDoXENDXR)
	.word	handle(_xsvfDoXSIR2)
	.word	handle(_xsvfDoXCOMMENT)
	.word	handle(_xsvfDoXWAIT)
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI0-.LFB49
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI2-.LFB48
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI6-.LFB41
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI7-.LFB28
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x13
	.sleb128 -8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI10-.LFB50
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
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
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI15-.LFB29
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
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
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI20-.LFB30
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x13
	.sleb128 -13
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x13
	.sleb128 -15
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x13
	.sleb128 -17
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x13
	.sleb128 -18
	.byte	0x8e
	.uleb128 0x11
	.byte	0x8c
	.uleb128 0xf
	.byte	0x8a
	.uleb128 0xd
	.byte	0x88
	.uleb128 0xb
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI25-.LFB38
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x13
	.sleb128 -4
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI31-.LFB37
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x13
	.sleb128 -6
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI38-.LFB36
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0x88
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x2e
	.uleb128 0x8
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI41-.LFB31
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
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
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x13
	.sleb128 -12
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0x13
	.sleb128 -14
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0x13
	.sleb128 -15
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0x13
	.sleb128 -11
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI51-.LFB46
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0x13
	.sleb128 -3
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI57-.LFB45
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0x13
	.sleb128 -3
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI63-.LFB42
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0x13
	.sleb128 -3
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI69-.LFB32
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0x13
	.sleb128 -8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI72-.LFB44
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0x13
	.sleb128 -12
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0x13
	.sleb128 -14
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0x13
	.sleb128 -15
	.byte	0x8e
	.uleb128 0xe
	.byte	0x8c
	.uleb128 0xc
	.byte	0x8a
	.uleb128 0xa
	.byte	0x88
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0x13
	.sleb128 -16
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0x13
	.sleb128 -18
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0x13
	.sleb128 -19
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0x13
	.sleb128 -15
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0x2e
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0x13
	.sleb128 -16
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0x13
	.sleb128 -18
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0x13
	.sleb128 -19
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0x2e
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0x13
	.sleb128 -15
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI88-.LFB51
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI89-.LFB52
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI90-.LFB54
	.byte	0x13
	.sleb128 -3
	.byte	0xd
	.uleb128 0xe
	.byte	0x8e
	.uleb128 0x2
	.align	4
.LEFDE60:
	.section	.text,code
.Letext0:
	.file 2 "C:/Program Files (x86)/Microchip/MPLABX/v5.30/packs/Microchip/PIC24F-GA-GB_DFP/1.1.74/xc16/bin/..\\support\\PIC24F\\h/p24FJ256GB106.h"
	.file 3 "c:\\program files (x86)\\microchip\\xc16\\v1.41\\bin\\bin\\../..\\include/stdint.h"
	.file 4 "../jtag/lenval.h"
	.section	.debug_info,info
	.4byte	0x17d3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.41) (B) Build date: Sep  3 2019"
	.byte	0x1
	.asciz	"../jtag/micro.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0x31
	.4byte	0x105
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
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
	.byte	0x2
	.2byte	0xcd2
	.4byte	0x2c7
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x2
	.2byte	0xcd3
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB1"
	.byte	0x2
	.2byte	0xcd4
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB2"
	.byte	0x2
	.2byte	0xcd5
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB3"
	.byte	0x2
	.2byte	0xcd6
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB4"
	.byte	0x2
	.2byte	0xcd7
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB5"
	.byte	0x2
	.2byte	0xcd8
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB6"
	.byte	0x2
	.2byte	0xcd9
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB7"
	.byte	0x2
	.2byte	0xcda
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB8"
	.byte	0x2
	.2byte	0xcdb
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB9"
	.byte	0x2
	.2byte	0xcdc
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB10"
	.byte	0x2
	.2byte	0xcdd
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB11"
	.byte	0x2
	.2byte	0xcde
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB12"
	.byte	0x2
	.2byte	0xcdf
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB13"
	.byte	0x2
	.2byte	0xce0
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB14"
	.byte	0x2
	.2byte	0xce1
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB15"
	.byte	0x2
	.2byte	0xce2
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISBBITS"
	.byte	0x2
	.2byte	0xce3
	.4byte	0x15a
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xce8
	.4byte	0x416
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x2
	.2byte	0xce9
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB1"
	.byte	0x2
	.2byte	0xcea
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB2"
	.byte	0x2
	.2byte	0xceb
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB3"
	.byte	0x2
	.2byte	0xcec
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB4"
	.byte	0x2
	.2byte	0xced
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB5"
	.byte	0x2
	.2byte	0xcee
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB6"
	.byte	0x2
	.2byte	0xcef
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB7"
	.byte	0x2
	.2byte	0xcf0
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB8"
	.byte	0x2
	.2byte	0xcf1
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB9"
	.byte	0x2
	.2byte	0xcf2
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB10"
	.byte	0x2
	.2byte	0xcf3
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB11"
	.byte	0x2
	.2byte	0xcf4
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB12"
	.byte	0x2
	.2byte	0xcf5
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB13"
	.byte	0x2
	.2byte	0xcf6
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB14"
	.byte	0x2
	.2byte	0xcf7
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB15"
	.byte	0x2
	.2byte	0xcf8
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTBBITS"
	.byte	0x2
	.2byte	0xcf9
	.4byte	0x2d9
	.uleb128 0x4
	.asciz	"tagTRISEBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xd9e
	.4byte	0x4e7
	.uleb128 0x5
	.asciz	"TRISE0"
	.byte	0x2
	.2byte	0xd9f
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE1"
	.byte	0x2
	.2byte	0xda0
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE2"
	.byte	0x2
	.2byte	0xda1
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE3"
	.byte	0x2
	.2byte	0xda2
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE4"
	.byte	0x2
	.2byte	0xda3
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE5"
	.byte	0x2
	.2byte	0xda4
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE6"
	.byte	0x2
	.2byte	0xda5
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISE7"
	.byte	0x2
	.2byte	0xda6
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISEBITS"
	.byte	0x2
	.2byte	0xda7
	.4byte	0x428
	.uleb128 0x4
	.asciz	"tagPORTEBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xdac
	.4byte	0x5a0
	.uleb128 0x5
	.asciz	"RE0"
	.byte	0x2
	.2byte	0xdad
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE1"
	.byte	0x2
	.2byte	0xdae
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE2"
	.byte	0x2
	.2byte	0xdaf
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE3"
	.byte	0x2
	.2byte	0xdb0
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE4"
	.byte	0x2
	.2byte	0xdb1
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE5"
	.byte	0x2
	.2byte	0xdb2
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE6"
	.byte	0x2
	.2byte	0xdb3
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RE7"
	.byte	0x2
	.2byte	0xdb4
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTEBITS"
	.byte	0x2
	.2byte	0xdb5
	.4byte	0x4f9
	.uleb128 0x4
	.asciz	"tagTRISFBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xdd6
	.4byte	0x632
	.uleb128 0x5
	.asciz	"TRISF0"
	.byte	0x2
	.2byte	0xdd7
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF1"
	.byte	0x2
	.2byte	0xdd8
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF3"
	.byte	0x2
	.2byte	0xdda
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF4"
	.byte	0x2
	.2byte	0xddb
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISF5"
	.byte	0x2
	.2byte	0xddc
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISFBITS"
	.byte	0x2
	.2byte	0xddd
	.4byte	0x5b2
	.uleb128 0x4
	.asciz	"tagPORTFBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xde2
	.4byte	0x6b5
	.uleb128 0x5
	.asciz	"RF0"
	.byte	0x2
	.2byte	0xde3
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF1"
	.byte	0x2
	.2byte	0xde4
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF3"
	.byte	0x2
	.2byte	0xde6
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF4"
	.byte	0x2
	.2byte	0xde7
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RF5"
	.byte	0x2
	.2byte	0xde8
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTFBITS"
	.byte	0x2
	.2byte	0xde9
	.4byte	0x644
	.uleb128 0x7
	.byte	0x2
	.byte	0x2
	.2byte	0xe70
	.4byte	0x758
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x2
	.2byte	0xe71
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SAMP"
	.byte	0x2
	.2byte	0xe72
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ASAM"
	.byte	0x2
	.2byte	0xe73
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC"
	.byte	0x2
	.2byte	0xe75
	.4byte	0xf5
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM"
	.byte	0x2
	.2byte	0xe76
	.4byte	0xf5
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADSIDL"
	.byte	0x2
	.2byte	0xe78
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADON"
	.byte	0x2
	.2byte	0xe7a
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x2
	.2byte	0xe7c
	.4byte	0x7c6
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x2
	.2byte	0xe7e
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC1"
	.byte	0x2
	.2byte	0xe7f
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC2"
	.byte	0x2
	.2byte	0xe80
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM0"
	.byte	0x2
	.2byte	0xe81
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM1"
	.byte	0x2
	.2byte	0xe82
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x2
	.2byte	0xe6f
	.4byte	0x7da
	.uleb128 0x9
	.4byte	0x6c7
	.uleb128 0x9
	.4byte	0x758
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xe6e
	.4byte	0x7fb
	.uleb128 0xa
	.4byte	0x7c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x2
	.2byte	0xe85
	.4byte	0x7da
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x2
	.2byte	0xf07
	.4byte	0x96e
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x2
	.2byte	0xf08
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG1"
	.byte	0x2
	.2byte	0xf09
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG2"
	.byte	0x2
	.2byte	0xf0a
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG3"
	.byte	0x2
	.2byte	0xf0b
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG4"
	.byte	0x2
	.2byte	0xf0c
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG5"
	.byte	0x2
	.2byte	0xf0d
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG6"
	.byte	0x2
	.2byte	0xf0e
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG7"
	.byte	0x2
	.2byte	0xf0f
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG8"
	.byte	0x2
	.2byte	0xf10
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG9"
	.byte	0x2
	.2byte	0xf11
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG10"
	.byte	0x2
	.2byte	0xf12
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG11"
	.byte	0x2
	.2byte	0xf13
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG12"
	.byte	0x2
	.2byte	0xf14
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG13"
	.byte	0x2
	.2byte	0xf15
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG14"
	.byte	0x2
	.2byte	0xf16
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG15"
	.byte	0x2
	.2byte	0xf17
	.4byte	0xf5
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1PCFGBITS"
	.byte	0x2
	.2byte	0xf18
	.4byte	0x80f
	.uleb128 0xb
	.byte	0x2
	.4byte	0xe4
	.uleb128 0xc
	.asciz	"var_len_byte"
	.byte	0x36
	.byte	0x4
	.byte	0x43
	.4byte	0x9ba
	.uleb128 0xd
	.asciz	"len"
	.byte	0x4
	.byte	0x45
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"val"
	.byte	0x4
	.byte	0x46
	.4byte	0x9ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xe
	.4byte	0xe4
	.4byte	0x9ca
	.uleb128 0xf
	.4byte	0x105
	.byte	0x32
	.byte	0x0
	.uleb128 0x3
	.asciz	"lenVal"
	.byte	0x4
	.byte	0x47
	.4byte	0x988
	.uleb128 0x10
	.asciz	"tagSXsvfInfo"
	.2byte	0x190
	.byte	0x1
	.byte	0x9d
	.4byte	0xb46
	.uleb128 0xd
	.asciz	"ucComplete"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"ucCommand"
	.byte	0x1
	.byte	0xa1
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"lCommandCount"
	.byte	0x1
	.byte	0xa2
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa3
	.4byte	0xc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.asciz	"ucTapState"
	.byte	0x1
	.byte	0xa6
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.asciz	"ucEndIR"
	.byte	0x1
	.byte	0xa7
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0xa8
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.byte	0xab
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.byte	0xac
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.byte	0xaf
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.byte	0xb0
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.asciz	"lvTdi"
	.byte	0x1
	.byte	0xb2
	.4byte	0x9ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.asciz	"lvTdoExpected"
	.byte	0x1
	.byte	0xb3
	.4byte	0x9ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.asciz	"lvTdoCaptured"
	.byte	0x1
	.byte	0xb4
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0xd
	.asciz	"lvTdoMask"
	.byte	0x1
	.byte	0xb5
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.asciz	"lvAddressMask"
	.byte	0x1
	.byte	0xb9
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xee
	.uleb128 0xd
	.asciz	"lvDataMask"
	.byte	0x1
	.byte	0xba
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xd
	.asciz	"lvNextData"
	.byte	0x1
	.byte	0xbb
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x15a
	.byte	0x0
	.uleb128 0x3
	.asciz	"SXsvfInfo"
	.byte	0x1
	.byte	0xbd
	.4byte	0x9d8
	.uleb128 0x3
	.asciz	"TXsvfDoCmdFuncPtr"
	.byte	0x1
	.byte	0xc0
	.4byte	0xb70
	.uleb128 0xb
	.byte	0x2
	.4byte	0xb76
	.uleb128 0x12
	.byte	0x1
	.4byte	0xc0
	.4byte	0xb86
	.uleb128 0x13
	.4byte	0xb86
	.byte	0x0
	.uleb128 0xb
	.byte	0x2
	.4byte	0xb46
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoIllegalCmd"
	.byte	0x1
	.2byte	0x3bd
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0xbc4
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x3bd
	.4byte	0xb86
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXCOMPLETE"
	.byte	0x1
	.2byte	0x3cf
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0xbfb
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x3cf
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXCOMMENT"
	.byte	0x1
	.2byte	0x5ae
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x1
	.byte	0x5f
	.4byte	0xc43
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x5ae
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.asciz	"ucText"
	.byte	0x1
	.2byte	0x5b2
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXENDXR"
	.byte	0x1
	.2byte	0x575
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x1
	.byte	0x5f
	.4byte	0xc94
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x575
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x577
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x578
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXREPEAT"
	.byte	0x1
	.2byte	0x471
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0xcc9
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x471
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSETSDRMASKS"
	.byte	0x1
	.2byte	0x4b8
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0xd03
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x4b8
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXTDOMASK"
	.byte	0x1
	.2byte	0x3dc
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0xd39
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x3dc
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXRUNTEST"
	.byte	0x1
	.2byte	0x462
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0xd6f
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x462
	.4byte	0xb86
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfInfoInit"
	.byte	0x1
	.2byte	0x14c
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0xda3
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x14c
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"xsvfInfoCleanup"
	.byte	0x1
	.2byte	0x166
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0xdd6
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x166
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfGetAsNumBytes"
	.byte	0x1
	.2byte	0x171
	.byte	0x1
	.4byte	0x14d
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0xe14
	.uleb128 0x15
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x171
	.4byte	0xc7
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDRSIZE"
	.byte	0x1
	.2byte	0x480
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0xe58
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x480
	.4byte	0xb86
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x482
	.4byte	0xc0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"xsvfTmsTransition"
	.byte	0x1
	.2byte	0x17d
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0xe8e
	.uleb128 0x19
	.asciz	"sTms"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x14d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfGotoTapState"
	.byte	0x1
	.2byte	0x191
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0xef8
	.uleb128 0x15
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x191
	.4byte	0x982
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.asciz	"ucTargetState"
	.byte	0x1
	.2byte	0x192
	.4byte	0xe4
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.asciz	"i"
	.byte	0x1
	.2byte	0x194
	.4byte	0xc0
	.byte	0x1
	.byte	0x5b
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x195
	.4byte	0xc0
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXWAIT"
	.byte	0x1
	.2byte	0x5d0
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x1
	.byte	0x5f
	.4byte	0xf68
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x5d0
	.4byte	0xb86
	.byte	0x1
	.byte	0x5a
	.uleb128 0x16
	.asciz	"ucWaitState"
	.byte	0x1
	.2byte	0x5d2
	.4byte	0xe4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x5d3
	.4byte	0xe4
	.byte	0x1
	.byte	0x5b
	.uleb128 0x16
	.asciz	"lWaitTime"
	.byte	0x1
	.2byte	0x5d4
	.4byte	0xc7
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSTATE"
	.byte	0x1
	.2byte	0x55f
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x5f
	.4byte	0xfc1
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x55f
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.asciz	"ucNextState"
	.byte	0x1
	.2byte	0x561
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x562
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"xsvfShiftOnly"
	.byte	0x1
	.2byte	0x26b
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1089
	.uleb128 0x15
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x26b
	.4byte	0xc7
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x26c
	.4byte	0x1089
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x26d
	.4byte	0x1089
	.byte	0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x26e
	.4byte	0xc0
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x1a
	.asciz	"pucTdi"
	.byte	0x1
	.2byte	0x270
	.4byte	0x982
	.uleb128 0x16
	.asciz	"pucTdo"
	.byte	0x1
	.2byte	0x271
	.4byte	0x982
	.byte	0x1
	.byte	0x5e
	.uleb128 0x16
	.asciz	"ucTdiByte"
	.byte	0x1
	.2byte	0x272
	.4byte	0xe4
	.byte	0x1
	.byte	0x5c
	.uleb128 0x16
	.asciz	"ucTdoByte"
	.byte	0x1
	.2byte	0x273
	.4byte	0xe4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.asciz	"ucTdoBit"
	.byte	0x1
	.2byte	0x274
	.4byte	0xe4
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.asciz	"i"
	.byte	0x1
	.2byte	0x275
	.4byte	0xc0
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0xb
	.byte	0x2
	.4byte	0x9ca
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfShift"
	.byte	0x1
	.2byte	0x2c3
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x119a
	.uleb128 0x15
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x982
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.asciz	"ucStartState"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xe4
	.byte	0x2
	.byte	0x7f
	.sleb128 -22
	.uleb128 0x15
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xc7
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x1089
	.byte	0x2
	.byte	0x7f
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x1089
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x1089
	.byte	0x2
	.byte	0x7f
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x1089
	.byte	0x2
	.byte	0x7f
	.sleb128 -26
	.uleb128 0x15
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2ca
	.4byte	0xe4
	.byte	0x2
	.byte	0x7f
	.sleb128 -38
	.uleb128 0x15
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2cb
	.4byte	0xc7
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xe4
	.byte	0x2
	.byte	0x7f
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.asciz	"iMismatch"
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xc0
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1a
	.asciz	"ucRepeat"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xe4
	.uleb128 0x17
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xc0
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDR"
	.byte	0x1
	.2byte	0x449
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x11da
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x449
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x44b
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSIR2"
	.byte	0x1
	.2byte	0x41b
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1245
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x41b
	.4byte	0xb86
	.byte	0x1
	.byte	0x5b
	.uleb128 0x16
	.asciz	"lShiftIrBits"
	.byte	0x1
	.2byte	0x41d
	.4byte	0xc7
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x41e
	.4byte	0x14d
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x41f
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSIR"
	.byte	0x1
	.2byte	0x3ee
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x12ac
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x3ee
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x16
	.asciz	"ucShiftIrBits"
	.byte	0x1
	.2byte	0x3f0
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x17
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x14d
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x3f2
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfBasicXSDRTDO"
	.byte	0x1
	.2byte	0x34e
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x136b
	.uleb128 0x15
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x34e
	.4byte	0x982
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x34f
	.4byte	0xc7
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x350
	.4byte	0x14d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x15
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x351
	.4byte	0x1089
	.byte	0x1
	.byte	0x5c
	.uleb128 0x15
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x352
	.4byte	0x1089
	.byte	0x1
	.byte	0x5e
	.uleb128 0x15
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x353
	.4byte	0x1089
	.byte	0x1
	.byte	0x59
	.uleb128 0x15
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x354
	.4byte	0x1089
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x355
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x356
	.4byte	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x357
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDRTDOBCE"
	.byte	0x1
	.2byte	0x542
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x5f
	.4byte	0x13bf
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x542
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x544
	.4byte	0xe4
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x545
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDRBCE"
	.byte	0x1
	.2byte	0x523
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.4byte	0x1410
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x523
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x525
	.4byte	0xe4
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x526
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDRTDO"
	.byte	0x1
	.2byte	0x499
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x1453
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x499
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x49b
	.4byte	0xc0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"xsvfDoSDRMasking"
	.byte	0x1
	.2byte	0x36f
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x1548
	.uleb128 0x15
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x36f
	.4byte	0x1089
	.byte	0x1
	.byte	0x59
	.uleb128 0x19
	.asciz	"plvNextData"
	.byte	0x1
	.2byte	0x370
	.4byte	0x1089
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.asciz	"plvAddressMask"
	.byte	0x1
	.2byte	0x371
	.4byte	0x1089
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.asciz	"plvDataMask"
	.byte	0x1
	.2byte	0x372
	.4byte	0x1089
	.byte	0x1
	.byte	0x5a
	.uleb128 0x16
	.asciz	"i"
	.byte	0x1
	.2byte	0x374
	.4byte	0xc0
	.byte	0x1
	.byte	0x57
	.uleb128 0x16
	.asciz	"ucTdi"
	.byte	0x1
	.2byte	0x375
	.4byte	0xe4
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.asciz	"ucTdiMask"
	.byte	0x1
	.2byte	0x376
	.4byte	0xe4
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x377
	.4byte	0xe4
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.asciz	"ucNextData"
	.byte	0x1
	.2byte	0x378
	.4byte	0xe4
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.asciz	"ucNextMask"
	.byte	0x1
	.2byte	0x379
	.4byte	0xe4
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.asciz	"sNextData"
	.byte	0x1
	.2byte	0x37a
	.4byte	0x14d
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfDoXSDRINC"
	.byte	0x1
	.2byte	0x4db
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0x15d0
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x4db
	.4byte	0xb86
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x4dd
	.4byte	0xc0
	.byte	0x1
	.byte	0x5a
	.uleb128 0x16
	.asciz	"iDataMaskLen"
	.byte	0x1
	.2byte	0x4de
	.4byte	0xc0
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x4df
	.4byte	0xe4
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.asciz	"ucNumTimes"
	.byte	0x1
	.2byte	0x4e0
	.4byte	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.asciz	"i"
	.byte	0x1
	.2byte	0x4e1
	.4byte	0xe4
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfInitialize"
	.byte	0x1
	.2byte	0x606
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x5f
	.4byte	0x1606
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x606
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.asciz	"xsvfRun"
	.byte	0x1
	.2byte	0x61f
	.byte	0x1
	.4byte	0xc0
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x1
	.byte	0x5f
	.4byte	0x1635
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x61f
	.4byte	0xb86
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"xsvfCleanup"
	.byte	0x1
	.2byte	0x63e
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x5f
	.4byte	0x1664
	.uleb128 0x15
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x63e
	.4byte	0xb86
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"xsvfExecute"
	.byte	0x1
	.2byte	0x64f
	.4byte	0xc0
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x1
	.byte	0x5f
	.4byte	0x169d
	.uleb128 0x16
	.asciz	"xsvfInfo"
	.byte	0x1
	.2byte	0x651
	.4byte	0xb46
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF17
	.byte	0x2
	.2byte	0xce4
	.4byte	0x16ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x2c7
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x2
	.2byte	0xcfa
	.4byte	0x16be
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x416
	.uleb128 0x1c
	.4byte	.LASF19
	.byte	0x2
	.2byte	0xda8
	.4byte	0x16d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x4e7
	.uleb128 0x1c
	.4byte	.LASF20
	.byte	0x2
	.2byte	0xdb6
	.4byte	0x16e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x5a0
	.uleb128 0x1c
	.4byte	.LASF21
	.byte	0x2
	.2byte	0xdde
	.4byte	0x16f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x632
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x2
	.2byte	0xdea
	.4byte	0x170a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x6b5
	.uleb128 0x1c
	.4byte	.LASF23
	.byte	0x2
	.2byte	0xe86
	.4byte	0x171d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x7fb
	.uleb128 0x1c
	.4byte	.LASF24
	.byte	0x2
	.2byte	0xf19
	.4byte	0x1730
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x96e
	.uleb128 0xe
	.4byte	0xb57
	.4byte	0x1745
	.uleb128 0xf
	.4byte	0x105
	.byte	0x17
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x120
	.4byte	0x1735
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF17
	.byte	0x2
	.2byte	0xce4
	.4byte	0x16ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF18
	.byte	0x2
	.2byte	0xcfa
	.4byte	0x16be
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF19
	.byte	0x2
	.2byte	0xda8
	.4byte	0x16d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF20
	.byte	0x2
	.2byte	0xdb6
	.4byte	0x16e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF21
	.byte	0x2
	.2byte	0xdde
	.4byte	0x16f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF22
	.byte	0x2
	.2byte	0xdea
	.4byte	0x170a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF23
	.byte	0x2
	.2byte	0xe86
	.4byte	0x171d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF24
	.byte	0x2
	.2byte	0xf19
	.4byte	0x1730
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x120
	.4byte	0x1735
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_xsvf_pfDoCmd
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x257
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17d7
	.4byte	0xb8c
	.asciz	"xsvfDoIllegalCmd"
	.4byte	0xbc4
	.asciz	"xsvfDoXCOMPLETE"
	.4byte	0xbfb
	.asciz	"xsvfDoXCOMMENT"
	.4byte	0xc43
	.asciz	"xsvfDoXENDXR"
	.4byte	0xc94
	.asciz	"xsvfDoXREPEAT"
	.4byte	0xcc9
	.asciz	"xsvfDoXSETSDRMASKS"
	.4byte	0xd03
	.asciz	"xsvfDoXTDOMASK"
	.4byte	0xd39
	.asciz	"xsvfDoXRUNTEST"
	.4byte	0xd6f
	.asciz	"xsvfInfoInit"
	.4byte	0xda3
	.asciz	"xsvfInfoCleanup"
	.4byte	0xdd6
	.asciz	"xsvfGetAsNumBytes"
	.4byte	0xe14
	.asciz	"xsvfDoXSDRSIZE"
	.4byte	0xe58
	.asciz	"xsvfTmsTransition"
	.4byte	0xe8e
	.asciz	"xsvfGotoTapState"
	.4byte	0xef8
	.asciz	"xsvfDoXWAIT"
	.4byte	0xf68
	.asciz	"xsvfDoXSTATE"
	.4byte	0xfc1
	.asciz	"xsvfShiftOnly"
	.4byte	0x108f
	.asciz	"xsvfShift"
	.4byte	0x119a
	.asciz	"xsvfDoXSDR"
	.4byte	0x11da
	.asciz	"xsvfDoXSIR2"
	.4byte	0x1245
	.asciz	"xsvfDoXSIR"
	.4byte	0x12ac
	.asciz	"xsvfBasicXSDRTDO"
	.4byte	0x136b
	.asciz	"xsvfDoXSDRTDOBCE"
	.4byte	0x13bf
	.asciz	"xsvfDoXSDRBCE"
	.4byte	0x1410
	.asciz	"xsvfDoXSDRTDO"
	.4byte	0x1453
	.asciz	"xsvfDoSDRMasking"
	.4byte	0x1548
	.asciz	"xsvfDoXSDRINC"
	.4byte	0x15d0
	.asciz	"xsvfInitialize"
	.4byte	0x1606
	.asciz	"xsvfRun"
	.4byte	0x1635
	.asciz	"xsvfCleanup"
	.4byte	0x1664
	.asciz	"xsvfExecute"
	.4byte	0x17c3
	.asciz	"xsvf_pfDoCmd"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x16c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17d7
	.4byte	0xf5
	.asciz	"uint16_t"
	.4byte	0x15a
	.asciz	"tagTRISBBITS"
	.4byte	0x2c7
	.asciz	"TRISBBITS"
	.4byte	0x2d9
	.asciz	"tagPORTBBITS"
	.4byte	0x416
	.asciz	"PORTBBITS"
	.4byte	0x428
	.asciz	"tagTRISEBITS"
	.4byte	0x4e7
	.asciz	"TRISEBITS"
	.4byte	0x4f9
	.asciz	"tagPORTEBITS"
	.4byte	0x5a0
	.asciz	"PORTEBITS"
	.4byte	0x5b2
	.asciz	"tagTRISFBITS"
	.4byte	0x632
	.asciz	"TRISFBITS"
	.4byte	0x644
	.asciz	"tagPORTFBITS"
	.4byte	0x6b5
	.asciz	"PORTFBITS"
	.4byte	0x7da
	.asciz	"tagAD1CON1BITS"
	.4byte	0x7fb
	.asciz	"AD1CON1BITS"
	.4byte	0x80f
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x96e
	.asciz	"AD1PCFGBITS"
	.4byte	0x988
	.asciz	"var_len_byte"
	.4byte	0x9ca
	.asciz	"lenVal"
	.4byte	0x9d8
	.asciz	"tagSXsvfInfo"
	.4byte	0xb46
	.asciz	"SXsvfInfo"
	.4byte	0xb57
	.asciz	"TXsvfDoCmdFuncPtr"
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
.LASF2:
	.asciz	"ucMaxRepeat"
.LASF25:
	.asciz	"xsvf_pfDoCmd"
.LASF20:
	.asciz	"PORTEbits"
.LASF6:
	.asciz	"pXsvfInfo"
.LASF23:
	.asciz	"AD1CON1bits"
.LASF17:
	.asciz	"TRISBbits"
.LASF24:
	.asciz	"AD1PCFGbits"
.LASF16:
	.asciz	"ucDataMask"
.LASF3:
	.asciz	"lRunTestTime"
.LASF21:
	.asciz	"TRISFbits"
.LASF22:
	.asciz	"PORTFbits"
.LASF18:
	.asciz	"PORTBbits"
.LASF13:
	.asciz	"plvTdoExpected"
.LASF10:
	.asciz	"plvTdi"
.LASF0:
	.asciz	"iErrorCode"
.LASF5:
	.asciz	"sShiftLengthBytes"
.LASF14:
	.asciz	"plvTdoMask"
.LASF8:
	.asciz	"lNumBits"
.LASF15:
	.asciz	"sShiftIrBytes"
.LASF9:
	.asciz	"pucTapState"
.LASF7:
	.asciz	"ucEndState"
.LASF1:
	.asciz	"ucEndDR"
.LASF19:
	.asciz	"TRISEbits"
.LASF11:
	.asciz	"plvTdoCaptured"
.LASF12:
	.asciz	"iExitShift"
.LASF4:
	.asciz	"lShiftLengthBits"
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
