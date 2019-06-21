.data
	wel:	.asciiz "Welcome to use the simple arithmetic calculator on unsigned 31bit number: \nPlease input operator: "
	addend:.asciiz"\nPlease input addend: "
	augend:.asciiz"Please input augend: "
	muland:.asciiz"\nPlease input multiplicand: "
	mulier:.asciiz"Please input multiplier: "
	ansa1: .asciiz"The sum of "
	ansa2: .asciiz" and "
	ansm1: .asciiz"The product of "
	ansm2: .asciiz" with "
	ans3:.asciiz " is: "
	operror1:.asciiz "\nThe  operator "
	operror2:.asciiz " is not supported ,exit "
.text
	#print welcome text,and ask user input operator.
	la $a0 wel
	li $v0 4
	syscall
	li $v0 12
	syscall
	move $t0 $v0
	#IF operator "+",turn to process addition. IF "*" turn to process multiplication
	beq $v0 43 addition
	beq $v0 42 mulition
	#Else operator is not supported. Print messege and exit.
	la $a0 operror1
	li $v0 4
	syscall
	move $a0 $t0
	li $v0 11
	syscall
	la $a0 operror2
	li $v0 4
	syscall
	#exit
	li $v0 10
	syscall
addition:
	#read addend, store in $s0
	la $a0 addend
	li $v0 4
	syscall
	li $v0 5
	syscall
	move $s0 $v0
	#read sugend, store in $s1
	la $a0 augend
	li $v0 4
	syscall
	li $v0 5
	syscall
	move $s1 $v0
	#compute sum in $s2
	add $s2 $s0 $s1
	#identify overflow.If overflow,the highest bit of $s2 be 1, trigger trap
	srl $s3 $s2 31
	teqi $s3 1 
	#Else no overflow, print sum in $s2
	la $a0 ansa1
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s0
	syscall
	la $a0 ansa2
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s1
	syscall
	la $a0 ans3
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s2
	syscall
	li $v0 10
	syscall
mulition:
	#read multiplicand, store in $s0
	la $a0 muland
	li $v0 4
	syscall
	li $v0 5
	syscall
	move $s0 $v0
	#read multiplier, store in $s1
	la $a0 mulier
	li $v0 4
	syscall
	li $v0 5
	syscall
	move $s1 $v0
	#compute sum in $s2
	mult $s0 $s1
	#identify overflow.If (lo highest bit is 1) or ($hi should not be 0), trigger trap.
	mflo $s3
	srl $s3 $s3 31
	teqi $s3 1
	mfhi $s3 
	tnei $s3 0 
	#Else no overflow, print product in $lo
	mflo $s2
	la $a0 ansm1
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s0
	syscall
	la $a0 ansm2
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s1
	syscall
	la $a0 ans3
	li $v0 4
	syscall
	li $v0 1
	move $a0 $s2
	syscall
	li $v0 10
	syscall

#Trap 
.ktext 0x80000180  
	#print exception info and epc address
	la $a0 Exl	
	li $v0 4
	syscall
	mfc0 $a0 $14
	li $v0 34
	syscall
	#According to different exception type, print corresponding text.
	beq $t0 42 prodoverflow
	sumoverflow: la $a0 Exra
			 li $v0 4
			 syscall
			 #Exit
			 li $v0 10
			 syscall
	prodoverflow:la $a0 Exrm
			 li $v0 4
			 syscall
			 #Exit
			 li $v0 10
			 syscall
.kdata 
	Exl:.asciiz "Runtime exception at "
	Exra:.asciiz " ,the sum is overflow\n"
	Exrm:.asciiz " ,the product is bigger than the Max value of a word\n"
