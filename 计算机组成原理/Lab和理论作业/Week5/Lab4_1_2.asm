#循环求解fib（5）
#MIPS代码基本与以下C代码对应
#int fib(int n) {   //循环
#	int fn;
#	int f1 = 1;
#	int f2 = 1;
#	int i = 2;
#	if(n < 1) fn = 0, return fn;
#	if(n == 1) fn = 1, return fn;
#	if(n == 1) fn = 1, return fn;
#	else{
#		for(i ;i<n;i++) {
#			fn = f1 + f2;
#			f1 = f2;
#			f2 = fn;
#		}
#		return fn;
#	}
# }


.text 
main:
	li $s0 5    			#int n=5
	li $s1 1				#int f1=1
	li $s2 1				#int f2=1
	li $s3 2				#int i=2
	fib: 	
	blt $s0 1 less0 			#if(n<1) jump to less0
	beq $s0 1 equ1			#if(n==1) jump to equ1
	beq $s0 2 equ2 			#if(n==2) jump to equ2
	j loop	    			#else n>=3 jump to loop to compute 
	less0: li $s7 0 			#if(n<1) fn=0 return fn
		 j print
	equ1:	 li $s7 1 			#if(n==1) fn=1 return fn
		 j print
	equ2:	 li $s7 1 			#if(n==2) fn=1 return fn
		 j print	
	loop:					#if (n>=3) for(i ;i<n;i++) {
		add $s7 $s1 $s2  		# 			fn = f1 + f2;
		move $s1 $s2		# 			f1 = f2
		move $s2 $s7		#			f2 = fn
		addi $s3 $s3 1	
		blt $s3 $s0 loop 		#		}
		j print			# return fn;
	
	# print answer	
	print:	
	li $v0 1
	move $a0 $s7
	syscall
	# Exit
	li $v0 10  
	syscall
