#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-06-10 22:03:14
# Last Change:  2016-06-10 22:06:29
# File Name: pypy_csv.py

import csv

import sys
reload(sys)
sys.setdefaultencoding("utf-8")

keys = [u"姓名", u"性别"]
dict_writer = csv.writer(file("a.csv", "wb"))
dict_writer.writerow(keys)
