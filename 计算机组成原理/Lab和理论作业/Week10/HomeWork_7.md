# HomeWork_7

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## chapter 5



##### Exercise 5.3 

> ![1557675773290](C:\Users\lenovo\AppData\Local\Temp\1557675773290.png)

##### §  5.3.1 

​	The offset part contains 4-0 totally 5 bits, and there are 2 bits is byte offset.

​	So :   	block size =  2 ^ (5-2) = 8 words

##### §  5.3.2

​	The index part contains 9-5 totally 5 bits.

​	So:		entries numbers: 2 ^ 5 = 32

##### §  5.3.3

​	The total bits  required of cache contains three parts :   data storage bits、tag bits 、valid field  .

​	And Tag bits contains (31-10+1) totally 22 bits. By previous, we have known that  block size is 8 word,

​	also 8 * 32 in bits.

​	So total bits  required can be calculated as follows:

​		enties numbers * (Tag bits + valid bit + block size in bits)

​	      = 32 * (22 + 1 + 8 * 32)

​	      = 8928  bits

​	And only the data storage has:

​		enties numbers * (block size * 32)

​	       = 32 * (8*32) 

​	       = 8192  bits

​	The ratio  between total bits required for such a cache  implementation over the data storage bits is:

​		8928 / 8192 = 1.0898 = 1.090

##### §  5.3.4

![1557677220519](C:\Users\lenovo\AppData\Local\Temp\1557677220519.png)	



1)	First Rewrite these address as 32 bits binary form , and divided them into Tag , Index and Offset three parts ,list as table:

​			Tag (31-10)	            Index (9-5)	   Offset (4-0)

​	0 = 0000000000000000000000 | 	00000 	| 	00000		Miss

​	4 = 0000000000000000000000 | 	00000 	| 	00100		Hit

​       16= 0000000000000000000000 | 	00000 	| 	10000		Hit

​     132= 0000000000000000000000 | 	00100 	| 	00100		Miss

  //   232= 0000000000000000000000 | 	00111 	| 	01000		Miss

  //   160= 0000000000000000000000 | 	00101 	| 	00000		Miss

   1024= 0000000000000000000001 | 	00000 	| 	00000		Miss

​       30= 0000000000000000000000 | 	00000 	| 	11110		Miss

​     140= 0000000000000000000000 | 	00100 	| 	01100		Hit

  // 3100= 0000000000000000000011 | 	00000 	| 	11100		Miss

​     180= 0000000000000000000000 | 	00101 	| 	10100		Hit

 //  2180= 0000000000000000000010 | 	00100 	| 	00100		Miss

 When MEM[1024] insert, MEM[0] be replaced.

 When MEM[30] insert, MEM[1024] be replaced.

 When MEM[3100] insert, MEM[30] be replaced.

 When MEM[2180] insert, MEM[132] be replaced.

##### §  5.3.5

Only Tag and Index both satisfed then hit occurs.

By analysising above table, we find that  when access 4, 16, 140, 180 hit occurs, others are Miss conditions.

So the hit ratio is:

4 / 12 = 1/ 3 = 0.333...

#####  §  5.3.6

By analysising above table in $ 5.3.4

<Index, tag, data >:

<00000,  0000000000000000000011,  MEM[3072] to MEM[3103]>

<00100,  0000000000000000000010,  MEM[2176] to MEM[2207]>

<00101,  0000000000000000000000,  MEM[160] to MEM[191]>

<00111,  0000000000000000000000,  MEM[224] to MEM[255]>