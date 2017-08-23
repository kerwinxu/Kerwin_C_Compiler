#include <stdio.h>
#include <stdlib.h>
//                         Last Change:  2016-12-19 22:09:19
#include <memory.h>
#include <string.h>

int token; //当前标识符
char *src,*old_src;//指向代码的指针
int poolsize;//默认尺寸，代码段，数据段，堆栈段
int line;//行号

//虚拟机的部分，计算机由3个组件，CPU，寄存器和内存
//内存部分，分成几个区间，代码段、数据段、堆栈段
int *text,
	*old_text,
	*stack;//堆栈段
char*data;//数据段
//而关于寄存器方面，最基本的就是
//pc:程序寄存器,存放着下一条要执行的指令。
//sp:堆栈指针寄存器，永远指向栈顶。
//bp:基址指针寄存器，
//ax:通用寄存器，这里只是用这一个通用的寄存器而已
int *pc,*sp,*bp,ax,cycle;

//指令集
enum { LEA ,IMM ,LI ,LC  ,SI  ,SC  ,PUSH,JMP ,CALL,JZ  ,JNZ ,ENT ,ADJ ,LEV ,
       OR  ,XOR ,AND ,EQ  ,NE  ,LT  ,GT  ,LE  ,GE  ,SHL ,SHR ,ADD ,SUB ,MUL ,DIV ,MOD ,
       OPEN,READ,CLOS,PRTF,MALC,MSET,MCMP,EXIT };
//解析如下
//LEA
//MOV:分解成几个指令,且只有IMM需要参数，其他的都是依据ax,sp来操作的。
//	IMM <num> 将 <num> 放入寄存器 ax 中。
//	LC 将对应地址中的字符载入 ax 中，要求 ax 中存放地址。
//	LI 将对应地址中的整数载入 ax 中，要求 ax 中存放地址。
//	SC 将 ax 中的数据作为字符存放入地址中，要求栈顶存放地址。
//	SI 将 ax 中的数据作为整数存放入地址中，要求栈顶存放地址。

//用于此法分析，获取下一个标记，它将自动忽略空白字符
//参数：实际输入的参数是src，指向当前代码的指针
//返回值：实际返回的是token .取得的标识符
void next()
{
	token=*src++;
	return;
}

void program()
{
	next();//获得下一个标识符
	while(token>0)//如果获得标记，
	{
		//这里只是打印标识
		printf("token is :%c\n",token);
		next();//再取得下一个标识符
	}
}
//用于解析一个表达式
void expression(int level)
{
	//do nothing
}
//虚拟机的入口，用于解析目标代码
int evel()
{
	//对照如下的指令集实现虚拟机指令啦
	//enum { LEA ,IMM ,LI ,LC  ,SI  ,SC  ,PUSH,JMP ,CALL,JZ  ,JNZ ,ENT ,ADJ ,LEV ,
    //   OR  ,XOR ,AND ,EQ  ,NE  ,LT  ,GT  ,LE  ,GE  ,SHL ,SHR ,ADD ,SUB ,MUL ,DIV ,MOD ,
    //   OPEN,READ,CLOS,PRTF,MALC,MSET,MCMP,EXIT };
	//
	int op,*tmp;
	cycle=0;//我不需要这个。
	while(1)
	{
		cycle ++;
        op = *pc++; // get next operation code，这样op就是当前需要解析的指令，而pc就是下一条指令啦
		
		if(op==LEA){ax=(int)(bp + *pc++);}//在子函数中取得函数的参数，LEA <offset>
		else if(op==IMM){ax=*pc++;}//将参数放在寄存器中
		else if(op==LI){ax=*(int*)ax;}//将对应地址中的整数载入 ax 中，要求 ax 中存放地址。
		else if(op==LC){ax=*(char*)ax;}//将对应地址中的字符载入 ax 中，要求 ax 中存放地址。
		else if(op==SI){*(int*)*sp++=ax;}//将 ax 中的数据作为整数存放入地址中，要求栈顶存放地址。
		else if(op==SC){*(char*)*sp++=ax;}//将 ax 中的数据作为字符存放入地址中，要求栈顶存放地址。
		else if(op==PUSH){*--sp=ax;}//入栈
		else if(op==JMP){pc=(int*)*pc;}//无条件跳转,需要注意的是，pc 寄存器指向的是 下一条 指令。所以此时它存放的是 JMP 指令的参数，即 <addr> 的值。
		//如下几个跟子函数调用相关
		else if(op==CALL){*--sp = (int)(pc+1); pc = (int *)*pc;}//在堆栈上保存下一个指令，然后执行一个指令
		else if(op==LEV){sp=bp;bp=(int*)*sp++;pc=(int*)*pc++;}//增加的一个指令，汇编是，mov esp,ebp;pop ebp;return
		else if(op==ENT){*--sp=(int)bp;bp=sp;sp=sp-*pc++;}//这里ENT SIZE,是调用函数，操作是，PUSH EBP;MOV EBP,ESP;SUB ESP,SIZE;
		else if(op==ADJ){sp=sp + *pc++;}//将函数的堆栈清除，本质上是由于add指令有限,汇编是add esp , size;size是个数值。
		//如下2个是判断跳转的
		else if(op==JZ){pc=ax ? pc+1 :(int*)*pc;}//如果ax等于0，就跳转到(int*)*pc,
		else if(op==JNZ){pc=ax ? (int*)*pc : pc+1;}//如果ax不等于0，就跳转到对应地址
		//如下几个是运算符指令，第一个参数放在栈顶，第二个参数放在ax中
		else if(op==OR){ax=*sp++ | ax;}
		else if(op==XOR){ax=*sp++ ^ ax;}
		else if(op==AND){ax=*sp++ & ax;}
		else if(op==EQ){ax=*sp++ == ax;}
		else if(op==NE){ax=*sp++ != ax;}
		else if(op==LT){ax=*sp++ < ax;}
		else if(op==GT){ax=*sp++ > ax;}
		else if(op==LE){ax=*sp++ <= ax;}
		else if(op==GE){ax=*sp++ >= ax;}
		else if(op==SHL){ax=*sp++ << ax;}
		else if(op==SHR){ax=*sp++ >> ax;}
		else if(op==ADD){ax=*sp++ + ax;}
		else if(op==SUB){ax=*sp++ - ax;}
		else if(op==MUL){ax=*sp++ * ax;}
		else if(op==DIV){ax=*sp++ / ax;}
		else if(op==MOD){ax=*sp++ % ax;}
		//如下几个是内置函数，因为这些函数相对复杂，这里干脆用虚拟机来实现，用vc或者gcc编译的时候，这些函数的二进制代码就已经会被编译进我们的编译器
		else if (op == EXIT) { printf("exit(%d)", *sp); return *sp;}
		else if (op == OPEN) { ax = open((char *)sp[1], sp[0]); }
		else if (op == CLOS) { ax = close(*sp);}
		else if (op == READ) { ax = read(sp[2], (char *)sp[1], *sp); }
		else if (op == PRTF) { tmp = sp + pc[1]; ax = printf((char *)tmp[-1], tmp[-2], tmp[-3], tmp[-4], tmp[-5], tmp[-6]); }
		else if (op == MALC) { ax = (int)malloc(*sp);}
		else if (op == MSET) { ax = (int)memset((char *)sp[2], sp[1], *sp);}
		else if (op == MCMP) { ax = memcmp((char *)sp[2], (char *)sp[1], *sp);}
		//错误的指令啦
		else {printf("unknown instruction:%d\n", op);return -1;}

	}
	
	return 0;
}

