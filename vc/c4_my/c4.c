#include <stdio.h>
#include <stdlib.h>
//                                                Last Change:  2016-12-20 23:49:01
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

//我们支持的标记符
enum {
  Num = 128, Fun, Sys, Glo, Loc, Id,
  Char, Else, Enum, If, Int, Return, Sizeof, While,
  Assign, Cond, Lor, Lan, Or, Xor, And, Eq, Ne, Lt, Gt, Le, Ge, Shl, Shr, Add, Sub, Mul, Div, Mod, Inc, Dec, Brak
};

int token_val;                // value of current token (mainly for number)
int *current_id,              // current parsed ID
    *symbols;                 // symbol table
// fields of identifier
enum {Token, Hash, Name, Type, Class, Value, BType, BClass, BValue, IdSize};
//token：该标识符返回的标记，理论上所有的变量返回的标记都应该是 Id，但实际上由于我们还将在符号表中加入关键字如 if, while 等，它们都有对应的标记。
//hash：顾名思义，就是这个标识符的哈希值，用于标识符的快速比较。
//name：存放标识符本身的字符串。
//class：该标识符的类别，如数字，全局变量或局部变量等。
//type：标识符的类型，即如果它是个变量，变量是 int 型、char 型还是指针型。
//value：存放这个标识符的值，如标识符是函数，刚存放函数的地址。
//BXXXX：C 语言中标识符可以是全局的也可以是局部的，当局部标识符的名字与全局标识符相同时，用作保存全局标识符的信息。

// types of variable/function
enum { CHAR, INT, PTR };
int *idmain;                  // the `main` function

