#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-05-13 20:08:49
# Last modified: 2016-05-13 20:08:49
# File Name: learn1.py

# 这个是测试父类子类的


class people:
    def speak(self):
        print("people speak")


class student(people):
    def speak(self):
        print("student speak")

p = student()
p.speak()

p2 = student
p3 = p2()
p3.speak()
