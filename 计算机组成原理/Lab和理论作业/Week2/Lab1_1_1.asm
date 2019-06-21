.data
	# define the variables and notes that will be used in memory
	a: .word 1
	b: .word 2
	c: .word 3
	d: .word 4
	n: .asciiz"\n"
	str1: .asciiz "The Quotient is: "
	str2: .asciiz " ,reminder is: "
	sid: .asciiz "SID: 11710823"
	name: .asciiz "Name: Yanbin Wei"
	note: .asciiz "Set a=1,b=2,c=3,d=4, calculate (a+b*c)/d."
.text
	main:
	#load a,b,c,d from memory to the registers
	lw $t0 a	#t0: 1
	lw $t1 b	#t1: 2
	lw $t2 c	#t1: 3
	lw $t3 d	#t2: 4
	
	#print the note: value and question
	li $v0 4 	#v0: 4
	la $a0 note #a0: the adress of note
	syscall	#print the notation
	la $a0 n    #a0: the adress of n
	syscall	#change a line
	
	#compute the formula
	mul $t4 $t1 $t2   #t4: 6
	add $t5 $t0 $t4	#t5: 7
	divu $t5 $t3	#lo: 1 hi: 3
	mflo $t6		#t6: 1
	mfhi $t7		#t7£º3
	
	#print the quotient
	li $v0 4		#v0: 4
	la $a0 str1		#a0: address of str1
	syscall		#print note str1
	li $v0 1    	#v0: 1
	move $a0 $t6	#a0: 1
	syscall		#print the quotient
	
	#print the reminder
	li $v0 4		#v0: 4
	la $a0 str2		#a0: address of str2
	syscall		#print note str2
	li $v0 1		#v0: 1
	move $a0 $t7	#a0: 3
	syscall 		#print reminder
	li $v0 4		#v0: 4
	la $a0 n		#a0: address of n
	syscall		#change a line
	
	#print my student sid
	li $v0 4		#v0: 4
	la $a0 sid		#a0:address of sid
	syscall		#print my student id
	la $a0 n		#a0:address of n
	syscall		#change a line
	
	#print my name
	la $a0 name		#a0:address of name
	syscall		#print my name
	la $a0 n		#a0: the address of n
	syscall		#change a line
	
	#exit the program
	li $v0 10		#v0: 10
	syscall		#exit
