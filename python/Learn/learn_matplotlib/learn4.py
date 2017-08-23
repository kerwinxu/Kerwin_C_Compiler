#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-17 15:27:06
# Last Change:  2017-06-17 15:57:48
# File Name: learn2.py

# 绘制多轴图形

import matplotlib.pyplot as plt
import numpy as np

# 数据
x = np.linspace(0, 10, 1000)
y = np.sin(x)
z = np.cos(x**2)

# 屏幕
plt.subplot(221)  # 第一行左图
plt.plot(x, np.sin(x))
plt.subplot(222)  # 第一行右图
plt.plot(x, np.cos(x))
plt.subplot(212)  # 第二整行
plt.plot(x, x)
# 显示啦
plt.show()
