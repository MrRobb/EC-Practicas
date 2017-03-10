# PRACTICA 1 #######################

	.data
	
cadena:	.byte -1, -1, -1, -1, -1, -1
vec:	.word 5, 6, 8, 9, 1

	.text
	.globl main
	
main:	move $s0, $zero
	
while:	li $t0, 5
	bge $s0, $t0, fi
	
	sll $t1, $s0, 2
	la $t2, vec
	addiu $t2, $t2, 16
	subu $t2, $t2, $t1
	lw $t3, 0($t2)
	addiu $t3, $t3, '0'
	la $t4, cadena
	addu $t4, $t4, $s0
	sb $t3, 0($t4)
	
	addiu $s0, $s0, 1
	b while
	
fi:	la $t5, cadena
	sb $zero, 5($t5)
	
	li $v0, 4
	la $a0, cadena
	syscall

	jr $ra		# main retorna al codi de startup
