# PRACTICA 1 #######################

	.data
	
A:	.word 3,5,7
punter:	.word 0

	.text
	.globl main
	
main:	la $t0, punter
	la $t1, A
	addiu $t1, $t1, 8
	sw $t1, 0($t0)
	
	lw $t0, 0($t0)
	lw $t0, 0($t0)
	addiu $s0, $t0, 2
	
	la $t0, punter
	lw $t0, 0($t0)
	addiu $t0, $t0, -8
	lw $t0, 0($t0)
	addu $s0, $s0, $t0
	
	la $t0, A
	sw $s0, 4($t0)
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	jr $ra		# main retorna al codi de startup
