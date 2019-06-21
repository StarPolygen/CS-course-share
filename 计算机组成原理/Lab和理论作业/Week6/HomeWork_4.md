# HomeWork_4

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## chapter 3



##### Exercise 3.9 

*Writing 151 and 214 as follows:*	

| Decimal | 2's complement | Signed Integer |
| ------- | -------------- | -------------- |
| 151     | 10010111       | -105           |
| 214     | 11010110       | -42            |

*Decimal*:

​	-105 + (-42) = -147 

​	-147 < -128    The result is -128.

*Binary*:

​	10010111 + 11010110 produces a *downward overflow*. So 10010111 + 11010110 = -128 (In Decimal)

##### Exercise 3.10

*Writing 151 and 214 as follows:*	

| Decimal | 2's complement | Signed Integer |
| ------- | -------------- | -------------- |
| 151     | 10010111       | -105           |
| 214     | 11010110       | -42            |

*Decimal*:

​	-105 - (-42) = -63 

​	Because -63 belongs to the range [-128 —127] .   The result is -63.

*Binary*:

​	10010111 - 11010110 = 11000001. No overflow. The result is 11000001= -63.

​	

##### Exercise 3.12

62(octal) = 110010(binary)   12(octal) = 001010(binary)

**Table :**

| Iteration | Step                      | Multiplier   | Multiplicand      | Product           |
| --------- | ------------------------- | ------------ | ----------------- | ----------------- |
| 0         | Initial                   | 00101***0*** | 000000 110010     | 000000 000000     |
| 1         | 1:0 => No operation       | 001010       | 000000 110010     | 000000 000000     |
|           | 2:shift left multiplicand | 001010       | **000001 100100** | 000000 000000     |
|           | 3:shift right multiplier  | **00010*1*** | 000001 100100     | 000000 000000     |
| 2         | 1a:1 => Prod=Prod+Mcand   | 000101       | 000001 100100     | **000001 100100** |
|           | 2:shift left multiplicand | 000101       | **000011 001000** | 000001 100100     |
|           | 3:shift right multiplier  | **00001*0*** | 000011 001000     | 000001 100100     |
| 3         | 1:0 => No operation       | 000010       | 000011 001000     | 000001 100100     |
|           | 2:shift left multiplicand | 000010       | **000110 010000** | 000001 100100     |
|           | 3:shift right multiplier  | **00000*1*** | 000110 010000     | 000001 100100     |
| 4         | 1a:1 => Prod=Prod+Mcand   | 000001       | 000110 010000     | **000111 110100** |
|           | 2:shift left multiplicand | 000001       | **001100 100000** | 000111 110100     |
|           | 3:shift right multiplier  | **00000*0*** | 001100 100000     | 000111 110100     |
| 5         | 1:0 => No operation       | 000000       | 001100 100000     | 000111 110100     |
|           | 2:shift left multiplicand | 000000       | **011001 000000** | 000111 110100     |
|           | 3:shift right multiplier  | **00000*0*** | 011001 000000     | 000111 110100     |
| 6         | 1:0 => No operation       | 000000       | 011001 000000     | 000111 110100     |
|           | 2:shift left multiplicand | 000000       | **110010 000000** | 000111 110100     |
|           | 3:shift right multiplier  | **00000*0*** | 110010 000000     | 000111 110100     |

**Hardware diagram:**

![1554032402213](C:\Users\lenovo\AppData\Local\Temp\1554032402213.png)

![1554032414042](C:\Users\lenovo\AppData\Local\Temp\1554032414042.png)

![1554032441464](C:\Users\lenovo\AppData\Local\Temp\1554032441464.png)

![1554032461406](C:\Users\lenovo\AppData\Local\Temp\1554032461406.png)

![1554032479109](C:\Users\lenovo\AppData\Local\Temp\1554032479109.png)



![1554032496480](C:\Users\lenovo\AppData\Local\Temp\1554032496480.png)

![1554032532216](C:\Users\lenovo\AppData\Local\Temp\1554032532216.png)

##### Exercise 3.13

62(hex) = 0110 0010(binary)                   12(hex) = 0001 0010(binary)

**Table :**

| Iteration | Step                      | Multiplier     | Multiplicand          | Product               |
| --------- | ------------------------- | -------------- | --------------------- | --------------------- |
| 0         | Initial                   | 0001001***0*** | 00000000 01100010     | 00000000 00000000     |
| 1         | 1:0 => No operation       | 00010010       | 00000000 01100010     | 00000000 00000000     |
|           | 2:shift left multiplicand | 00010010       | **00000000 11000100** | 00000000 00000000     |
|           | 3:shift right multiplier  | **0000100*1*** | 00000000 11000100     | 00000000 00000000     |
| 2         | 1a:1 => Prod=Prod+Mcand   | 00001001       | 00000000 11000100     | **00000000 11000100** |
|           | 2:shift left multiplicand | 00001001       | **00000001 10001000** | 00000000 11000100     |
|           | 3:shift right multiplier  | **0000010*0*** | 00000001 10001000     | 00000000 11000100     |
| 3         | 1:0 => No operation       | 00000100       | 00000001 10001000     | 00000000 11000100     |
|           | 2:shift left multiplicand | 00000100       | **00000011 00010000** | 00000000 11000100     |
|           | 3:shift right multiplier  | **0000001*0*** | 00000011 00010000     | 00000000 11000100     |
| 4         | 1:0 => No operation       | 00000010       | 00000011 00010000     | 00000000 11000100     |
|           | 2:shift left multiplicand | 00000010       | **00000110 00100000** | 00000000 11000100     |
|           | 3:shift right multiplier  | **0000000*1*** | 00000110 00100000     | 00000000 11000100     |
| 5         | 1a:1 => Prod=Prod+Mcand   | 00000001       | 00000110 00100000     | 00000110 11100100     |
|           | 2:shift left multiplicand | 00000001       | **00001100 01000000** | 00000110 11100100     |
|           | 3:shift right multiplier  | **0000000*0*** | 00001100 01000000     | 00000110 11100100     |
| 6         | 1:0 => No operation       | 00000000       | 00001100 01000000     | 00000110 11100100     |
|           | 2:shift left multiplicand | 00000000       | **00011000 10000000** | 00000110 11100100     |
|           | 3:shift right multiplier  | **0000000*0*** | 00011000 10000000     | 00000110 11100100     |
| 7         | 1:0 => No operation       | 00000000       | 00011000 10000000     | 00000110 11100100     |
|           | 2:shift left multiplicand | 00000000       | **00110001 00000000** | 00000110 11100100     |
|           | 3:shift right multiplier  | **0000000*0*** | 00110001 00000000     | 00000110 11100100     |
| 8         | 1:0 => No operation       | 00000000       | 00110001 00000000     | 00000110 11100100     |
|           | 2:shift left multiplicand | 00000000       | **01100010 00000000** | 00000110 11100100     |
|           | 3:shift right multiplier  | **0000000*0*** | 01100010 00000000     | 00000110 11100100     |

**Hardware diagram:**

![1554032613769](C:\Users\lenovo\AppData\Local\Temp\1554032613769.png)![1554032629988](C:\Users\lenovo\AppData\Local\Temp\1554032629988.png)

![1554032667150](C:\Users\lenovo\AppData\Local\Temp\1554032667150.png)