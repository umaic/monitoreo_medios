from scrapy.selector import Selector
from umaic.items import UmaicItem
from urlparse import urljoin
import os
import datetime
import scrapy

class CronicaDelQuindioSpider(scrapy.Spider):

    global base

    name = "cronica_del_quindio"

    base = 'http://www.cronicadelquindio.com'

    url = base + '/%s'

    allowed_domains = ['www.cronicadelquindio.com',]

    start_urls = [
        url % 'noticia-secciones-seccion-la_judicial-sec-3',
        url % 'noticia-secciones-seccion-la_regin-sec-4',
        url % 'noticia-secciones-seccion-la_economa-sec-2',
        url % 'noticia-secciones-seccion-la_ciudad-sec-8',
        url % 'noticia-secciones-seccion-la_poltica-sec-38',
        url % 'noticia-secciones-seccion-la_nacin-sec-20',
    ]

    def parse(self, response):
        hxs = Selector(response)
        sites = hxs.xpath('//div[@class="item item_Noticia "]')
        items = []

        for site in sites:
            try:
                item = UmaicItem()
                item['title'] = site.xpath('./a/h2/text()').extract()[0]
                try:
                    item['link'] = urljoin(base, site.xpath('./a/@href').extract()[0])
                except IndexError:
                    item['link'] = 'No tiene url'

                item['description'] = site.xpath('./a/p/text()').extract()[0]
                item['labels'] = ''
                item['source'] = 'Cronica del Quindio'
                item['cdate'] = str(datetime.datetime.now())
                #item['pdate'] = ''

                items.append(item)
            except:
                pass

        return items
