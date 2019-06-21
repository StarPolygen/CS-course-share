.include "macro_print_str.asm" 


.text 
 	main:

 	#read the integer x
 	print_string("Please input Integer x: ")
 	li $v0 5
 	syscall
 	
 	#compute -x
 	move $t0 $v0
 	slt $t1 $t0 $zero
 	li $t2 0xFFFFFFFF
 	xor $t2 $t2 $t0
 	addi $t2 $t2 1
 	
 	#print the abs,use beq to choose -x or x
 	print_string("The abs of x :")
 	li $v0 1
 	beq $t1 0 L1
 	move $a0 $t2
 	syscall
 	end
 	L1:
 	move $a0 $t0
 	syscall
 	end