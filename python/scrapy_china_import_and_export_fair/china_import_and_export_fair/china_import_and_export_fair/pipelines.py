# -*- coding: utf-8 -*-

# Last Change:  2016-11-03 15:51:43
# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html


class ChinaImportAndExportFairPipeline(object):
    def process_item(self, item, spider):
        # 我这里是把这个保存到CSV文件中
        pass
        return item
