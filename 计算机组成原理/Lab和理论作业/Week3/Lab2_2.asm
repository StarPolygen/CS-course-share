.include "macro_print_str.asm" 
.data 
	num: .word 0 
.text 
	main:
	#t5 is address of wrd
 	la $t5 num
 	
	#read the integer
 	print_string("Please input an Integer : ")
 	li $v0 5
 	syscall
 	
 	#print the Binary form of the original integer
 	sw $v0 ($t5)
 	print_string("Binary form before odd Inverse : ")
 	li $v0 35
 	lw $a0 ($t5)
 	syscall
 	
 	#do the odd bits inverse
 	li $t0 0xAAAAAAAA
 	lw $t1 ($t5)
 	xor $t2 $t0 $t1
 	
 	print_string("\nBianry form after odd Inverse  : ")
 	li $v0  35
 	move $a0 $t2
 	syscall
 	
 	end