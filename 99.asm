.word $0801
.org  $0801
.scope
	.word _next, 10
	.byte $9e,"2061",0
_next:	.word 0
.scend
.alias	p	$ffd2
main:
	ldx #9
	ldy #9
	txa
	sed
*	sty $10
	stx $11
	ora #$30
	jsr p
	lda #42
	jsr p
	tya
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
	ldy $10
	dey
	beq +
	lda #160
	jsr p
	jmp --
*	lda #13
	jsr p
	dex
	beq +
	txa
	tay
	jmp ---
*	rts
