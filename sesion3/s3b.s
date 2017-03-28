# Sessio 3

	.data
# Declara aqui les variables mat1, mat4 i col
mat1: 	.space 120
mat4: 	.word   2, 3, 1,
	 	2, 4, 3

col: 	.word 2


	.text
	.globl main
main:
# Escriu aqui el programa principal
	la $s0, mat1
	la $a0, mat4
	lw $a1, 8($a0)
	la $a2, col
	lw $a2, 0($a2)

	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	jal subr

# mat1 + 108
	sw $v0, 108($s0)

	li $a1, 1
	li $a2, 1

	jal subr

	sw $v0, 0($s0)

	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra

subr:
# Escriu aqui el codi de la subrutina
# mat1 + (j*24 + 20)
	la $t0, mat1
	li $t1, 24
	mult $a2, $t1
	mflo $t2
	addu $t2, $t2, $t0

# x + i*12 + j*4
	sll $t3, $a2, 2
	li $t1, 12
	mult $a1, $t1
	mflo $t4
	addu $t5, $t4, $t3
	addu $t5, $t5, $a0

	lw $t6, 0($t5)
	sw $t6, 20($t2)

	move $v0, $a1
	jr $ra
