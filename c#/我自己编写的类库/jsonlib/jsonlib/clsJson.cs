using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Xuhengxiao.jsonlib
{
    /// <summary>
    /// 这个是我做的json类,我的这个类包含2个主要方法。
    /// 1、读取字符串，返回的是XML对象
    /// 2、读取XML对象，返回的是保存格式为JSON格式的字符串。
    /// 这两个方法都是静态方法了，因为没必要创建多个对象
    /// </summary>
    public  class clsJson
    {
        /// <summary>
        /// 读取json格式的字符串，返回的是XML对象
        /// </summary>
        /// <param name="strJson"></param>
        /// <returns></returns>
        public static  XmlDocument readJson(string strJson)
        {
            //要返回的xml对象
            XmlDocument xmlDoc = new XmlDocument();
            //取得这个XML的根
            XmlElement xmlRoot = xmlDoc.DocumentElement;
            //当前的xml节点
            XmlElement xmlOld = xmlRoot;
            XmlElement xmlNew = null;
            string strTmp = null;

            //这里提前取得长度吧，免得重复运算
            int int_strJson_length = strJson.Length;
            for (int i = 0; i < int_strJson_length; i++)
            {
                switch (strJson[i])
                {
                    case '{':
                        //首先，这个不是第一个“{”，那个是根部。
                        if (xmlOld!=xmlRoot)
                        {
                            // { 表示进入一个节点啦。
                            //新建一个节点，连接上父节点
                        }
                        break;
                    case ':':
                        //表示有属性啦，
                        //区别是，如果后边连接的是字符串，后边的字符串就是属性值啦
                        //如果后边是 “[”，就表示这个的值是一个数组。 
                        break;
                    case '[':
                        //这个表示进入了一个数组啦
                        break;
                    case ',':
                        //表示要创建一个跟上边一个同级别的节点啦

                        break;
                    case '"':
                        //就是找字符串啦
                        //这里要注意的是双引号转义，我这里的判断是判断前面的字符串是不是'\\\"'
                        int int_index = strJson.IndexOf('"', i + 1);
                        string str_yinhaozhuanyi = @"\\\""";
                        while (int_index-str_yinhaozhuanyi.Length-1 > -1 &&
                            strJson.Substring(int_index - str_yinhaozhuanyi.Length - 1,str_yinhaozhuanyi.Length)==str_yinhaozhuanyi)
                        {
                            int_index = strJson.IndexOf('"', int_index + 1);//这个就是继续搜索啦
                        }
                        //到这里表示已经搜索到这个字符串啦
                        strTmp = strJson.Substring(i + 1, int_index - i - 2);//-2表示减去字符串两边的双引号啦
                        break;
                    case '}':
                        //意味着一个节点的结束了
                        //返回父节点
                        xmlOld = (XmlElement)xmlOld.ParentNode;
                        break;
                    case ']':
                        //意味着一个数组的结束了。
                        //返回父节点
                        xmlOld = (XmlElement)xmlOld.ParentNode;
                        break;
                    default:
                        break;
                }
            }


            return xmlDoc;
        }

        /// <summary>
        /// 读取xml对象，返回的是json格式的字符串
        /// </summary>
        /// <param name="xmlDoc"></param>
        /// <returns></returns>
        public static  string readXml(XmlDocument xmlDoc)
        {
            return null;
        }
    }
}
