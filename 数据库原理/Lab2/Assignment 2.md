# Assignment 2

___

Name： 卫焱滨（Wei Yanbin）  

SID：11710823  



## Problem 1 Overwatch

___

##### 1. Find all people who are taller than 170(the unit here is irrelevant). 

$$
\huge\sigma _{\huge_{height > 170}} \Large(People)
$$



##### 2.Find all people who have girlfriend(s)/boyfriend(s) online.

$$
\Large\sigma(People)\bowtie _{pid} (\sigma_{qq=qq1\lor qq=qq2}(\sigma (QQnumber) \bowtie \sigma (isCoupleOnline))
$$

​	

3. ##### Find all SUSTechers who are famous for “High GPA”(text type).

   $$
   \Large\sigma(People)\bowtie_{pid}\sigma(SUSTech)\bowtie _{pid}\sigma_{ famous_for="High\ GPA"}(FamousPeople)
   $$

   

4. ##### Find all SUSTechers who are famous for “Low GPA”(texttype), but whose GPA ≥ 3.9. 

   $$
   \Large\sigma(People)\bowtie_{pid}\sigma_{GPA\ge3.9}(SUSTech)\bowtie _{pid}\sigma_{ famous_for="Low\ GPA"}(FamousPeople)
   $$

   

5. #####  Find all SUSTechers whose GPA ≥ 3.9 and have boyfriend(s)/girlfriend(s). 

   $$
   \Large\sigma(People)\bowtie_{pid}\sigma_{pid=pid1\lor pid=pid2}(\sigma_{GPA\ge3.9}(SUSTech)\bowtie \sigma(isCouple))
   $$

   

6. #####  Find all famous people who are born in a city of “Guangdong” with a local specialty called “Chang Fen”.

   $$
   \large
   \sigma(Famous People)\bowtie_{pid}\sigma(People)\bowtie_{cityid}(\sigma_{ local\_specialty="Chang Fen"}(Cities)\bowtie_{provinceid}\sigma_{name="Guangdong"}(Provinces))
   $$

   

## Problem

____

**1.Find all memberid and serverid pairs in which the member has time and skill to sabotage the server while it is without guard.(The member must have the same skill as the server type, and the available time of Member should match the guardofftime of Server)** 
$$
\Large\prod_{memberid,severid}\sigma_{guardofftime=availabletime\and skill=severtype}(\sigma(Member)\bowtie\sigma(Server))
$$
**2.Find all netid of the nets which contains at least one server with weak password.** 
$$
\Large\prod_{netid}\sigma(Net)\bowtie_{severid}\sigma(WeakPassword)
$$
**3.Find all servers whose administrator’s department is not “Computer Science”.** 
$$
\Large\sigma(Sever)\bowtie_{adminid}\sigma_{department!="Computer\ Sicence"}(Administrator)
$$
**4.Find all the server that has a weak password and the weak password is its administrator’s birth date or “admin” or “123456”.**
$$
\Large\sigma(Server)\bowtie_{adminid}\sigma_{weak\_password="123456"\or weak\_password="admin"\or weak\_password=birth\_date}  \sigma(Administrtor)\bowtie\sigma(WeakPassword))
$$
