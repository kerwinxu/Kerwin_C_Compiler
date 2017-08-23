# -*- coding: utf-8 -*-

# Last Change:  2017-03-12 18:30:00
# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import pyodbc
from fobshanghaiGarment_python3 import *
import logging
import os


class FobshanghaigarmentPython3Pipeline(object):
    def __init__(self):
        self.DbFile = os.path.split(os.path.realpath(__file__))[0]  +  r'\garment.accdb'
        self.conn = pyodbc.connect(r'Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq='+self.DbFile+';')

    def process_item(self, item, spider):
         # 每个item pipeline组件都需要调用该方法，这个方法必须返回一个 Item (或任何继承类)对象，0
        # 或是抛出 DropItem 异常，被丢弃的item将不会被之后的pipeline组件所处理。
        # 我想用这个来实现一个功能，就是保存数据到access中
        # 首先检查是否有这个数据，如果没有就新建
        # 如果有就抛出异常
        # 这个首先判断，是否有重复的，判断依据是：只要主体是一样的，就算重复。
        # SELECT * FROM garment WHERE (((garment.body)="我是徐恒晓"));
        # 我需要注意的是，这个body中，不能有双引号。
        # 插入的sql
        # insert into garment([dateTime] ,[publisher],[body]) values("2015-10-24 12:10","haha","ceshi")
        try:
            sqlIfExit = u'SELECT * FROM garment WHERE (((garment.body)=?));'
            sqlInsert = u'insert into garment([dateTime],[publisher],[body]) values(?, ?, ?)'
            if not self.conn:
                self.conn = pyodbc.connect(r'Driver={Microsoft Access Driver (*.mdb, *.accdb)};Dbq='+self.DbFile+';')
            cursor = self.conn.cursor()
            print(sqlIfExit)
            cursor.execute(sqlIfExit, [item['body']])
            row = cursor.fetchone()
            if not row:
                # 这里就表示要插入啦
                print(sqlInsert)
                cursor.execute(sqlInsert, [item['date'], item['publisher'], item['body']])
                self.conn.commit()
        except Exception as e:
            logger.error(e)
        return item
