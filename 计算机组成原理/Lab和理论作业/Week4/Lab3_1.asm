.data :
	arr: .space 410
	space: .asciiz " "
	en:.asciiz "\n"
.text :
	main:
	la $s0 arr
	li $t0 1
	li $t1 1
	li $t2 1
	
LPX:  addi $t1 $t0 0                      #loop for x from 1 to 20
	LPY:	addi $t2 $t1 0					 #loop for y from x to 20
		LPZ: 	li $t3 0					  #loop for z from y to 20
			li $t4 0
			mul $t3 $t0 $t0				#compute t= x*x+y*y+z*z+xy+xz+yz 
			add $t4 $t4 $t3
			mul $t3 $t1 $t1
			add $t4 $t4 $t3
			mul $t3 $t2 $t2
			add $t4 $t4 $t3
			mul $t3 $t0 $t1
			add $t4 $t4 $t3
			mul $t3 $t0 $t2
			add $t4 $t4 $t3
			mul $t3 $t1 $t2
			add $t4 $t4 $t3
			li $t6 399						#identify whether t satisfy  
			slt $t3 $t4 $t6
			bne $t3 1 c
			add $t5 $s0 $t4
			li $t3 1
			sb $t3 ($t5)
			c:addi $t2 $t2 1
			ble $t2 20 LPZ					#control z loop
		addi $t1 $t1 1
		ble $t1 20 LPY						#control y loop
	addi $t0 $t0 1
	ble $t0 20 LPX							#control x loop

#Traverse to print
li $s1 0
li $s5 1
wrp:	add $s2 $s1 $s0		#loop to traverse array to print t
	lb $s3 ($s2) 
	bne $s3 1 n
	li $v0 1
	addi $a0 $s1 0
	syscall
	addi $s5 $s5 1
	beq $s5 20 L		#if print 20 numbers, then change a line
	la $a0 space
	li $v0 4
	syscall
	j n
    L:li $s5 0			#change a line
    	la $a0 en
    	li $v0 4
    	syscall
    	j n
    n:addi $s1 $s1 1		#control loop
	ble $s1 400 wrp
