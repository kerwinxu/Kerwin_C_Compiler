using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using System.Threading;

namespace 测试程序运行时间的
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        double a = 99899;
        double b = 88888;

        private void test1()
        {
            double tmp1 = a + b;
            double tmp2 = a - b;
            double tmp3 = a * b;
            double tmp4 = a / b;
            a = a + 1;
            b = b + 1;
        }

        private void btn_testspeed_Click(object sender, EventArgs e)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();
            for (int i = 0; i < 100000000; i++)
            {
                test1();
            }
            sw.Stop();
            lbl_result.Text = "运行时间：" + (sw.ElapsedMilliseconds / 1000.0).ToString();

        }

        //我想测试多线程状态下，是否更有效率。
        //作为一个共享
        int thread_test2_finished = 0;
        int thread_test2_count = 5;
        Stopwatch sw_test2 = new Stopwatch();

        public void test2()
        {
            for (int i = 0; i < 100000000; i++)
            {
                test1();
            }

            thread_test2_finished++;

            if (thread_test2_finished>= thread_test2_count)
            {
                sw_test2.Stop();
                MessageBox.Show("test2测试多线程运行时间：" + (sw_test2.ElapsedMilliseconds / 1000.0).ToString());
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<Thread> pool = new List<Thread>();
            //这个是运行线程测试的
            //做出一个线程池，保存
            for (int i = 0; i < thread_test2_count; i++)
            {
                Thread _thread = new Thread(test2);
                pool.Add(_thread);
            }
            //运行计时器
            sw_test2.Start();
            foreach (Thread thread_itme in pool)
            {
                thread_itme.Start();
            }
            
        }
    }
}
