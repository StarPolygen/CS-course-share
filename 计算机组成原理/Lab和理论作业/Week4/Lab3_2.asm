.data
	str: .space 100
.text
	li $a1 99
	li $v0  8
	la $a0 str
	li $s0 0
	syscall
	
count:add $s1 $s0 $a0
	lb $s2 ($s1)    
	beq $s2 0 Inv
	addi $s0 $s0 1
	j count
	# $s1 is address of \0

Inv:	subi $s1 $s1 1	
	lb $t0 ($a0)
	lb $t1 ($s1)
	sb $t0 ($s1)
	sb $t1 ($a0)
	addi $a0 $a0 1
 	blt $a0 $s1 Inv
 
print:li $v0 4
	la $a0 str
	syscall
 
exit:	li $v0 10
	syscall 	