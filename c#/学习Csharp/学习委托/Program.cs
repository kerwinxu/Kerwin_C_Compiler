using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;



//c#事件委托的本质是函数指针，
//如下是事件的发布者做的事情
//首先声明一个函数指针，在这里是 public delegate void sendMessageEventHander(string strMsg);
//然后定义一个函数指针，在这里是 public event  sendMessageEventHander sendMessage; event仅仅表示这个是事件。
//如果是事件的话，这里最好是加上event，如果不是，这个是可有可无的东西。
//然后在某个方法里，通过调用定义的函数指针的方式发出事件，在这里是OnSendMessage方法做的事情，首先判断是否是空值，然后调用。

//如下是事件的订阅者做的事情。
//c1.sendMessage += c1_sendMessage;
//通过+=来订阅一个事件，形象的表示的话，就好比事件的发布者有个链表，里边是事件的订阅者的信息，
//当事件被触发时，事件的发布者会根据链表发布信息。
//
//就好比订阅报纸，OnSendMessage相当于报社，sendMessage就好比发报员，他们调用发报员去发送报纸，
//而外部要求订阅报纸的只需要通过“+=”注册就可以，发报员会将报纸发送给他们。


 

namespace 学习委托
{
    //这里声明一个委托
    public delegate void sendMessageEventHander(string strMsg);

    class class1
    {
        //这里定义一个委托
        public   sendMessageEventHander sendMessage;

        //这里调用一个委托
        public void OnSendMessage(string strMsg)
        {
            if (sendMessage != null)
            {
                sendMessage(strMsg);
            }
        }

        //注意，这个程序的OnSendMessage是通过外部调用的，
        //而我觉得更多的时候，是在类里边被调用的，比如说如下

        public void fun1()
        {
            //如下是判断是否触发事件
            if (true)
            {
                OnSendMessage("类里触发事件：");
            }
        }


    }

    class Program
    {
        static void Main(string[] args)
        {
            //创建类对象
            class1 c1 = new class1();
            c1.sendMessage += c1_sendMessage;
            c1.sendMessage += c1_sendMessage2;
            c1.OnSendMessage("外部触发事件：");
            Console.WriteLine("##################");
            //c1.fun1();
            //试试线程版本的
            Thread t = new Thread(c1.fun1);
            t.Start();
            Console.WriteLine("##################");
            
        }

        static void c1_sendMessage(string strMsg)
        {
            Console.WriteLine(strMsg+"1");
            //throw new NotImplementedException();
        }
        static void c1_sendMessage2(string strMsg)
        {
            Console.WriteLine(strMsg+"2");
            //throw new NotImplementedException();
        }
    }
}
