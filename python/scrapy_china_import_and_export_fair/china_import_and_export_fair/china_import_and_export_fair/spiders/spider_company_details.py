#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Author:  kerwin.cn@gmail.com
# Created Time:2016-11-03 15:54:13
# Last Change:  2016-11-04 10:52:21
# File Name: spider_company_details.py

import scrapy
from scrapy.spider import BaseSpider
from scrapy.utils.response import get_base_url
from scrapy.utils.url import urljoin_rfc
from china_import_and_export_fair.item import ChinaImportAndExportFairItem


class spider_company_details(BaseSpider):
    name = "spider_company_details"
    start_urls = ["http://i.cantonfair.org.cn/cn/SearchResult/Index?QueryType=2&KeyWord=&CategoryNo=417&StageOne=0&StageTwo=0&StageThree=0&Export=0&Import=0&Provinces=&Countries=&ShowMode=1&NewProduct=0&CF=0&OwnProduct=0&PayMode=&NewCompany=0&BrandCompany=0&ForeignTradeCompany=0&ManufacturCompany=0&CFCompany=0&OtherCompany=0&OEM=0&ODM=0&OBM=0&OrderBy=1&producttab=1"]

    def parse(self, response):
        base_url = get_base_url(response)
        # 这个抓取是分2层的，第一层是公司列表，第二层是每家公司的页面
        # 首先判断是哪层次的
        # 公司页面的url是 http://i.cantonfair.org.cn/cn/Company/Index?corpid=1215097655&corptype=1&ad=
        if True:
            # 公司页面
            for sel in response.xpath(''):
                item = ChinaImportAndExportFairItem()
                item['company_name'] = sel.xpath('').extract()
                item['company_web_side'] = sel.xpath('').extract()
                item['company_address'] = sel.xpath('').extract()
                item['company_profile'] = sel.xpath('').extract()
                yield item
        else:
            # 这里就是目录啦
            # //*[@id="gjh_pro_result"]/ul/li[1]/dl/dt/a
            for link in response.xpath('//*[@id="gjh_pro_result"]/ul/li[1]/dl/dt/a/@href'):
                url_2 = urljoin_rfc(base_url, link)
                yield scrapy.Request(url_2, callback=self.parse)



        pass
