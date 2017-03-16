	.data

	.text
	.globl main
main:
	li $s1, 23 # Y
	li $s0, 8  # X


	li $t0, 1
	sllv $t0, $t0, $s0
	addiu $t0, $t0, -1
	xor $s1, $s1, $t0
	
	jr $ra
