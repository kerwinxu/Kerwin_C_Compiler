# -*- coding: utf-8 -*-

# Last Change:  2017-03-12 18:27:42
# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class FobshanghaigarmentPython3Item(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    # 发布者
    publisher = scrapy.Field()
    # date
    date = scrapy.Field()
    # 内容
    body = scrapy.Field()
    # qq
    qqNum = scrapy.Field()
    # email
    email = scrapy.Field()
    pass
