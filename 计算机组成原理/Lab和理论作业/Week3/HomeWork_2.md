# HomeWork_2

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## chapter 2



##### Exercise 2.1

~~~assembly
addi f, h, -5 
add f, f, g
~~~

##### Exercise 2.3

~~~assembly
sub $t0, $s3, $s4   	#get i-j
li $t1, 4			   
mult $t0,$t1		    #calculate shift bits of A[i-j] form A[0]
mflo $t0
add $t0, $s6, $t0		#get address of A[i-j]
lw $t2, 0($t0)			#load A[i-j] in $t0
sw $t2, 32($s7)			#store A[i-j] to B[8]
~~~

##### Exercise 2.6

2.6.1 

~~~C
C code:
int tmp1 = Array[0];
int tmp2 = Array[3];

Array[0] = Array[4];
Array[3] = Array[1];

Array[1] = tmp1;
Array[4] = tmp2;

说明：模拟过程
2 4 3 6 1 ——>
1 4 3 4 1 ——>
1 2 3 4 6
~~~

2.6.2

~~~
lw $t0 ($s6)
lw $t1 12($s6)

lw $t2 16($s6)
sw $t2 ($s6)
lw $t3 4($s6)
sw $t3 12($s6)

sw $t0 4($s6)
sw $t1 16($s6)
~~~

##### Exercise 2.12

​	**2.12.1**

​		the value of $t0 : 0x50000000.

​	**2.12.2**

​		It has been Overflow.

​	**2.12.3**

​		0xB0000000

​	**2.12.4**

​		There is No overflow.

​	**2.12.5**

​		0xD0000000

​	**2.12.6**

​		It has been overflow.

##### Exercise 2.16

​	By the premises: op=0, rs=3, rt=2, rd=3, shamt=0, funct=34, we get

​	Answer:

​	Instruction type :    R-type

​	Instruction:             sub \$v1, \$v1, $v0,

​	Binary Instrcution: 00000000011000100001100000100010

​	Hex Insruction:       0x00621822