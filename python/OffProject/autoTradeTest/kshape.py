#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-04-22 22:24:42
# Last modified: 2016-04-22 22:40:45
# File Name: kshape.py


# import Time
import datetime


class kshape:
    # 这个是K线的数据类
    # 这个如果只是数据的话，好像可以用字典来实现吧。我以后会加上K线显示的。
    def __init__(self, datatime,  open, close, high, low):
        self.datatime = datatime
        self.open = open
        self.close = close
        self.high = high
        self.low = low
