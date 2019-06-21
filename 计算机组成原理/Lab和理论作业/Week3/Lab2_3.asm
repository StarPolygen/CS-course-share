.include "macro_print_str.asm" 


.text 
 	main:

 	#read the integer x
 	print_string("Please input Integer x: ")
 	li $v0 5
 	syscall
 	
 	#compute 10x = 8x + 2x =x<<3 + x<<1
 	move $t0 $v0 #t0 is x
 	sll $t1 $t0 3
 	sll $t2 $t0 1
 	add $t3 $t2 $t1
 	
 	#print the result 10x
 	print_string("The result of 10x : ")
 	li $v0 1
 	move $a0 $t3
 	syscall
 	
 	end