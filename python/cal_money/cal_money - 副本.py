#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2015-11-03 12:03:28
# Last modified: 2015-11-06 21:37:57
# File Name: cal_money.py

# 这个是计算我的钱的
# 假设每个月赚5%，花500元。

import sys, string

def get_build_architecture():
    """Return the processor architecture.

    Possible results are "Intel", "Itanium", or "AMD64".
    """

    prefix = " bit ("
    i = string.find(sys.version, prefix)
    if i == -1:
        return "Intel"
    j = string.find(sys.version, ")", i)
    return sys.version[i+len(prefix):j]

print(get_build_architecture())
