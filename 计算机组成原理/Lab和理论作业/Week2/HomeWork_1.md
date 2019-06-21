# HomeWork_1

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## 1.6

___

>**Question:**
>
>**1.6 [20] <§1.6>** 
>
>​	Consider two different implementations of the same instruction set architecture. The instructions can be divided into four classes according totheir CPI (class A, B, C, and D). P1 with a clock rate of 2.5 GHz and CPIs of 1, 2, 3, and 3, and P2 with a clock rate of 3 GHz and CPIs of 2, 2, 2, and 2.
>Given a program : 10% class A, 20% class B, 50% class C, and 20% class D, **which implementation is faster**?
>
>
>
>**Answer:**
>
>> P2  implementation is faster. The Reason is shown by the below computation.
>
>
>
>**a. What is the global CPI for each implementation?**
>
>​	10% class A, 20% class B, 50% class C, and 20% class D
>
>​	Time = No. instr. × CPI/clock rate
>
>>  For P1:    CPI = 10% * 1+20% * 2+50% * 3+20% * 3 = 2.6
>>
>>  For P2:	CPI = 10% * 2+20% * 2+50% * 2+20% * 2 = 2.0	
>
>
>
>**b. Find the clock cycles required in both cases.**
>
>>For P1: clock cycles= CPI * IC = 1.0E6 * 2.6 = 2.6E6
>>
>>For P2: clock cycles= CPI * IC = 1.0E6 * 2.0 = 2.0E6 
>



Having solved the question a) and b), we can compute the CPU time to answer the original question:

**which implementation is faster?**

>> Computing The CPU time for P1 and P2:
>>
>> ​	For P1: CPU time= clock cycles * 1/Clock rate = 1.0E6 * 2.6 * 1/2.5GHz =1.04E-3 s
>>
>> ​	For P2: CPU time= clock cycles * 1/Clock rate = 1.0E6 * 2.0 * 1/3.0GHz =6.67E-4 s
>
> **Because The CPU time of P1 > The CPU time of P2,  P2  implementation is faster**

## 1.8

____

>**Question:**
>
>**1.8**
>
> 	The Pentium 4 Prescott processor, released in 2004, had a clock rate of 3.6 GHz and voltage of 1.25 V. Assume that, on average, it consumed 10 W of static power and 90 W of dynamic power.
>The Core i5 Ivy Bridge, released in 2012, had a clock rate of 3.4 GHz and voltage of 0.9 V. Assume that, on average, it consumed 30 W of static power and 40 W of dynamic power.
>
>**1.8.1 [5] <§1.7> For each processor find the average capacitive loads.**
>
>> Dynamic Power = 1/2 * Capacitive load × Voltage^2 × Frequency, so the average capacitive loads of
>>
>>  Pentium 4 :
>>
>> ​	C1= 2 * 90w / (1.25V)^2 / 3.6GHz = 3.20E-8 F
>>
>>  Cor i5:
>>
>> ​	C2= 2 * 40w/ (0.9V)^2 / 3.4GHz = 2.90E-8 F
>>
>> 
>
>**1.8.2 [5] <§1.7> Find the percentage of the total dissipated power comprised by** 
>**static power and the ratio of static power to dynamic power for each technology.**
>
>> Pentium 4 :
>>
>>​	static power/ the total dissipated power = 10/(10+90) = 10.0%
>>
>>​	static power/ dynamic power = 10/90 = 11.1%
>>
>>Core i5:
>>
>>​	static power/ the total dissipated power = 30/(30+40) = 42.9%
>>
>>​	static power/ dynamic power = 30/40 = 75.0%
>
>
>
>**1.8.3 [15] <§1.7> If the total dissipated power is to be reduced by 10%, how much** 
>**should the voltage be reduced to maintain the same leakage current? Note: power** 
>**is defined as the product of voltage and current**
>
>>The total power P = DP + SP, here DP is dynamic power, SP is static power
>>
>>From the question, we can get these relations:
>>
>>P(new)=90% * P(old)
>>
>>P(new) = DP(new) + SP(new)  	P(old) = DP(old) + SP(new)
>>
>>DP(new) =1/2 * C* V(new)^2 * f   	DP(old) = 1/2 * C* V(old)^2 * f  
>>
>>SP(new) = V(new) * I			SP(old) = V(old) * I
>>
>> 
>>
>>For Pentium 4:
>>
>>P(new) = 0.9 * P(old) = 0.9 * (90+10)=90 w
>>
>>SP(new) = S(old) /  V(old) * V(new)= 10/1.25 \* V(new) = 8 \* V(new)
>>
>>DP(new) = P(new) - SP(new) = 90 - 8 * V(new) 
>>
>>V(new)=[DP(new) /(1/2 * C * F)]^1/2 = 1.18 V
>>
>> 
>>
>>Core i5:
>>
>>P(new) = 0.9 * P(old) = 0.9 * (30+40)=63 w
>>
>>SP(new) = S(old) /  V(old) * V(new)= 30/0.9 \* V(new) = 33.3 \* V(new)
>>
>>DP(new) = P(new) - SP(new) = 63 - 3.33 * V(new) 
>>
>>V(new)=[DP(new) /(1/2 * C * F)]^1/2 =  0.84 V 
>
>
>
>

## 1.15

___

>**Question:**
>
>1.15 [5] <§1.8> 
>
>​	When a program is adapted to run on multiple processors in a multiprocessor system, the execution time on each processor is comprised of computing time and the overhead time required for locked critical sections and/or to send data from one processor to another.
>
>​	Assume a program requires t = 100 s of execution time on one processor. When run p processors, each processor requires t/p s, as well as an additional 4 s of overhead, irrespective of the number of processors. Compute the per-processor execution time for 2, 4, 8, 16, 32, 64, and 128 processors. For each case, list the corresponding speedup relative to a single processor and the ratio between actual speedup versus ideal speedup (speedup if there was no overhead)
>
>
>
>**Answer:**
>
>| processor num | execute time      | actual speedup    | ratio(actual/ideal) |
>| ------------- | ----------------- | ----------------- | ------------------- |
>| 2             | 100/2+4=54        | 100/54=1.85       | 1.85/2=0.93         |
>| 4             | 100/4+4=29        | 100/29=3.45       | 3.45/4=0.86         |
>| 8             | 100/8+4=16.5      | 100/16.5=6.06     | 6.06/8=0.76         |
>| 16            | 100/16+4=10.25    | 100/10.25=9.76    | 9.76/16=0.61        |
>| 32            | 100/32+4= 7.125   | 100/7.125=14.04   | 14.04/32=0.44       |
>| 64            | 100/64+4= 5.5625  | 100/5.5625=17.98  | 17.98/64=0.28       |
>| 128           | 100/128+4=4.78125 | 100/4.78125=20.92 | 20.92/128=0.16      |
>
>

