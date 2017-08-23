#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-09-19 13:39:57
# Last Change:  2017-07-12 14:02:54
# File Name: learn_lxml1.py

from lxml import etree

root = etree.HTML(open(r"1.html", mode='r', encoding='UTF-8').read())

product_items = root.xpath("//div[@class='card']")
str_html2 = etree.tostring(product_items[0])
root2 = etree.HTML(str_html2)

# print("1" + root2.xpath("/div[@class='line']"))
tmp2 = root2.xpath("//div[@class='line']")
# if len(tmp2):
#     print "len:" + str(len(tmp2))
#     for i in tmp2:
#         print etree.tostring(i)

tmp3 = root2.xpath("//div[@class='card-back']/div/div/div[5]/span[2]/@title")
print(type(tmp3))
print(len(tmp3))
print(tmp3[0])

print(u"测试find函数")
tmp4 = root2.find(".//div[@class='card-back']/div/div/div[5]/span[2]")
print(type(tmp4))
print(u"好像这个find函数不能单独的选取元素里的属性值")
