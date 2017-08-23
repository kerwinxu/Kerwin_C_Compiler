#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-06-07 19:03:27
# Last Change:  2017-06-07 20:11:03
# File Name: T2.py

# 这个程序仅仅是看看有多少天是在均线之上，有多少天在均线之下。
from TradeSystemBase import TradeSystemBase
import numpy as np
import matplotlib.pyplot as plt


class T2(TradeSystemBase):
    def up_ma(self, n):
        """
        查看有多少天在均线之上的，最低价也超过均线的。
        Args:
            n：多少天均线
        """
        # 最低价
        _low = np.array(self.KShapeData[self.LOW])
        # 然后求均线
        _ma1 = []
        for i in range(len(self.KShapeData[self.LOW])):
            _ma1.append(self.MA(n, i))

        _ma = np.array(_ma1)

        # 求最低价也大于等于均线的数组
        _close = np.array(self.KShapeData[self.CLOSE])
        _up = _close[_low >= _ma]

        # 一共有多少天
        _total_days = len(self.KShapeData[self.CLOSE])
        _up_days = len(_up)
        _percent = _up_days/_total_days*100
        # print("一共有", _up_days, "天最低价大于等于均线，占比",_percent, "%")
        return _percent
        pass

    def down_ma(self, n):
        """
        查看有多少天在均线之下的，最高价也没超过均线的。
        Args:
            n：多少天均线
        """
        # 最低价
        _high = np.array(self.KShapeData[self.HIGH])
        # 然后求均线
        _ma1 = []
        for i in range(len(self.KShapeData[self.HIGH])):
            _ma1.append(self.MA(n, i))

        _ma = np.array(_ma1)

        # 求最低价也大于等于均线的数组
        _close = np.array(self.KShapeData[self.CLOSE])
        _high = _close[_high <= _ma]

        # 一共有多少天
        _total_days = len(self.KShapeData[self.CLOSE])
        _high_days = len(_high)
        _percent = _high_days/_total_days*100
        # print("一共有", _high_days, "天最高低于等于均线，占比",_percent, "%")
        return _percent
        pass

if __name__ == '__main__':
    _t2 = T2()
    _t2.setKShapeData2("Table.xls")
    for i in range(3, 120):
        _percent1 = _t2.up_ma(i)
        _percent2 = _t2.down_ma(i)
        _percent3 = _percent1 + _percent2
        print("%d天均线，大于均线占比：%.2f%%, 小于均线占比：%.2f%%, 合起来占比:%.2f%%"%(i, _percent1, _percent2, _percent3))
