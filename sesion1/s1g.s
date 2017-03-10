# PRACTICA 1 #######################

	.data
	
fib:	.space 40

	.text
	.globl main
	
main:	li $s0, 2
	la $t2, fib
	sw $zero, 0($t2)
	li $t1, 1
	sw $t1, 4($t2)
	
while:	slti $t0, $s0, 10
	beq $t0, $zero, fi
	
	sll $t3, $s0, 2
	addu $t4, $t2, $t3
	lw $t5, -4($t4)
	lw $t6, -8($t4)
	addu $t5, $t5, $t6
	sw $t5, 0($t4)
	
	addiu $s0, $s0, 1
	b while
	
fi:	jr $ra		# main retorna al codi de startup
