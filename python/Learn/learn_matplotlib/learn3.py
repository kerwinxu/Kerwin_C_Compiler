#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-17 15:27:06
# Last Change:  2017-06-17 15:43:56
# File Name: learn2.py

# 简单的绘制图形

import matplotlib.pyplot as plt
import numpy as np

# 数据
x = np.linspace(0, 10, 1000)
y = np.sin(x)
z = np.cos(x**2)

# 屏幕
plt.figure(figsize=(8, 4))
# 绘制啦, 同时绘制2条线。
plt.plot(x, np.sin(x), x, np.cos(x))
# 显示啦
plt.show()
