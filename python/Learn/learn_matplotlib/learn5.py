#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-17 15:27:06
# Last Change:  2017-06-17 16:30:25
# File Name: learn2.py

# 创建复杂图形

import matplotlib.pyplot as plt
import numpy as np

# 数据
x = np.linspace(0, 10, 1000)
y = np.sin(x)
z = np.cos(x**2)

# 创建Figure对象
# 用Figure对象创建一个或者多个Axes或者Subplot对象
# 调用Axies等对象的方法创建各种简单类型的Artists

fig = plt.figure()
# ax = fig.add_axes([0.15, 0.1, 0.7, 0.3])
ax = fig.add_subplot(111)
line,  = ax.plot([1, 2, 3], [1, 2, 1])

# 显示啦
plt.show()
