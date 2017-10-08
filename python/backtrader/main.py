#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-09-20 20:49:18
# Last Change:  2017-10-08 16:54:27
# File Name: sample1.py

from __future__ import (absolute_import, division, print_function,
                        unicode_literals)

# import datetime  # For datetime objects
# import os.path  # To manage paths
# import sys  # To find out the script name (in argv[0])
# import pandas as pd
# from WindPy import w
# Import the backtrader platform
import backtrader as bt
import sys
sys.path.append("../")
from FinanceDataMining import init_data


def printfor(listordict, tab_count=0):
    pass

if __name__ == '__main__':
    # Create a cerebro entity
    cerebro = bt.Cerebro()

    # Add a strategy
    # 在这里加上我的策略，从
    from Strategy_MA_4 import Strategy_MA
    cerebro.addstrategy(Strategy_MA)

    # 设置佣金杠杆
    # 上海黄金交易所手续费为万分之8，白银的递延费为万分之1.5， * 362 = 0.05475，这里不考虑杠杆。
    cerebro.broker.setcommission(commission=0.0008, interest=0.05475)

    # Create a Data Feed
    # parase_dates = True是为了读取csv为dataframe的时候能够自动识别datetime格式的字符串，big作为index
    # 注意，这里最后的pandas要符合backtrader的要求的格式
    dataframe = init_data.get_data(init_data.str_tonghuashun, init_data.tonghuashun_AGTD)
    dataframe['openinterest'] = 0
    data = bt.feeds.PandasData(dataname=dataframe)
    # Add the Data Feed to Cerebro
    cerebro.adddata(data)

    # 每股固定10个
    # cerebro.addsizer(bt.sizers.PercentSizer, percents=10)

    # 加入分析师
    cerebro.addanalyzer(bt.analyzers.SharpeRatio, _name='SharpeRatio')
    cerebro.addanalyzer(bt.analyzers.DrawDown, _name='DW')
    cerebro.addanalyzer(bt.analyzers.AnnualReturn, _name='AnnualReturn')
    cerebro.addanalyzer(bt.analyzers.Calmar, _name='Calmar')
    cerebro.addanalyzer(bt.analyzers.PeriodStats, _name='PeriodStats')
    cerebro.addanalyzer(bt.analyzers.Returns, _name='Returns')
    cerebro.addanalyzer(bt.analyzers.TradeAnalyzer, _name='TradeAnalyzer')
    cerebro.addanalyzer(bt.analyzers.SQN, _name='SQN')

    # Set our desired cas?!?jedi=0, h start?!? (*_*param cash*_*) ?!?jedi?!?
    cerebro.broker.setcash(100000.0)

    # Print out the starting conditions
    print('Starting Portfolio Value: %.2f' % cerebro.broker.getvalue())

    # Run over everything
    results = cerebro.run()

    # Print out the final result
    print('Final Portfolio Value: %.2f' % cerebro.broker.getvalue())
    # Plot the result
    cerebro.plot()

    # 显示分析师结果
    strat = results[0]
    print('夏普比率:', strat.analyzers.SharpeRatio.get_analysis())
    print('最大回撤:', strat.analyzers.DW.get_analysis())
    # print('年度回撤：', strat.analyzers.AnnualReturn.get_analysis())
    # print('Calmar：', strat.analyzers.Calmar.get_analysis())
    print('PeriodStats：', strat.analyzers.PeriodStats.get_analysis())
    print('年化收益：', strat.analyzers.Returns.get_analysis())
    print('# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # ')
    print('TradeAnalyzer：', strat.analyzers.TradeAnalyzer.get_analysis())
    # print('SQN指数：', strat.analyzers.SQN.get_analysis())
