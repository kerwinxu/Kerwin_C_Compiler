namespace LoadCsvFile
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btnLoadCsvFile = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.btnLoadCsvFile2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLoadCsvFile
            // 
            this.btnLoadCsvFile.Location = new System.Drawing.Point(26, 12);
            this.btnLoadCsvFile.Name = "btnLoadCsvFile";
            this.btnLoadCsvFile.Size = new System.Drawing.Size(182, 23);
            this.btnLoadCsvFile.TabIndex = 0;
            this.btnLoadCsvFile.Text = "加载CSV文件，逗号分割";
            this.btnLoadCsvFile.UseVisualStyleBackColor = true;
            this.btnLoadCsvFile.Click += new System.EventHandler(this.btnLoadCsvFile_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(26, 52);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 23;
            this.dataGridView1.Size = new System.Drawing.Size(858, 407);
            this.dataGridView1.TabIndex = 1;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // btnLoadCsvFile2
            // 
            this.btnLoadCsvFile2.Location = new System.Drawing.Point(244, 12);
            this.btnLoadCsvFile2.Name = "btnLoadCsvFile2";
            this.btnLoadCsvFile2.Size = new System.Drawing.Size(182, 23);
            this.btnLoadCsvFile2.TabIndex = 2;
            this.btnLoadCsvFile2.Text = "加载CSV文件，制表符分割";
            this.btnLoadCsvFile2.UseVisualStyleBackColor = true;
            this.btnLoadCsvFile2.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(949, 491);
            this.Controls.Add(this.btnLoadCsvFile2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnLoadCsvFile);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnLoadCsvFile;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button btnLoadCsvFile2;
    }
}

