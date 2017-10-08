#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2015-11-03 12:03:28
# Last modified: 2015-11-03 12:49:29
# File Name: cal_money.py

# 这个是计算我的钱的
# 假设每个月赚5%，花500元。

def f_cal_money(money,income, cost , week):
    if(week==1):
        return money-cost
    else:
        return f_cal_money(money, income, cost,  week-1) * income - cost
print(u'假设本钱10000，每周收益5%，每周花销500, 5周后的收益:'+str(f_cal_money(10000, 1.05, 500, 5)))
print(u'假设本钱10000，每周收益6%，每周花销500, 5周后的收益:'+str(f_cal_money(10000, 1.06, 500, 5)))
print(u'假设本钱10000，每周收益7%，每周花销500, 5周后的收益:'+str(f_cal_money(10000, 1.07, 500, 5)))
print(u'假设本钱10000，每周收益8%，每周花销500, 5周后的收益:'+str(f_cal_money(10000, 1.08, 500, 5)))

print('')
print(u'假设本钱15000，每周收益5%，每周花销500, 5周后的收益:'+str(f_cal_money(15000, 1.05, 500, 5)))
print(u'假设本钱15000，每周收益6%，每周花销500, 5周后的收益:'+str(f_cal_money(15000, 1.06, 500, 5)))
print(u'假设本钱15000，每周收益7%，每周花销500, 5周后的收益:'+str(f_cal_money(15000, 1.07, 500, 5)))
print(u'假设本钱15000，每周收益8%，每周花销500, 5周后的收益:'+str(f_cal_money(15000, 1.08, 500, 5)))
print(u'假设本钱15000，每周收益9%，每周花销500, 5周后的收益:'+str(f_cal_money(15000, 1.09, 500, 5)))
for i in range(1, 20):
    # 我用四个月
    print(u'%d week: '%(i)+str(f_cal_money(15000, 1.07, 500,i )))
