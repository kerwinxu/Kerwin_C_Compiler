#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-05-20 09:47:05
# Last Change:  2017-06-07 19:50:59
# File Name: TradeSystemBase.py

import pandas


class TradeSystemBase:
    """
    交易系统的基类
    """

    # 如下定义一些常量字符串
    TIMEDATE = u"时间"
    OPEN = u"开盘"
    HIGH = u"最高"
    LOW = u"最低"
    CLOSE = u"收盘"
    VOLUME = u"总手"
    AMOUNT = u"金额"

    def getKShapeData(self, strFileName, encoding='gbk', sep='\t'):
        """ 从csv文件中读取K线数据
            Args:
                strFileName:文件名
        """
        df = pandas.read_csv(strFileName, encoding='gbk', sep='\t')
        return df

    def setKShapeData(self, _kshapedata):
        self.KShapeData = _kshapedata

    def setKShapeData2(self, fileName):
        self.setKShapeData(self.getKShapeData(fileName))

    def MA(self, n, c):
        """
        取得均线
        Args :
            n：求几天的均线
            c：求哪天的均线
        """
        # 首先当然是判断c+1是否大于n, 这里约定第一天的下标为0
        if c + 1 >= n:
            # 如果c + 1大于等于n，表示可以截取n天的，比如说要求5天均线，只要下标为4，就可以截取5天的了
            return sum(self.KShapeData[self.CLOSE][c-n+1:c+1])/n
            pass
        else:
            # 只要计算到c位置的均值就可以了，天数为（c + 1）  天
            return sum(self.KShapeData[self.CLOSE][:c+1])/(c+1)
            pass

    def EMA_INIT(self, a):
        """
        指数平均线，EMAtoday=a * Pricetoday + ( 1 – a ) * EMAyesterday;
        我这里用这个方法求所有天的指数平均线，而不是具体哪天的, 这样好处是一次运算。
        Args：
            a：平滑系数
        """
        ema_result = []
        for i in range(len(self.KShapeData)):
            if i == 0:
                # 第一天就是收盘价
                ema_result.append(self.KShapeData[self.CLOSE][0])
            else:
                # 其他的天，就套用公式啦
                ema_result.append(a * self.KShapeData[self.CLOSE][i] + (1 - a) * ema_result[i - 1])
        return ema_result

    def Show(self):
        """
        显示K线图的
        """
        pass

if __name__ == '__main__':
    c = TradeSystemBase()
    c.setKShapeData(c.getKShapeData("Table.xls"))
    for i in range(len(c.KShapeData)):
        print(c.MA(5, i))
        pass
    # 求ema，
    print(c.EMA_INIT(2 / (2+1)))
