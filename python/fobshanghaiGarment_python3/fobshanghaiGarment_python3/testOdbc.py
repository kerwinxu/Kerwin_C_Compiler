#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Last Change:  2017-03-12 22:36:17
# Author:  kerwin.cn@gmail.com
# Created Time:2015-10-23 18:12:14
# Last modified: 2015-10-25 16:05:08
# File Name: testOdbc.py

# 这个是测试能否访问access的

import pyodbc
import sys
import io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer,encoding='utf8') #改变标准输出的默认编码
# reload(sys)
# sys.setdefaultencoding("utf-8")
import logging
logging.basicConfig(level=logging.DEBUG,
                format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                datefmt='%a, %d %b %Y %H:%M:%S',
                filename='error.log',
                filemode='w')

try:
    DbFile = r'E:\Program\python\fobshanghaiGarment_python3\fobshanghaiGarment_python3\garment.accdb'
    conn = pyodbc.connect('Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq='+DbFile+';Uid=;Pwd=;')
    cursor = conn.cursor()
    strsql2 = u"为你点赞，做到了举一反三，而且一开始思路很清晰，有条理。  新人缺这个，点了懒人 几下就没方向感了。建议新人仔细看看楼主的思路谢谢VIP鼓励，感谢提供这么实用的工具 在你修改的linkedin搜索语法里， ~是近义词的意思，~purchasing 表示和purchasing近义词的都会被google搜索到，理解这个对你下次修改会更有帮助我怎么还是有点模糊呢，为啥要把那些关键的东西遮住？明白了，谢谢VIP！遮住的不是关键，只是我客户公司名的一部 分，并不影响操作确实很好，推荐啊。确实不错，学习了。。。。。。。。。。。。。。顶起。。。。。。。。。。。。。牛 这样才是开发客户的人===================================== Step 1：搜索并分析客户 这一步我通常是官网结合海关数据，当官网数据不全的时候，好好利用海关数据分析客户。  首先在搜索框输入客户名称“Wilson XXX INC”，搜索北美海关数据——选择“按买家查”。    在得到的结果中，会有很多条海关数据，标题命名规则是“出口商公司名——进口商公司名（也就是你刚刚搜索的客户名称）”，点入几条海关数据，在这一步，我了解到客户进口的产品确实和我的产品相关，可以进行下一步动作了。  Hi，这一步能告诉一下是在哪个搜索框输入，是google 还是 懒人工具那个？懒人工具是不是改版了？打开没有像你说的那样的。可以提供一下懒人工具链接吗？谢谢到这里 。输入关键词或者公司名即可。进入后第一行和第二行就是海关数据。 懒人工具一直在维护，加入新的东西等等，但是版式是没有变化的。修改前： wlison xxx site:linkedin.com (inurl:/pub/ | inurl:/in/) -intitle:Top (~purchasing | ~ceo | ~sourcing | ~owner)  修改后： wlison xxx site:linkedin.com (inurl:/pub/ | inurl:/in/) -intitle:Top (~purchasing | ~purchase | ~buyer | ~procurement)  我想知道这个语法是怎么想出来的，能把所有GOOGLE语法列出来让我们学习一下google语法来看"
    strsql1 = 'SELECT * FROM garment WHERE [garment.body]=?;'
    print(strsql1)
    for row in cursor.execute(strsql1, [strsql2]):
        print(row)
    conn.close()
    print('finish')
except Exception as err:
    # logging.error(str(err).encode('gbk'))
    err_message = str(err)
    print(err)

