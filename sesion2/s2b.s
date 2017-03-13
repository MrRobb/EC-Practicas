	.data
result: .word 0
num:	.byte '7'

	.text
	.globl main
	
main:	la $t1, num		# &num
	lb $t1, 0($t1)		# t1 = num
	la $t2, result		# &result
if1:	li $t0, 'a'
	blt $t1, $t0, if2	# num < 'a'
	li $t0, 'z'
	ble $t1, $t0, then1	# num <= 'z'
if2:	li $t0, 'A'
	blt $t1, $t0, else1	# num < 'A'
	li $t0, 'Z'
	bgt $t1, $t0, else1	# num > 'Z'
then1:	sw $t1, 0($t2)		# result = num
	b fi

else1:	li $t3, '0'
	blt $t1, $t3, then3	# num < '0'
else2:	li $t0, '9'
	bgt $t1, $t0, then3	# num > '9'
then2:	subu $t1, $t1, $t3
	sw $t1, 0($t2)		# result = num - '0'
	b fi

then3:	li $t1, -1
	sw $t1, 0($t2)		# result = -1

fi:	jr $ra