#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-06-10 19:10:31
# Last Change:  2016-06-10 21:17:20
# File Name: testspeed.py

# 这个小程序是计算python的速度的

A = 99899
B = 88888


def test1():
    global A
    global B
    tmp1 = A + B
    tmp1 = A - B
    tmp1 = A * B
    tmp1 = A / B
    A = A + 1
    B = B + 1
    return tmp1

if __name__ == '__main__':
    from timeit import Timer
    t1 = Timer("test1()", "from __main__ import test1")
    print(t1.timeit(100000000))
