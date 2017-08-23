#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Last Change:  2017-06-17 15:17:18
# Author:  kerwin.cn@gmail.com
# Created Time:2016-05-11 10:27:21
# Last modified: 2016-05-11 10:27:21
# File Name: learn1.py

# 这个是绘制一个3D.图

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
X = [1, 1, 2, 2]
Y = [3, 4, 4, 3]
Z = [1, 2, 1, 1]
ax.plot_trisurf(X, Y, Z)
plt.show()
