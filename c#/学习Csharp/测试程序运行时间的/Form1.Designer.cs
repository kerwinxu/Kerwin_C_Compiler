namespace 测试程序运行时间的
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
            this.btn_testspeed = new System.Windows.Forms.Button();
            this.lbl_result = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.txt_result = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btn_testspeed
            // 
            this.btn_testspeed.Location = new System.Drawing.Point(23, 65);
            this.btn_testspeed.Name = "btn_testspeed";
            this.btn_testspeed.Size = new System.Drawing.Size(133, 23);
            this.btn_testspeed.TabIndex = 0;
            this.btn_testspeed.Text = "测试双精度运行时间";
            this.btn_testspeed.UseVisualStyleBackColor = true;
            this.btn_testspeed.Click += new System.EventHandler(this.btn_testspeed_Click);
            // 
            // lbl_result
            // 
            this.lbl_result.AutoSize = true;
            this.lbl_result.Location = new System.Drawing.Point(21, 27);
            this.lbl_result.Name = "lbl_result";
            this.lbl_result.Size = new System.Drawing.Size(41, 12);
            this.lbl_result.TabIndex = 1;
            this.lbl_result.Text = "label1";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(23, 116);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(133, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "测试线程是否更省时间";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txt_result
            // 
            this.txt_result.Location = new System.Drawing.Point(178, 12);
            this.txt_result.Multiline = true;
            this.txt_result.Name = "txt_result";
            this.txt_result.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.txt_result.Size = new System.Drawing.Size(337, 297);
            this.txt_result.TabIndex = 3;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(527, 311);
            this.Controls.Add(this.txt_result);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lbl_result);
            this.Controls.Add(this.btn_testspeed);
            this.Name = "Form1";
            this.Text = "测试运行时间的";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_testspeed;
        private System.Windows.Forms.Label lbl_result;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txt_result;
    }
}

