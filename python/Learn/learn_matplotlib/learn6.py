#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-17 15:27:06
# Last Change:  2017-06-17 20:25:46
# File Name: learn2.py

# 直接在画布中画图形。

import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
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
l1 = Line2D([0, 1], [0, 1], figure=fig,color='r')
l2 = Line2D([0, 1], [1, 0], figure=fig)
fig.lines.extend([l1, l2])

# 显示啦, 这个显示不成功，一闪而过。
fig.show()
