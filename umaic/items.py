# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/topics/items.html

from scrapy.item import Item, Field

class UmaicItem(Item):
    # define the fields for your item here like:
    title = Field()
    link = Field()
    description = Field()
    labels = Field()
    source = Field()
    #pdate = Field()
    cdate = Field()
    fdate = Field()
    pass