int main(int argc,char **argv)
{
	int i,fd;

	//因为命令行的第一个参数是程序自己的路径，
	//所以这里有参数个数减1，而指针+1
	argc--;
	argv++;

	poolsize=526*1024;

	line=1;//当前是从第一行开始啦

	//打开文件
	if((fd=open(*argv,0))<0)
	{
		printf("could not open (%s)\n",*argv);
		return -1;
	}

	//申请一块空间，用来保存读取的源代码
	if(!(src=old_src=malloc(poolsize)))
	{
		printf("could not malloc (%d) for source area\n",poolsize);
		return -1;
	}

	//这里应该有个memset来填充这块控件的
	memset(src,0,poolsize);

	//读取源代码
	if((i=read(fd,src,poolsize-1))<0)
	{
		printf("read() return %d\n",i);
		return -1;
	}

	src[i]=0;//加上结束符，C语言规定字符串的最后是0
	close(fd);//关闭文件


	//初始化虚拟机部分
	if(!(text=old_text=malloc(poolsize)))
	{
		printf("could not malloc (%d) for source area\n",poolsize);
		return -1;
	}
	if(!(data=malloc(poolsize)))
	{
		printf("could not malloc (%d) for source area\n",poolsize);
		return -1;
	}
	if(!(stack=malloc(poolsize)))
	{
		printf("could not malloc (%d) for source area\n",poolsize);
		return -1;
	}

	memset(text,0,poolsize);
	memset(data,0,poolsize);
	memset(stack,0,poolsize);
	
	//堆栈的生长是从高位向低位生长,初始位置是堆栈段的最高点
	bp=sp=(int*)((int)stack+poolsize);
	//默认ax通用寄存器为0
	ax=0;

	//这个部分是测试虚拟机的
	i = 0;
    text[i++] = IMM;//mov ax,10
    text[i++] = 10;
    text[i++] = PUSH;//push ax
    text[i++] = IMM;//mov ax,20
    text[i++] = 20;
    text[i++] = ADD;//ax=ax,*sp
    text[i++] = PUSH;//push ax
    text[i++] = EXIT;//打印exit(*sp),也就是如上的结果。上边计算的是10+20=30
    pc = text;
	

	//语法分析
	//program();

	//执行虚拟机
	return evel();
}
