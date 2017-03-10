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
	
	jr $ra		# main retorna al codi de startup