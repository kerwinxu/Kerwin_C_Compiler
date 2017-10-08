#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-09-14 21:18:18
# Last Change:  2017-09-19 14:38:12
# File Name: FinanceDataMining_DataSource.py

# from rqalpha.data.base_data_source import BaseDataSource
# 要包含数据
import sys
import os
# 如下几行只是为了加载所需要的目录
this_file_path = os.path.abspath(__file__)
this_file_dir = os.path.dirname(this_file_path)
lib_dir = os.path.join(this_file_dir, "../")
sys.path.append(lib_dir)
from FinanceDataMining import init_data

kdata = {}


def get_tushare_k_data(instrument, start_dt, end_dt):
    """获得K线数据
        Args : instrument : 我打算这个参数分2部分，第一部分是数据提供者，第二部分是代码
        Args : start_dt : 开始日期
        Args : end_dt   : 结束日期
    """
    # 首先判断是否已经有数据啊。
    # format date
    dt_start = start_dt.strftime('%Y-%m-%d')
    dt_end = end_dt.strftime('%Y-%m-%d')
    if(instrument not in kdata.keys()):
        # 到这里就是没有相关数据了，需要加载了
        data_supplier, code = str(instrument).split('.')
        # 加载数据
        kdata[instrument] = init_data.get_data(data_supplier, code)
        # 然后选择区间啦
    try:
        return kdata[instrument][dt_start:dt_end]
    except Exception as e:
        print(e)
        return None


def get_bar(instrument, dt, frequency):
    """仅仅取得一天的k线数据
        Args
            instrument : 数据提供者.标识
            dt : 日期
            frequency :  周期，比如日线是 1d
        return: 返回字典数据"""
    # 这个仅仅支持日线
    if frequency != '1d':
        return None
    bar_data = get_tushare_k_data(instrument, dt, dt)
    if bar_data is None:
        return None
    return bar_data.iloc[0].to_dict()


def history_bars(instrument, frequency, fields, dt, bar_count=0):
    """
    取得某列的历史数据。
        Args :
            instrument  : 数据提供者.标识
            frequency   : 周期
            fields      : 列名
            dt          : 日期
            bar_count   : 需要返回多少个数据
        return : 返回某个列的历史数据"""
    # 这个仅仅支持日线
    # tushare 的k线数据未对停牌日期做补齐，所以遇到不跳过停牌日期的情况我们先甩锅。有兴趣的开发者欢迎提交代码补齐停牌日数据。
    if frequency != '1d':
        return None

    # 首先判断是否有相关数据吧。
    if(instrument not in kdata.keys()):
        # 到这里就是没有相关数据了，需要加载了
        data_supplier, code = str(instrument).split('.')
        # 加载数据
        kdata[instrument] = init_data.get_data(data_supplier, code)
        # 然后选择区间啦
    try:
        # 取得结束日期
        dt_end = dt.strftime('%Y-%m-%d')
        # 切片
        bar_data = kdata[instrument][:dt_end]
        # 如果需要的只是指定天数的数据
        if bar_count != 0:
            bar_data = bar_data[(0-bar_count-1):-1]
        if bar_data is None or bar_data.empty:
            return None
        else:
            # 注意传入的 fields 参数可能会有不同的数据类型
            # if isinstance(fields, str):
            #     fields = [fields]
            # fields = [field for field in fields if field in bar_data.columns]
            # as_matrix可以转化为ta-lib方便使用的格式。
            bar_data = bar_data[fields]
            bar_data = bar_data.as_matrix()
            return bar_data
    except Exception as e:
        print(e)
        return None


def availaible_data_range(frequency):
    # 原先例子范围的是从2005年开始到现在的日期，而我的这个CSV文件中的却不是这样子，所以要更改一下
    # return date(2005, 1, 1), date.today() - relativedelta(days=1)
    # 我要获得所有加载的CSV文件的时间
    dt_start_list = []
    dt_end_list = []
    # 用迭代的方式取得
    for key, value in kdata:
        dt_start_list.append(value.index.date[0])
        dt_end_list.append(value.index.date[-1])
        pass
    dt_start_list.sort()
    dt_end_list.sort()
    return dt_start_list[0], dt_end_list[-1]

if __name__ == "__main__":
    # 测试这个文件的
    from datetime import date
    dt1 = date(1994, 9, 13)
    d0 = get_bar("同花顺.AGUSDO", dt1, "1d")
    print(d0)
    dt2 = date(1995, 2, 22)
    d1 = history_bars("同花顺.AGUSDO", "1d", "Close", dt2)
    print(d1)
