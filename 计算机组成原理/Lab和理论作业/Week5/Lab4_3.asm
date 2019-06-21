.data
 	spac: .asciiz " "
 	n: .asciiz"\n"
.text
.globl main
main:
	li $s0 1
	li $s1 1
	li $s2 10
	loop2: 
		 addi $s1 $s1 1
		 move $a0 $s1
		 jal test_prime
		 beq $v0 1 print 
	loopp: blt $s0 101 loop2
		 li $v0 10
		 syscall 
	print:
		li $v0 1
		syscall
		la $a0 spac
		li $v0 4
		syscall
		div $s0 $s2
		mfhi $t3
		bne $t3 0 noline
		li $v0 4
		la $a0 n
		syscall
	noline:
		addi $s0 $s0 1
		j loopp
	
	
	
test_prime:
	li $t0 2
      li $v0 1
	loop: div $a0 $t0 
		mfhi $t1
		beq $t1 0 rtn
		addi $t0 $t0 1
		blt $t0 $a0 loop
		jr $ra
	rtn:  li $v0 0
		jr $ra
