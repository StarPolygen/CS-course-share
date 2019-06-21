### C++

____

~~~C++
new/delete:动态创建删除
int *pi=new int(1024);   初始化
动态创建的const对象必须进行初始化，并且进行初始化后的值不能再改变。
delete【】
new delete只对指针有效，他们显式地调用了constructor

overloading参数可以赋初值

参数传引用int ass（int a，int &a）仍然认为是一个int，自动传引用

c++ struct内可以有方法（method），不再有typedf

class 内没有声明public默认为private{}；
    
与java的主要差别：garbage collection，java里只有引用，全都是new，C++里既可以用object也可以用obj指针（对应->）

兼容C++和C code 对函数的语法不同 使用 #ifdef #endif

Sample（int val）val=val会编译错误 纠正：1.this->val=val 2.Sample::val=val 3.改名也成

特殊语法： Sample(int val):m_val(val),... {};

class{}后面有分号；其内部每个方法后面也有分号；

using namespace std{} 是必要的，否则会找不到方法，找不到cout等等

类的创建和毁灭：
指针new显式调用构造器 则析构函数也需要显式调用
obj o1；自动调用构造函数 则析构函数也在程序退出时自动调用
函数参数不会调用构造函数，会调用拷贝构造函数，退出函数时，现将内部的变量析构，在析构parameter

卡普兰规范类：四大 public: T(); T(const &T); ~T(); T &operator=(const &T)
    
给当前的带参构造函数每个参数初值也可弥补没有默认无参构造函数的空缺

默认copy constuctor有时会坏事，比如指针重复操作heap空间时，此时就需要deep copy，赋值运算符=存在同样问题

类的最后有}；这是唯一的分号跟在}后的情况
    
运算符重载：

friend 破坏封装性

C++中 所有struct都视为class 默认为private 
~~~

~~~C++

纯C++：c中没有多态继承异常处理和模板类

1在自己写的headfile中不能使用namespace，否则会出现危险的变量名重复错误，难以检查

2继承：
	1 子类构造函数必先调用基类构造函数（含参或无参） 
	Class::Class(parameters): Parent(),attr(val),...{}
	3 赋值只发生在右边的是左边类的时候 因此只有公有继承可以进行赋值
	4 继承分类：公有继承 保护继承 私有继承
	5 多态:方法重载 方法重写 方法隐藏
	6 外部只可见当前类的public成员，内部可见继承到的非private，但也存在重名hiding的情况
	7 抽象类：所有constuctor为protect或者  有一个virtual（）=0
	8 C++可多继承
~~~

~~~
自定义的异常：
	1 针对Run-time detected by library
	2 C里有嵌入的异常，但只有C++才可以自定义异常
	3 异常作为内部类，可不唯一 全名（带作用域）要用外部类修饰  避免名字冲突
	4 抛出的是一个obj 而非type
	5 catch要catch全名 可以再次throw如果想要传播的话
	6 异常如果没有被捕捉 会在main被捕捉而导致程序终止
	7 可以编一个安全退出
~~~

~~~
Template：
	1 泛型编写模板，编译器自动生成一系列重载的函数
	2 先看看是否严格符合，否则是泛型吗？生成合适的函数：CE
	3 函数 template<class T> T必须是函数的返回类型
	  超强类型 char int template<class T,class U> 
	4 template里面也可以有<class T, int max=0> 这样子的参数
	5 如果在外部实现内部方法，那么每个方法都需要重复template的前缀
	6 STL：container iterator algorithm **functor**
	7 可调用的obj叫做fuctor 优点：属性 eg.strtok() 全局函数变量指针会随着调用被修改 另一解决方法 char**
	8 funtor 实现operator() 特别注意区分调用和声明
~~~

~~~
C++ style cast
	static_cast const_cast
~~~

