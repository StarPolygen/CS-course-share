# HomeWork_8

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## chapter 5



##### Exercise 5.6 

##### §  5.6.1 

​	For P1: clock rate = 1/0.66 ns = 1/(0.66×10^-9) = 1.515 × 10^9 Hz = 1.52GHz

​	For P2: clock rate = 1/0.90ns = 1/(0.90×10^-9) = 1.111 × 10^9 Hz = 1.11GHz	

##### §  5.6.2

​	Average memory access Time: 

​	For P1:

​		Average memory access Time = 0.66 + 8% × 70 = 6.26 ns

​	For P2:

​		Average memory access Time =  0.90 + 6% × 70 = 5.10 ns

##### §  5.6.3

​	Miss penalty for L1 in P1 

​	= 1/(0.66×10^-9) × 70×10^-9= 107 cycles

​	Miss penalty for L1 in P2

​	= 1/(0.90×10^-9) × 70×10^-9=  78 cycles

​	Actual CPI for P1 : 1.0 + 0.36 ×0.08 × 107 = 4.08 CPI

​	Actual CPI for P2 : 1.0 + 0.36 ×0.06 × 78 = 2.68 CPI

​	Becasue P2's actual CPI is smaller, P2 is better.

##### §  5.6.4

​	Average memory access Time for P1 with L2 =  0.66 + 0.08 × 5.62 + 0.08 × 0.95 × 70 = 6.43 ns

​	because 6.43 > 6.26, it become worse with L2.

##### §  5.6.5

​	Miss penalty for L1 in P1：

​	1/(0.66×10^-9) × 5.62×10^-9= 9 cycles 

​	Miss penalty for local L2 in P2:

​	1/(0.66×10^-9) × 70 ×10^-9 = 107 cycles.

​	Actual CPI for P1 with L2

​	= 1.0 + 0.36 × 0.08 ×9 + 0.36 × 0.08 × 0.95 × 107 =  4.19 CPI

##### §  5.6.6

​	Average memory access Time for P1 with L2: 0.66 + 0.08 × 5.62 + 0.08 × 0.95 × 70 = 6.43 ns

​	Average memory access Time for P2: 0.90 + 6% × 70 = 5.10 ns

​	So **P2 is faster.** For P1 to match P2’s performance: 

​	5.10 = 0.66  + miss rate ×(5.62 +  0.95× 70)

​	miss rate = 6.16%





##### Exercise 5.9

#####  §  5.9.1

​	Need to find minimum p such that 2^p ≥ p + d + 1 and then add one.  

​	Thus 9 total bits are needed for SEC/DED. 

##### §  5.9.2

​	 For the code described in the chapter :

​	It requires an relative ratio of  8/64 = 12.5% additional bits to tolerate the loss of any single bit within 72 bits,  providing a protection rate of 1/72 = 1.4%. The cost/performance of it is:

​	cost / performance = 12.5% / 1.4% = 8.9

​	For the code in 5.9.1:

​	It requires relative ratio of 9/128=7.0% additional bits to tolerate the loss of any single bit within 137 bits, providing a protection rate of 1/137 = 0.73%. The cost/performance of it is: 

​	cost / performance = 7.0% / 0.73% = 9.6

​	Becasue 8.9 < 9.6 , the code described in the chapter which use 8 parity bits to protect 64 bits has better cost/performance ratio.

##### §  5.9.3

​	0x 375 can be write as binary form as : 001101110101. 

​	Comapare the Parity bit and the numbers of 1 corresoping to every parity bit ,we get: 0001. 

​	So bit 8 is error. After correct it the number change to 0x365. 







##### Exercise 5.12

##### §  5.12.1

​	Totally 2^(43-12) = 2 ^31 entries.

​	And this requiring 2^31 × 4 bytes  = 2 ^33 = 8 GB Memory.

##### §  5.12.2

​	Professor Zhang Jin said Don't need to do this question.

​	Need 2 levels page table .

​	And need 1 time memory references for address translation if missing in TLB.

##### §  5.12.3

​	Professor Zhang Jin said also Don't need to do this question.

##### §  5.12.4

​	When it is paged out to disk, the valid bit of it should be set 0.

##### §  5.12.5

​	Write to VA page 30 will occur a page miss.

​	And when software can pre-fetch the TLB entries,the software managed TLB is faster than which Hardware managed.

##### §  5.12.6

​	Because VA page 200 entrie is protected to be read only. So write to VA page 200 should generate an interrupt.





##### Exercise 5.13

##### §  5.13.1

​	Because the lowest bit of address sequence: 0, 2, 4, 6, 8, 10, 12, 14, 16 ,0 are all zero.

​	So they should all in set 0.

​	

​	By the LRU replacement policy, because only one pair of address is the same, and when finally 0 comes, the previous 0 has been replaced.

​	So no hit  occurs.

##### §  5.13.2

​	Because the lowest bit of address sequence: 0, 2, 4, 6, 8, 10, 12, 14, 16 ,0 are all zero.

​	So they should all in set 0.

​	By the MRU replacement policy, the finally 0 hit because after the first 0 into set 0, it remains to be the least recently used entrie so that it can not been placed. And others are all different whith each other address so they miss.

​	So only 1 hit.

##### §  5.13.3

​	If use the random stratgy by fliping coin, if the first 0 can be  retain until the last 0 come, it will have 1 hit.

​	else no hit occurs.

​	So it is 0 or 1 hit.

##### §  5.13.4

​         Just remain the first 0 until the last 0 hit. That means the evited sequence should be: 2,4,6,8,10,12,14 

​	 And 1 hit occurs when the last 0 comes. 

##### §  5.13.5

​	We want to evict the block that can let  get the fewest misses .

​	But it is depend on the instruction sequence will be executed in the future. And cache is difficult to know what will happen in the future. The only thing it can do is to predict but never can guarantee the prediction is accrate.

##### §  5.13.6

​	 When we know the block will be use frequently in the future. We can bring it to cache to reduce the miss rate. However if we don't have enough information to do the correct decision, maybe the miss rate will be higher and performance get worse.