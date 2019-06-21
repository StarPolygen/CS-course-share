.data
	str: .asciiz "a","b","c"
.text
	#load "a","b","c" to regester
	li $v0 4		#v0 4
	la $a0 str		#a0:address of str
	lb $t0 ($a0)	#t0:ascii of a
	lb $t1 2($a0)	#t1:ascii of b
	lb $t2 4($a0)	#t2:ascii of c
	
	#use sub to decrease ascii
	subi $t0,$t0,32	#t0: ascii of A
	subi $t1,$t1,32	#t1: ascii of B
	subi $t2,$t2,32	#t2: ascii of C
	
	#store the result return to the memory
	sb $t0 ($a0)	
	sb $t1 2($a0)
	sb $t2 4($a0)
	syscall		#print A
	addi $a0,$a0,2	#a0: address of str+2
	syscall		#print B
	addi $a0,$a0,2	#a0: address of str+4
	syscall		#print C
	
	#exit
	li $v0 10		
	syscall		#exit
