namespace VSTOOutlook
{
    [System.ComponentModel.ToolboxItemAttribute(false)]
    partial class ContactFormRegion : Microsoft.Office.Tools.Outlook.FormRegionBase
    {
        public ContactFormRegion(Microsoft.Office.Interop.Outlook.FormRegion formRegion)
            : base(Globals.Factory, formRegion)
        {
            this.InitializeComponent();
        }

        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txbFatherName = new System.Windows.Forms.TextBox();
            this.txbMotherName = new System.Windows.Forms.TextBox();
            this.txbFatherTel = new System.Windows.Forms.TextBox();
            this.txbMotherTel = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.Location = new System.Drawing.Point(4, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "父亲姓名：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label2.Location = new System.Drawing.Point(3, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "母亲姓名：";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label3.Location = new System.Drawing.Point(233, 16);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(120, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "父亲电话号码：";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label4.Location = new System.Drawing.Point(233, 64);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(120, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "母亲电话号码：";
            // 
            // txbFatherName
            // 
            this.txbFatherName.Location = new System.Drawing.Point(90, 16);
            this.txbFatherName.Name = "txbFatherName";
            this.txbFatherName.Size = new System.Drawing.Size(127, 21);
            this.txbFatherName.TabIndex = 4;
            this.txbFatherName.TextChanged += new System.EventHandler(this.txbFatherName_TextChanged);
            // 
            // txbMotherName
            // 
            this.txbMotherName.Location = new System.Drawing.Point(90, 65);
            this.txbMotherName.Name = "txbMotherName";
            this.txbMotherName.Size = new System.Drawing.Size(127, 21);
            this.txbMotherName.TabIndex = 5;
            this.txbMotherName.TextChanged += new System.EventHandler(this.txbMotherName_TextChanged);
            // 
            // txbFatherTel
            // 
            this.txbFatherTel.Location = new System.Drawing.Point(347, 16);
            this.txbFatherTel.Name = "txbFatherTel";
            this.txbFatherTel.Size = new System.Drawing.Size(158, 21);
            this.txbFatherTel.TabIndex = 6;
            this.txbFatherTel.TextChanged += new System.EventHandler(this.txbFatherTel_TextChanged);
            // 
            // txbMotherTel
            // 
            this.txbMotherTel.Location = new System.Drawing.Point(347, 59);
            this.txbMotherTel.Name = "txbMotherTel";
            this.txbMotherTel.Size = new System.Drawing.Size(158, 21);
            this.txbMotherTel.TabIndex = 7;
            this.txbMotherTel.TextChanged += new System.EventHandler(this.txbMotherTel_TextChanged);
            // 
            // ContactFormRegion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txbMotherTel);
            this.Controls.Add(this.txbFatherTel);
            this.Controls.Add(this.txbMotherName);
            this.Controls.Add(this.txbFatherName);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ContactFormRegion";
            this.Size = new System.Drawing.Size(583, 119);
            this.FormRegionShowing += new System.EventHandler(this.ContactFormRegion_FormRegionShowing);
            this.FormRegionClosed += new System.EventHandler(this.ContactFormRegion_FormRegionClosed);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        #region Form Region Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private static void InitializeManifest(Microsoft.Office.Tools.Outlook.FormRegionManifest manifest, Microsoft.Office.Tools.Outlook.Factory factory)
        {
            manifest.FormRegionName = "父母信息";
            manifest.FormRegionType = Microsoft.Office.Tools.Outlook.FormRegionType.Adjoining;

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txbFatherName;
        private System.Windows.Forms.TextBox txbMotherName;
        private System.Windows.Forms.TextBox txbFatherTel;
        private System.Windows.Forms.TextBox txbMotherTel;

        public partial class ContactFormRegionFactory : Microsoft.Office.Tools.Outlook.IFormRegionFactory
        {
            public event Microsoft.Office.Tools.Outlook.FormRegionInitializingEventHandler FormRegionInitializing;

            private Microsoft.Office.Tools.Outlook.FormRegionManifest _Manifest;

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            public ContactFormRegionFactory()
            {
                this._Manifest = Globals.Factory.CreateFormRegionManifest();
                ContactFormRegion.InitializeManifest(this._Manifest, Globals.Factory);
                this.FormRegionInitializing += new Microsoft.Office.Tools.Outlook.FormRegionInitializingEventHandler(this.ContactFormRegionFactory_FormRegionInitializing);
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            public Microsoft.Office.Tools.Outlook.FormRegionManifest Manifest
            {
                get
                {
                    return this._Manifest;
                }
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            Microsoft.Office.Tools.Outlook.IFormRegion Microsoft.Office.Tools.Outlook.IFormRegionFactory.CreateFormRegion(Microsoft.Office.Interop.Outlook.FormRegion formRegion)
            {
                ContactFormRegion form = new ContactFormRegion(formRegion);
                form.Factory = this;
                return form;
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            byte[] Microsoft.Office.Tools.Outlook.IFormRegionFactory.GetFormRegionStorage(object outlookItem, Microsoft.Office.Interop.Outlook.OlFormRegionMode formRegionMode, Microsoft.Office.Interop.Outlook.OlFormRegionSize formRegionSize)
            {
                throw new System.NotSupportedException();
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            bool Microsoft.Office.Tools.Outlook.IFormRegionFactory.IsDisplayedForItem(object outlookItem, Microsoft.Office.Interop.Outlook.OlFormRegionMode formRegionMode, Microsoft.Office.Interop.Outlook.OlFormRegionSize formRegionSize)
            {
                if (this.FormRegionInitializing != null)
                {
                    Microsoft.Office.Tools.Outlook.FormRegionInitializingEventArgs cancelArgs = Globals.Factory.CreateFormRegionInitializingEventArgs(outlookItem, formRegionMode, formRegionSize, false);
                    this.FormRegionInitializing(this, cancelArgs);
                    return !cancelArgs.Cancel;
                }
                else
                {
                    return true;
                }
            }

            [System.Diagnostics.DebuggerNonUserCodeAttribute()]
            Microsoft.Office.Tools.Outlook.FormRegionKindConstants Microsoft.Office.Tools.Outlook.IFormRegionFactory.Kind
            {
                get
                {
                    return Microsoft.Office.Tools.Outlook.FormRegionKindConstants.WindowsForms;
                }
            }
        }
    }

    partial class WindowFormRegionCollection
    {
        internal ContactFormRegion ContactFormRegion
        {
            get
            {
                foreach (var item in this)
                {
                    if (item.GetType() == typeof(ContactFormRegion))
                        return (ContactFormRegion)item;
                }
                return null;
            }
        }
    }
}
