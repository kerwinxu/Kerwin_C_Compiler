#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-09-18 22:14:26
# Last Change:  2017-09-19 20:07:48
# File Name: simple1.py
import talib
from rqalpha import run_func
import tonghuashun_AGUSDO_config
from rqalpha.utils.logger import user_log as logger
import FinanceDataMining_DataSource
from rqalpha.api import  *


def init(context):
    # 在context中保存全局变量
    context.s1 = "同花顺.AGUSDO"
    # 实时打印日志
    logger.info("RunInfo: {}".format(context.run_info))

    # 设置这个策略当中会用到的参数，在策略中可以随时调用，这个策略使用长短均线，我们在这里设定长线和短线的区间，在调试寻找最佳区间的时候只需要在这里进行数值改动
    context.SHORTPERIOD = 20
    context.LONGPERIOD = 120


# before_trading此函数会在每天策略交易开始前被调用，当天只会被调用一次
def before_trading(context):
    logger.info("开盘前执行before_trading函数")


def handle_bar(context, bar_dict):
    close = FinanceDataMining_DataSource.get_bar(context.s1, bar_dict.dt, "1d")['Close']

    # 因为策略需要用到均线，所以需要读取历史数据
    prices = FinanceDataMining_DataSource.history_bars(context.s1, "1d", "Close", bar_dict.dt)

    if prices is None:
        return

    # 使用talib计算长短两根均线，均线以array的格式表达
    short_avg = talib.SMA(prices, context.SHORTPERIOD)
    long_avg = talib.SMA(prices, context.LONGPERIOD)

    # 计算现在portfolio中股票的仓位
    # 要有一个判断是否存在这个股票的
    cur_position = 0
    if context.s1 in context.portfolio.positions:
        cur_position = context.portfolio.positions[context.s1].quantity

    # 计算现在portfolio中的现金可以购买多少股票
    shares = context.portfolio.cash/close

    # 如果短均线从上往下跌破长均线，也就是在目前的bar短线平均值低于长线平均值，而上一个bar的短线平均值高于长线平均值
    if short_avg[-1] - long_avg[-1] < 0 and short_avg[-2] - long_avg[-2] > 0 and cur_position > 0:
        # 进行清仓
        logger.info("进行清仓")
        order_target_value(context.s1, 0)

    # 如果短均线从下往上突破长均线，为入场信号
    if short_avg[-1] - long_avg[-1] > 0 and short_avg[-2] - long_avg[-2] < 0:
        # 满仓入股
        logger.info("10分之一仓入股")
        import ipdb; ipdb.set_trace()  # XXX BREAKPOINT
        order_shares(context.s1, int(shares/10), close)


def after_trading(context):
    logger.info("开盘前执行after_trading函数")

# 您可以指定您要传递的参数
run_func(init=init, handle_bar=handle_bar, config=tonghuashun_AGUSDO_config.config)
