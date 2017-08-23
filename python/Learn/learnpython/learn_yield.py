#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2015-10-13 15:21:47
# Last modified: 2015-10-13 22:42:39
# File Name: learn_yield.py


def fab1(max):
    n, a, b = 0, 0, 1
    while n<max:
        print(b)
        a, b = b, a + b
        n = n+1

def fab2(max):
    n, a, b = 0, 0, 1
    L = []
    while n<max:
        L.append(b)
        a, b = b, a+b
        n = n+1
    return L

def fab3(max):
    n, a, b = 0, 0, 1
    while n<max:
        yield b
        a, b = b, a + b
        n = n+1
# fab1(10)
# for i in fab2(10):
#     print(i)
for i in fab3(10):
    print(i)


# yield 相当于把函数的返回值变成 generator ，相当于列表吧。
# yield 用在读取文件中

 def read_file(fpath):
    BLOCK_SIZE = 1024
    with open(fpath, 'rb') as f:
        while True:
            block = f.read(BLOCK_SIZE)
            if block:
                yield block
            else:
                return
