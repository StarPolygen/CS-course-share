.include "macro_print_str.asm" 

.data
	num:.word 0
.text 
 	main:
 	#t5 is address of wrd
 	la $t5 num
 	
 	#read the integer
 	print_string("Please input an Integer :")
 	li $v0 5
 	syscall
 	
 	#print the hexadecimal form of the original integer
 	sw $v0 ($t5)
 	print_string("Hexadecimal form before exchange :")
 	li $v0 34
 	lw $a0 ($t5)
 	syscall
 	
 	#exchage the lowest byte and the highest byte
 	lb $t0 ($t5)
 	lb $t1 3($t5)
 	sb $t0 3($t5)
 	sb $t1 ($t5)
 	
 	#print the result after exchange
 	print_string("\nHexadecimal form after exchange  :")
 	li $v0 34
 	lw $a0 ($t5)
 	syscall
 	
 	end
 	