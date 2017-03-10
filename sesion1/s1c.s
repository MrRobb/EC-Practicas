# PRACTICA 1 #######################

	.data
	
aa:	.byte -5
bb:	.half -344
cc:	.dword -3
dd:	.byte 0xA0
ee:	.word 5799
ff:	.half -1

	.text
	.globl main
main:	
	la $s0, aa
	lb $s1,0($s0)
	
	la $s0, bb
	lh $s2, 0($s0)
	
	la $s0, cc
	lw $s3, 0($s0)
	lw $s4, 4($s0)
	
	la $s0, dd
	lbu $s5, 0($s0)
	
	la $s0, ff
	lh $s6, 0($s0)
	
	sh $s1, 0($s0)
	
	jr $ra		# main retorna al codi de startup
