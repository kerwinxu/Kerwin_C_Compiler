#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-09-17 14:03:47
# Last Change:  2016-09-17 14:25:40
# File Name: csvEx.py

# 这个库就2个方法，是解决一个问题的，就是一个元素为字典的列表和CSV文件之间的转化问题。

import csv


def list_dict_to_csv(list_dict, strOutCsvFileName, outEmpty="0"):
    """
    将一个元素为字典的列表保存到一个CSV文件中。
    Args:
        list_dict:元素为字典的列表
        strOutCsvFileName:要导出的CSV文件名
        outEmpty:因为列表的有些项目不全，所以这里有个。
    Remarks:这个方法好像有个类似的实现，就是csv.DictWriter,
            不过这个官方实现的方法，有个问题，即得预先知道列名，且列表的所有项目都得包含所有的列名。
    """
    # 我的操作是这样的，首先取得所有的KEY, 这里暂时只是取得第一行的
    # 然后循环所有的列表，按照key的顺序输入到文件中。
    keys = list_dict[0].keys()
    # 然后得判断是否有别的列名
    for item1 in list_dict:
        for key_name in item1.keys():
            # 判断是否已经加进去了
            if key_name not in keys:
                keys.append(key_name)
    dict_writer = csv.writer(file(strOutCsvFileName, "wb"))
    dict_writer.writerow(keys)
    for item1 in list_dict:
        list_tmp = []
        for item2 in keys:
            # 还得判断是否有这一项呢
            if item2 in item1.keys():
                list_tmp.append(item1[item2])
            else:
                # 如果没有这一项，我这里是直接输出0的, 默认参数为0
                list_tmp.append(outEmpty)
        dict_writer.writerow(list_tmp)


def csv_to_list_dict(strOutCsvFileName):
    '''
    将CSV文件导入到一个元素为字典的列表中。


    '''
    pass
