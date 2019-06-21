#使用Lab课件给定的递归求fib代码求解fib（5）
.text
main:
li $a0 5   	#n=5
jal fib	#调用fib 过程

#将答案按照syscall 要求输出
move $a0 $v0
li $v0 1
syscall
# Exit
li $v0 10
syscall

#递归求fibonacci
fib:	addi $sp $sp -12
	sw $ra 8($sp)
	sw $s0 4($sp)
	sw $a0 0($sp)
	bgt $a0 $0 test2
	add $v0 $0 $0
	j rtn
	test2: addi $t0 $0 1
	 bne $t0 $a0 gen
	 add $v0 $0 $t0
	 j rtn
	gen:	subi $a0 $a0 1
	jal fib
	add $s0 $v0 $0
	subi $a0 $a0 1
	jal fib
	add $v0 $v0 $s0
	rtn:	lw $a0 0($sp)
	lw $s0 4($sp)
	lw $ra 8($sp)
	addi $sp $sp 12
	jr $ra
