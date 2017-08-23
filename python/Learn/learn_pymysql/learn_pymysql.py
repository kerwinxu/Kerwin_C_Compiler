#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2017-03-16 19:39:53
# Last Change:  2017-07-02 14:50:08
# File Name: learn_pymysql.py

import pymysql

conn = pymysql.connect(host='127.0.0.1', port=3306, user='business', passwd='nicaibudaola111', db='business_one', charset='utf8', cursorclass=pymysql.cursors.DictCursor)

# 创建游标
cursor = conn.cursor()

# 执行SQL，并返回收影响行数
effect_row = cursor.execute("select * from china_import_and_export_fair_120;")

# 获取剩余结果的第一行数据
# row_1 = cursor.fetchone()
# print (row_1)
result = cursor.fetchall()
for row in result:
    print(row)
    print("*************************************")

# 执行SQL，并返回受影响行数
#effect_row = cursor.execute("update tb7 set pass = '123' where nid = %s", (11,))

# 执行SQL，并返回受影响行数,执行多次
#effect_row = cursor.executemany("insert into tb7(user,pass,licnese)values(%s,%s,%s)", [("u1","u1pass","11111"),("u2","u2pass","22222")])


# 提交，不然无法保存新建或者修改的数据
conn.commit()

# 关闭游标
cursor.close()
# 关闭连接
conn.close()
