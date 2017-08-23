# -*- coding: utf-8 -*-

# Last Change:  2016-11-03 15:49:33
# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class ChinaImportAndExportFairItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    company_name = scrapy.Field()
    company_web_side = scrapy.Field()
    company_address = scrapy.Field()
    company_profile = scrapy.Field()
    pass
