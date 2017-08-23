#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-09-17 10:14:53
# Last Change:  2017-06-12 10:12:53
# File Name: spiderLocalHtmlToCsv.py

# 这个程序要实现的功能很简单，就是爬本地的html文件，类似阿里巴巴的产品列表页面，有很多产品，产品也有很多属性信息。
# 收集信息，且保存到csv文件中的
# 1、首先得有一个类来作为保存信息的，类似scrapy中的item, 后来想想，这个可以用字典来代替啊。
# 2、收集信息类，主要是分2个，一个是爬单个信息，一个是爬单个信息的各个属性。
# 3、将所有产品保存到CSV文件中。

# 一些约定，我打算将要选取的XPATH配置放在一个CSV文件中
# 内容大概是如下
# Product, //div[@class='card']
# company_name,//a[@class='company']/@title
# email,//div[@class='email']/@title
# webside,//a[@class='company']/@href
# name,//a[@class='name']/@title
# tel,//div[@class='card-back']/div/div/div[3]/span[2]/@title
# Mobile,//div[@class='card-back']/div/div/div[5]/span[2]/@title

import sys
sys.path.append(r'E:\Program\python\csv_ex')
import csvEx
from lxml import etree
import os
import getopt
import csv


class clsItem:
    # 这个用字典来替代吧，更方便。
    pass


Product_key_name = "Product"
dict_xpath_alibaba_1 = {
    Product_key_name: "//div[@class='card']",
    'company_name': "//a[@class='company']/@title",
    'email': "//div[@class='email']/@title",
    'webside': "//a[@class='company']/@href",
    'name': "//a[@class='name']/@title",
    'tel': "//div[@class='card-back']/div/div/div[3]/span[2]/@title",
    'Mobile': "//div[@class='card-back']/div/div/div[5]/span[2]/@title"
}


def getItem(str_html, dict_xpath):
    '''
    根据读取的字符串和规则，搜索相关的信息而已。
    Args：
        str_html:html的字符串
        lst_dict_xpath:每一项都是字典的列表，其中约定字典键名为"Product"的为产品，其他的为产品属性。
    Return：返回搜索到的信息。内容是一个元素为字典的列表。

    '''
    # 这个就是要返回的，元素为字典的列表，里边有产品信息。
    lst_dict_product_retrun = []
    # 初始化
    root = etree.HTML(str_html)
    # 首先分割各个产品。
    lst_product = root.xpath(dict_xpath[Product_key_name])
    # 然后判断是否空值啦。
    if lst_product:
        # 迭代各个产品
        for product_item in lst_product:
            # 我这里是重新生成一个对象来搜索，要不然搜索的就是全部啊。
            root2 = etree.HTML(etree.tostring(product_item))
            # 这里就搜索这个产品的每个属性啦
            dict_product = {}
            # 遍历要搜索的产品属性
            for xpath_key in dict_xpath:
                # 这个不能是分割产品的xpath
                if xpath_key != Product_key_name:
                    tmp = root2.xpath(dict_xpath[xpath_key])
                    if len(tmp):
                        dict_product[xpath_key] = tmp[0]
                    pass
            lst_dict_product_retrun.append(dict_product)
        pass
    else:
        # 第一步都找不到，就返回空值啦。
        return None
    return lst_dict_product_retrun


def getFineNameNotExt(filename):
    (filepath, tempfilename) = os.path.split(filename)
    (shotname, extension) = os.path.splitext(tempfilename)
    return shotname


def usage():
    print u"""本程序适合类似淘宝网产品搜索页面提取产品信息
    参数：
        -h 或者--help : 都将打印本帮助
        -x 或者--xpath : xpath配置文件，是一个CSV文件，配置文件格式如下, 第一项为Product
            Product, //div[@class='card']
            company_name,//a[@class='company']/@title
            email,//div[@class='email']/@title
            webside,//a[@class='company']/@href
            name,//a[@class='name']/@title
            tel,//div[@class='card-back']/div/div/div[3]/span[2]/@title
            Mobile,//div[@class='card-back']/div/div/div[5]/span[2]/@title
        文件名，是在这里边搜索信息的。
    """


def loadXpath(csvfilename):
    '''
    从文件中加载xpath配置
    '''
    dict_xpath_return = {}
    reader = csv.reader(file(csvfilename, 'rb'))
    for line in reader:
        # 可以参考文件格式，无非是一个是键名，一个是键值。
        dict_xpath_return[line[0]] = line[1]
    return dict_xpath_return


if __name__ == "__main__":
    # 首先取得参数，就是一个文件名
    # 然后读取这个文件内容并调用getItem进行搜索，
    # 取得不带扩展名的文件名，拼接成CSV文件名，并导出。
    # 2.0版本的，特点是xpath是从文件中读取的，
    # 参数有2个小选项，一个是帮助，另外一个就是读取XPATH配置的。
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hx:", ["help", "xpath="])
        # 遍历所有的选项
        for o, a in opts:
            if o in ("-h", "--help"):
                # 如果是帮助，就打印帮助
                usage()
                # 退出程序
                sys.exit()
            if o in ("-x", "--xpath"):
                # 首先加载xpath配置
                dict_xpath = loadXpath(a)
                # 遍历要搜索的文件
                for html_file_name in args:
                    file_obj = open(html_file_name)
                    try:
                        # 先读取文件内容
                        str_html = file_obj.read()
                        # 然后读取相应的信息
                        list_dict_product = getItem(str_html, dict_xpath)
                        # 取得不带拓展的文件名
                        # 组成csv文件名
                        out_csv_file_name = getFineNameNotExt(html_file_name) + ".csv"
                        # 导出到CSV文件中的
                        csvEx.list_dict_to_csv(list_dict_product, out_csv_file_name)
                    finally:
                        file_obj.close()
    # try 的
    except getopt.GetoptError:
        print "getopt.GetoptError"
