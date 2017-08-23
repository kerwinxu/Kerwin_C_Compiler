# -*- coding: utf-8 -*-
import scrapy
# Last Change:  2017-03-13 00:05:51
from scrapy.spider import BaseSpider
from scrapy.utils.response import get_base_url
from scrapy.utils.url import urljoin_rfc
import re
from fobshanghaiGarment_python3.items import FobshanghaigarmentPython3Item
import logging
from datetime import datetime


class FobshanghaigarmentSpider(BaseSpider):
    name = "FobShanghaiGarment"
    allowed_domains = ["fobshanghai.com"]
    start_urls = (
        'http://bbs.fobshanghai.com/catdisplay.php?fid=24&filter=type&typeid=36&page=1',
    )
    logger = logging.getLogger('log1')

    # 我这里假设第一层页面为这个论坛的总页面，
    # 第二层为各个论坛的分页面
    # 第三层为各个主题的分页面
    def isTop2Page(self, response):

        # 判断依据是根据网址判断的
        # 这里有个例外是第一页
        base_url = get_base_url(response)
        return self.isTop2Page2(self, base_url)

    def isTop2Page2(self, url):
        pattern = re.compile(r".*typeid=\d+&page=\d+")
        match = pattern.match(url)
        if(match):
            return True
        else:
            return False

    def isNow(self, str):
        # 我这里就要设置只搜索最后几天的, 这是只设置3天
        minday = 3
        d1 = datetime.strptime(str, '%Y-%m-%d %H:%M')
        d2 = datetime.now()
        return (d2 - d1).days < minday
        return str.startswith('2016')

    def parse(self, response):
        pass
        # 这个文件主要做解析操作。
        # 分几个层次
        # http://bbs.fobshanghai.com/catdisplay.php?fid=24 这个是首页，从这里边提取2个东西
        #   http://bbs.fobshanghai.com/catdisplay.php?fid=24&filter=type&typeid=36&page=1   我将首页更改成和主题页面一样的格式，以方便编程。
        #   http://bbs.fobshanghai.com/catdisplay.php?fid=24&filter=type&typeid=36&page=2   这个是有很多主题的页面
        #       得判断这个页面的时间。根据的是最新发表的那个时间。
        #   http://bbs.fobshanghai.com/redirect.php?tid=4774726&goto=lastpost#lastpost      这个是最新发表的
        #       http://bbs.fobshanghai.com/viewthread.php?tid=6265456&extra=&page=5         这个是从最新发表的页面中取得的上一页。
        #           得判断这个页面的时间，根据的是页面最初发布者发布的时间。
        # 这样，我其实只需要判断2个就可以了，一堆主题的页面，主题下的页面。
        # 大概流程如下：
        # 判断是否是一堆主题的页面，用isTop2page函数来判断
        #   设置一个逻辑变量，用来判断是否要解析下一页Top2page主题页面
        #   解析最新发表的信息，主要是取得他们的URL、时间
        #   判断最新发布的时间中，有没有时间比我需要的时间还早，如果有，就设置不用解析下一个主题页面了
        #       如果没有，就解析下一个Top2page页面
        # 这个就是在各个主题的分页面了，不管是不是最新的，这个要做的如下
        #   设置一个逻辑变量，用来判断用不用向前追溯各个主题的页面。
        #   解析各个Item，时间等。
        #       根据时间判断，如果有早于需要的时间，就不用追溯了。
        base_url = get_base_url(response)
        isNextTop2page = False
        isNextTop3page = False
        if(self.isTop2Page2(base_url)):
            # 下边就是去找最新的发布了
            for sel in response.xpath('//td[@class="f_last"]/span[@class="smalltxt"]/a'):
                timeNew = sel.xpath('text()')[0].extract()
                link = sel.xpath('@href')[0].extract()
                if(self.isNow(timeNew)):
                    url_2 = urljoin_rfc(base_url, link)
                    isNextTop2page = True
                    logging.info("读取到下一页：" + str(url_2))
                    yield scrapy.Request(str(url_2), callback=self.parse)
        else:
            for sel in response.xpath('//table[@class="t_row"]'):
                item = FobshanghaigarmentPython3Item()
                item['publisher'] = sel.xpath('tr/td[@class="t_user"]/a[@class="bold"]/text()')[0].extract()
                item['date'] = sel.re(r'\s+(\d{4}-\d{1,2}-\d{1,2}\s+\d{1,2}\:\d{1,2})')[0]
                item['body'] = sel.xpath(r'//div[@class="t_msgfont"]//text()').extract()
                # if(type(item['body']) == type([])):
                if isinstance(item['body'], []):
                    # item['body'] = "".join(item['body']).replace('\r\n', ' ')
                    # 取消这个，会看起来好看些。
                    item['body'] = "\t".join(item['body'])
                if(self.isNow(item['date'])):
                    isNextTop3page = True
                    print(item)
                    yield item
        # 判断是否要继续下一页
        if(isNextTop2page or isNextTop3page):
            for sel in response.xpath('//div[@class="maintable"]/table/tr/td/div/a[@class="p_num"]'):
                link = sel.xpath('@href')[0].extract()
                url_2 = urljoin_rfc(base_url, link)
                logging.info("读取到下一页：" + str(url_2))
                yield scrapy.Request(str(url_2), callback=self.parse)
