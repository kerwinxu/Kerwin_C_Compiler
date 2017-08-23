#include <stdio.h>
#include <stdlib.h>
//    Last Change:  2016-12-17 12:50:58
#include <memory.h>
#include <string.h>

int token; //当前标识符
char *src,*old_src;//指向代码的指针
int poolsize;//默认尺寸，代码段，数据段，堆栈段
int line;//行号

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
	if(!(src=old_src=(char*)malloc(poolsize)))
	{
		printf("could not malloc (%d) for source area\n",poolsize);
		return -1;
	}

	//这里应该有个menset来填充这块控件的
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

	//执行虚拟机
	return evel();
}
