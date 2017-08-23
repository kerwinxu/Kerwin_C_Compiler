# -*- coding: utf-8 -*-
"""
Created on Thu Jun  1 19:44:22 2017

@author: kerwin
"""

import tensorflow as tf


t=tf.zeros(shape=[1,2])#tensor数据格式，
var=tf.Variable(t)#一个变量。
sess=tf.InteractiveSession()
sess.run(tf.global_variables_initializer())#对variable进行初始化
print(sess.run(var))