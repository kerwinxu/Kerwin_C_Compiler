using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Xuhengxiao.CSV;

namespace LoadCsvFile
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnLoadCsvFile_Click(object sender, EventArgs e)
        {
            //首先选择一个文件，然后就读取啦
            if (openFileDialog1.ShowDialog()==DialogResult.OK)
            {
                string strCsvFile = openFileDialog1.FileName;
                dataGridView1.DataSource = CSVFileHelper.OpenCSV(strCsvFile);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //首先选择一个文件，然后就读取啦
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                string strCsvFile = openFileDialog1.FileName;
                dataGridView1.DataSource = CSVFileHelper.OpenCSV(strCsvFile,'\t');
            }
        }
    }
}
