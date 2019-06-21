.data
	Invalid: .asciiz "Invalid Entry.\n"
	n1:.asciiz "One "
	n2:.asciiz "Two "
	n3:.asciiz "Three "
	n4:.asciiz "Four "
	n5:.asciiz "Five "
	n6:.asciiz "Six "
	n7:.asciiz "Seven "
	n8:.asciiz "Eight "
	n9:.asciiz "Nine "
	n0:.asciiz "Zero "
.text

#read the number n
 li $v0 5
 syscall
 
#if n not positive ,print message
 blt $v0 1 Message

#loop to figure out and store the names of the digits 
#method: 
#Initially,$s0 is the input number n
#Every loop $s0/10 ,the reminder is digit number,push to stack, and the quocient is assigned to update $s0
#Use a counter $t2 record the times of loops 
 move $s0 $v0
 li $t0 10
 li $t2 0
 loop: 	
 	div $s0 $t0
 	mflo $s0
 	subi $sp $sp 1
 	mfhi $t1
 	sb $t1 0($sp)
 	addi $t2 $t2 1
 	bne $s0 0 loop
 
 #loop to print the names of the digits
 #method:
 #Fetch digits from the stack top one by one
 #For every digit : print corresponding name use branch
 #Until all the number of digits has been fetched and handled  
 li $v0 4
 loop2:
 	lb $t0 0($sp)
 	beq $t0 0 print0
 	beq $t0 1 print1
 	beq $t0 2 print2
 	beq $t0 3 print3
 	beq $t0 4 print4
 	beq $t0 5 print5
 	beq $t0 6 print6
 	beq $t0 7 print7
 	beq $t0 8 print8
 	beq $t0 9 print9
test:	addi $sp $sp 1
 	subi $t2 $t2 1
 	beq $t2 0 Exit
	bne $t2 0 loop2

# branch to print name of digits  	 	
print0:la $a0 n0 
	syscall 
	j test
print1:la $a0 n1 
	syscall 
	j test
print2:la $a0 n2 
	syscall 
	j test
print3:la $a0 n3 
	syscall 
	j test
print4:la $a0 n4 
	syscall 
	j test
print5:la $a0 n5 
	syscall 
	j test
print6:la $a0 n6 
	syscall 
	j test
print7:la $a0 n7 
	syscall 
	j test
print8:la $a0 n8 
	syscall 
	j test
print9:la $a0 n9 
	syscall 
	j test
	
#dismiss the condition (n is positive)	 	
 Message:
 li $v0 4
 la $a0 Invalid
 syscall
 
 #exit safely
 Exit:
 li $v0 10
 syscall
