	.data
signe:		.word 0
exponent:	.word 0
mantissa:	.word 0
cfixa:		.word 0x87D18A00
cflotant:	.float 0.0

	.text
	.globl main
main:
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)

	la	$t0, cfixa
	lw	$a0, 0($t0)
	la	$a1, signe
	la	$a2, exponent
	la	$a3, mantissa
	jal	descompon

	la	$a0, signe
	lw	$a0,0($a0)
	la	$a1, exponent
	lw	$a1,0($a1)
	la	$a2, mantissa
	lw	$a2,0($a2)
	jal	compon

	la	$t0, cflotant
	swc1	$f0, 0($t0)

	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	jr	$ra


descompon:
	li 	$t0, 18			# exp = 18
	slt 	$t1, $a0, $zero		# t1 = cf < 0
	sw 	$t1, 0($a1)		# t1 -> signe
	sll 	$a0, $a0, 1
	
	bne	$a0, $zero, cond	# cf != 0
if:	li	$t0, 0			# exp = 0
	b 	fiif
	
while:	sll 	$a0, $a0, 1		# cf = cf << 1
	addiu	$t0, $t0, -1		# exp--

cond:	bge 	$a0, $zero, while	# cf >= 0

	srl	$a0, $a0, 8		# cf = cf >> 8
	li	$t2, 0x7FFFFF
	and	$a0, $a0, $t2		# cf = cf & 0x7FFFFF
	addiu	$t0, $t0, 127

fiif:	sw	$t0, 0($a2)
	sw 	$a0, 0($a3)
	jr	$ra

compon:
	sll	$v0, $a0, 31
	sll	$a1, $a1, 23
	or	$v0, $v0, $a1
	or	$v0, $v0, $a2
	mtc1	$v0, $f0
	jr	$ra

