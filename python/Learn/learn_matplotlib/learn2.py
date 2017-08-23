#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-17 15:27:06
# Last Change:  2017-06-17 15:36:07
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
# 绘制啦
plt.plot(x, y, label="sin(x)", color="red", linewidth=2)
plt.xlabel("x")  # X轴文字
plt.ylabel("sin(x)")  # y轴文字
plt.title("sin")  # 图表的标题
plt.ylim(-1.2, 1.2)  # 设置y轴范围
plt.legend()  #显示图示
# 显示啦
plt.show()
