	# Sessio 3

	.data 
mat:	.word 0,0,2,0,0,0
	.word 0,0,4,0,0,0
	.word 0,0,6,0,0,0
	.word 0,0,8,0,0,0

resultat: .space 4

	.text 
	.globl main

main:
# Escriu aqui el teu codi del main
	la $a0, mat

	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	jal suma_col
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	la $t9, resultat
	sw $v0, 0($t9)
	
	jr $ra

suma_col:
# Escriu aqui el teu codi de la subrutina

	li $v0, 0
	addiu $t0, $a0, 8
	li $t1, 0
	li $t3, 4

for: 	lw $t2, 0($t0)
	addu $v0, $v0, $t2
	addiu $t0, $t0, 24  # 6*4
	addiu $t1, $t1, 1
	blt $t1, $t3, for
	
	jr $ra