 #cout<<"请输入一个需要求平方根的数：";
 #unsigned int n;
 #scanf("%d", &n);
 #double last = 0;
 #double left = 0;
 #double right = n;
 #double mid = left + (right - left)/2;
 #do
 #{
  #if(mid > n / mid)
  # right=mid; 
  #else 
  # left=mid;
  #last = mid;
  #mid = left + (right - left)/2;       
 #}while(fabsf(mid-last) > eps);   //求浮点数x的绝对值
 #printf("%d的平方根为%f", n, mid);
.data
zero:.float 0
two :.float 2
neo:.float -1
mes:.asciiz"negative!\n"
mess:.asciiz"squt: "
.text
	lwc1 $f13 zero
	li $v0 6
	syscall
	mov.s $f1 $f0	#f1 is number n
	li $v0 6
	syscall
	mov.s $f2 $f0	#f2 is precise eps
	lwc1 $f3 zero	#f3 is last
	lwc1 $f4 zero	#f4 is left
	mov.s $f5 $f1	#f5 is right
	c.eq.s $f1 $f3
	bc1t zero1
	c.lt.s $f1 $f3
	bc1t nega
	lwc1 $f6 two
	div.s $f6 $f1 $f6	#f6 is mid
	lwc1 $f17 two
	
loop: 
	div.s $f7 $f1 $f6 #f7 is n/mid
	c.lt.s $f7 $f6
	bc1f else
	if:mov.s $f5 $f6   #rigfht=mid
	j nex
	else:mov.s $f4 $f6#left=mid
	j nex
	
	nex:			
	mov.s $f3 $f6		#last=mid
	sub.s $f8 $f5 $f4		#r-l
	div.s $f8 $f8 $f17	#r-l/2
	add.s $f6 $f4 $f8		#mid=l+(r-l)/2
	
	sub.s $f9 $f6 $f3		#|mid-last|
	c.lt.s $f9 $f13
	bc1f nxt2
	fan:
	lwc1 $f14 neo
	mul.s $f9 $f9 $f14
	nxt2:
	c.lt.s $f2 $f9
	bc1t loop
	
	la $a0 mess
	li $v0 4
	syscall
	mov.d $f12 $f6
	li $v0 2
	syscall
	li $v0 10
	syscall
	
zero1:
	li $v0 1
	li $a0 0
	syscall
	li $v0 10
	syscall
nega:
	la $a0 mes
	li $v0 4
	syscall
	li $v0 10
	syscall
	
