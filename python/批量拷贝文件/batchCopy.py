#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-04-27 21:43:05
# Last modified: 2016-04-27 21:59:33
# File Name: batchCopy.py

# 这个程序是为了批量拷贝文件的
# 输入参数是一个文件，里边每一行都是文件名。

import sys

def fun_copy_file_to_dir(list_file_name, dir):
    for file_name in list_file_name:


# 首先判断参数个数，我的第一个参数是一个文件，第二个参数是目录
if(len(sys.argv)!=3):
    print("""帮助程序有2个参数，
          第一个参数是一个文本文件名，里边的每行就是一个目录""")

list_file_name = []
file_name = sys.argv[1]
for line in open(file_name):
    list_file_name.append(line)

if(len(list_file_name)>0):

