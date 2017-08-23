using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using IronPython;
using IronPython.Hosting;
using System.IO;

namespace 简单ironpython调用
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btn_run_Click(object sender, EventArgs e)
        {
            try
            {
                //创建一个python解析器引擎
                // ScriptEngine:动态语言（IronPython）执行类，可于解析和执行动态语言代码。
                var pyEngine = Python.CreateEngine();

                //要添加搜索库的路径
                var pypath = pyEngine.GetSearchPaths();
                pypath.Add(@"D:\IronPython2.7\Lib");
                pypath.Add(@"D:\IronPython2.7\Lib\site-packages");
                pyEngine.SetSearchPaths(pypath);

                //重定向信息，重定向到控制台输出
                pyEngine.Runtime.IO.RedirectToConsole();
                //ScriptScope:构建一个执行上下文，其中保存了环境及全局变量；
                //宿主(Host)可以通过创建不同的 ScriptScope 来提供多个数据隔离的执行上下文。
                var pyScope = pyEngine.CreateScope();
                //ScriptSource:操控动态语言代码的类型，可以编译（Compile）、运行（Execute）代码。
                var pyScript = pyEngine.CreateScriptSourceFromString(txt_Source.Text);

                //再将控制台输出定义到文本框
                Console.SetOut(TextWriter.Synchronized(new TextBoxWriter(txt_result)));
                var result = pyScript.Execute(pyScope);

            }
            catch (Exception err)
            {
                txt_result.AppendText(Environment.NewLine+"error:"+ err.Message);
                //throw;
            }




        }
    }

    ///文本输出流，只是是输出到文本框的。
    public class TextBoxWriter : TextWriter
    {
        private TextBox _textBox;
        public TextBoxWriter(TextBox textbox)
        {
            _textBox = textbox;
        }
        public override void Write(string value)
        {
            base.Write(value);
            _textBox.AppendText(value.ToString());
        }
        public override void Write(char value)
        {
            base.Write(value);
            // When character data is written, append it to the text box.
            _textBox.AppendText(value.ToString());
        }
        public override System.Text.Encoding Encoding
        {
            get { return System.Text.Encoding.UTF8; }
        }
    }
}
