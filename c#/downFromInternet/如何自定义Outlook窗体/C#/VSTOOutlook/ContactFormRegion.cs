using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Office = Microsoft.Office.Core;
using Outlook = Microsoft.Office.Interop.Outlook;

namespace VSTOOutlook
{
    partial class ContactFormRegion
    {
        // 对应的联系人(Contact)对象
        private Outlook.ContactItem contactItem;
        
        // 自定义属性对象
        private Outlook.ItemProperty MotherName = null;
        private Outlook.ItemProperty MotherTelNumber = null;
        private Outlook.ItemProperty FatherName = null;
        private Outlook.ItemProperty FatherTelNumber = null;

        #region 窗体区域工厂

        [Microsoft.Office.Tools.Outlook.FormRegionMessageClass(Microsoft.Office.Tools.Outlook.FormRegionMessageClassAttribute.Contact)]
        [Microsoft.Office.Tools.Outlook.FormRegionName("VSTOOutlook.ContactFormRegion")]
        public partial class ContactFormRegionFactory
        {
            // 在初始化窗体区域之前发生。
            // 若要阻止窗体区域出现，请将 e.Cancel 设置为 True。
            // 使用 e.OutlookItem 获取对当前 Outlook 项的引用。
            private void ContactFormRegionFactory_FormRegionInitializing(object sender, Microsoft.Office.Tools.Outlook.FormRegionInitializingEventArgs e)
            {
                e.Cancel = true;
            }
        }

        #endregion

        // 在显示窗体区域之前发生。
        // 使用 this.OutlookItem 获取对当前 Outlook 项的引用。
        // 使用 this.OutlookFormRegion 获取对窗体区域的引用。
        private void ContactFormRegion_FormRegionShowing(object sender, System.EventArgs e)
        {
            // 获得FormRegion所对应的Contact对象
            contactItem = this.OutlookItem as Outlook.ContactItem;

            // 在从自定义属性中取出值时，首先确保自定义属性不为空。
            EnsureProperties();

            // 从联系人的自定义属性中取出值为控件赋值
            txbMotherName.Text = MotherName.Value;
            txbFatherName.Text = FatherName.Value;
            txbMotherTel.Text = MotherTelNumber.Value;
            txbFatherTel.Text = FatherTelNumber.Value;
        }

        // 在关闭窗体区域时发生。
        // 使用 this.OutlookItem 获取对当前 Outlook 项的引用。
        // 使用 this.OutlookFormRegion 获取对窗体区域的引用。
        private void ContactFormRegion_FormRegionClosed(object sender, System.EventArgs e)
        {
            // 释放对象
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(contactItem);
            contactItem = null;
        }

        // 确保所有自定义属性不为空
        private void EnsureProperties()
        {
            EnsureItemProperty(ref MotherName, "montherName", Outlook.OlUserPropertyType.olText);
            EnsureItemProperty(ref FatherName, "fatherName", Outlook.OlUserPropertyType.olText);
            EnsureItemProperty(ref MotherTelNumber, "motherTelNumber", Outlook.OlUserPropertyType.olText);
            EnsureItemProperty(ref FatherTelNumber, "fatherTelNumber", Outlook.OlUserPropertyType.olText);
        }

        // 确保项目属性不为空引用
        private void EnsureItemProperty(ref Outlook.ItemProperty property, string name, Outlook.OlUserPropertyType propertyType)
        {
            // 如果自定义属性为空时
            // 首先从联系人项关联的属性集合中获得属性对象
            // 如果项目集合中还不存在该属性时，就把该属性名称添加进ItemProperties集合中
            if (property == null)
            {
                property = contactItem.ItemProperties[name];
                if (property == null)
                {
                    property = contactItem.ItemProperties.Add(name, propertyType);
                }
            }
        }

        // 父亲名字修改事件
        private void txbFatherName_TextChanged(object sender, EventArgs e)
        {
            // 保存值到自定义的属性中
            FatherName.Value = txbFatherName.Text;
        }

        // 父亲的电话号码修改事件
        private void txbFatherTel_TextChanged(object sender, EventArgs e)
        {
            // 保存值到自定义的属性中
            FatherTelNumber.Value = txbFatherTel.Text;
        }

        // 母亲名字修改事件
        private void txbMotherName_TextChanged(object sender, EventArgs e)
        {
            // 保存值到自定义的属性中
            MotherName.Value = txbMotherName.Text;
        }

        // 母亲的电话号码修改事件
        private void txbMotherTel_TextChanged(object sender, EventArgs e)
        {
            // 保存值到自定义的属性中
            MotherTelNumber.Value = txbMotherTel.Text;
        }
    }
}