//用于此法分析，获取下一个标记，它将自动忽略空白字符
//参数：实际输入的参数是src，指向当前代码的指针
//此法分析器通常输出(token, token value) 即标记本身和标记的值
void next()
{
	char * last_pos;
	int hash;

	//token为一个字符，src为字符指针，*src就是地址src地址上的字符。
	while(token=*src)
	{
		++src;
		//如下是处理词法的
		if(token == '\n')//如果遇到换行符，行号+1
		{
			++line;
		}
		else if (token =='#')//如果遇到#开头，如#include 这个编译器暂不支持宏定义
		{
			//直接忽略这行
			while(*src != 0 && *src != '\n')
			{
				src++;
			}
		}
		else if ((token >= 'a' && token <= 'z') || (token >= 'A' && token <= 'Z') || token == '_')//变量名第一个字符取值范围是大小写字符和下划线
		{
			last_pos = src -1 ;//要找这个变量名的第一个字符
			hash = token;//初始化hash
			//然后就是寻找这个变量名的结尾啦，变量名除第一个字符外，取值范围就多了一个数字。
			while((*src >= 'a' && *src <= 'z') || (*src >= 'A' && *src <= 'Z') || (*src >= '0' && *src <= '9') || *src == '_')
			{
				hash = hash * 147 + *src;//计算hash值
				src++;//下一个字符啦
			}
			
			//到这里，*last_pos 为这个变量名的第一个字符，而*src为最后一个字符啦
			//线性从标识符表中找啦
			current_id = symbols;//标识符表的开头
			while(current_id[Token])
			{
				//判断找相同的变量名啦，hash表一样再加上变量名一样
				if(current_id[Hash] == hash && !memcmp((char*)current_id[Name],last_pos,src - last_pos))
				{
					//找到这个变量名了
					token = current_id[Token];
					return;
				}
				current_id = current_id + IdSize;//下一项，因为这个是模拟结构struct,所以下一项这个结构的大小啦，这个相当于结构数组。
			}

			current_id[Name] = (int)last_pos;//字符指针，但有一点，这个并没有结束符啊
			current_id[Hash] = hash;//保存hash
			token = current_id[Token]= Id;//这个Id哪来的，类型是变量。
			return;
		}
		else if (token >= '0' && token <= '9')
		{
			//数字判断 dec(123)十进制 hex(0x123)十六进制 oct(017)八进制
			token_val = token - '0';
			if (token_val > 0)
			{
				//这里就是十进制啦
				while(*src >= '0' && *src <= '9')
				{
					//*src - '0' ，就是这个数字，前面的乘以10是因为十进制，*src++是下一个字符
					token_val = token_val * 10 + *src++ - '0';
				}
			} else
			{
				// 十六进制，第一位为0,格式是0x123
                if (*src == 'x' || *src == 'X') {
                    //hex
                    token = *++src;
                    while ((token >= '0' && token <= '9') || (token >= 'a' && token <= 'f') || (token >= 'A' && token <= 'F')) {
                        token_val = token_val * 16 + (token & 15) + (token >= 'A' ? 9 : 0);
                        token = *++src;
                    }
                } else {
                    // 到这里就是8进制啦
                    while (*src >= '0' && *src <= '7') {
                        token_val = token_val*8 + *src++ - '0';
                    }
                }
			}
			token = Num;//标识符类型是数字。
			return;
		}
        else if (token == '"' || token == '\'')//这里是判断字符串啦，单号或或者双引号。
        {
            //这个字符串是放在数据段，
            last_pos = data;

            while (*src !=0 && *src != token)
            {
                token_val = *src++;
                //判断是否有转义字符啦
                if(token_val == '\\')
                {
                    token_val = *src++;
                    //然后判断转义字符的下一个字符是什么字符，这里只判断'\n'
                    if(token_val == 'n')
                    {
                        token_val = '\n';
                    }
                    //我觉得还应该判断是不是'\''或者'\"'的时候吧
                    //不用判断了，当是\'或者\"的时候，就是不用转义的时候
                }
                if(token == '"')
                {
                    *data++ = token_val;
                }
            }
            //这里是不是应该加上字符串的结束符啊
            *data++ = 0;
            src++;

            //返回的话，如果是单引号，就返回数字类型，如果是双引号，就返回字符串啦
            if(token == '"')
            {
                token_val = (int)last_pos;//字符串的指针地址
                printf("string:%s\n",last_pos);
            }else
            {
                token = Num;
            }
            return;

        }
        else if (token == '/')
        {
            //这个分两种情况，一种是注释，一种是除号
            if (*src == '/')//注释
            {
                while(*src != 0 && *src != '\n')
                {
                    src++;
                }
            }else
            {
                token = Div;
                return;
            }

        }
        else if (token == '=') {
            // parse '==' and '=' 
            if (*src == '=') {//==
                src ++;
                token = Eq;
            } else {//=
                token = Assign;
            }
            return;
        }
        else if (token == '+') {
            // parse '+' and '++'
            if (*src == '+') {
                src ++;
                token = Inc;
            } else {
                token = Add;
            }
            return;
        }
        else if (token == '-') {
            // parse '-' and '--'
            if (*src == '-') {
                src ++;
                token = Dec;
            } else {
                token = Sub;
            }
            return;
        }
        else if (token == '!') {
            // parse '!='
            if (*src == '=') {
                src++;
                token = Ne;
            }
            return;
        }
        else if (token == '<') {
            // parse '<=', '<<' or '<'
            if (*src == '=') { //<=
                src ++;
                token = Le;
            } else if (*src == '<') { //<<
                src ++;
                token = Shl;
            } else { //<
                token = Lt;
            }
            return;
        }
        else if (token == '>') { 
            // parse '>=', '>>' or '>'
            if (*src == '=') {
                src ++;
                token = Ge;
            } else if (*src == '>') {
                src ++;
                token = Shr;
            } else {
                token = Gt;
            }
            return;
        }
        else if (token == '|') {
            // parse '|' or '||'
            if (*src == '|') {
                src ++;
                token = Lor;
            } else {
                token = Or;
            }
            return;
        }
        else if (token == '&') {
            // parse '&' and '&&'
            if (*src == '&') {
                src ++;
                token = Lan;
            } else {
                token = And;
            }
            return;
        }
        else if (token == '^') {
            token = Xor;
            return;
        }
        else if (token == '%') {
            token = Mod;
            return;
        }
        else if (token == '*') {
            token = Mul;
            return;
        }
        else if (token == '[') {
            token = Brak;
            return;
        }
        else if (token == '?') {
            token = Cond;
            return;
        }
        else if (token == '~' || token == ';' || token == '{' || token == '}' || token == '(' || token == ')' || token == ']' || token == ',' || token == ':') {
            // directly return the character as token;
            return;
        }
	}
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
	while(1)
	{
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
    poolsize=526*1024;//数据空间大小
	line=1;//当前是从第一行开始啦

    //初始化标识符表
	if(!(symbols=malloc(poolsize)))
	{
		printf("could not malloc (%d) for symbols area\n",poolsize);
		return -1;
	}
    memset(symbols,0,poolsize);

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

     //如下的是初始化这些标识符，将这些标识符加到标识符表中
    src = "char else enum if int return sizeof while "
          "open read close printf malloc memset memcmp exit void main";
     // add keywords to symbol table
    i = Char;
    while (i <= While) {
        next();
        current_id[Token] = i++;
    }
    // add library to symbol table
    i = OPEN;
    while (i <= EXIT) {
        next();
        current_id[Class] = Sys;
        current_id[Type] = INT;
        current_id[Value] = i++;
    }
    next(); current_id[Token] = Char; // handle void type
    next(); idmain = current_id; // keep track of main


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

	//语法分析
	program();

   
	
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

	//执行虚拟机
	//return evel();
}
