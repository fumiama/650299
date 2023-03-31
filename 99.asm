.word $0801
.org  $0801
.scope
	.word _next, 10
	.byte $9e,"2061",0
_next:	.word 0
.scend
.alias	p	$ffd2
.text
main:
	ldx #9
	txa
	tay
	sed
*	stx $11
	txa
	ora #$30
	jsr p
	lda #42
	jsr p
	tya
	pha
	ora #$30
	jsr p
	lda #61
	jsr p
	lda #0
	clc
*	adc $11
	dey
	bne -
	tay
	lsr
	lsr
	lsr
	lsr
	ora #$30
	jsr p
	tya
	and #$0f
	ora #$30
	jsr p
	lda #160
	jsr p
	pla
	tay
	dey
	bne --
*	lda #13
	jsr p
	dex
	txa
	tay
	bne ---
	cld
	rts
