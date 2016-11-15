# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/topics/item-pipeline.html
#from scrapy import log
from twisted.enterprise import adbapi
import datetime
import time
from scrapy.exceptions import DropItem

class DuplicatesPipeline(object):

    def __init__(self):
        self.titles_seen = set()

    def process_item(self, item, spider):
        if item['title'] in self.titles_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.titles_seen.add(item['title'])
            return item

class MySQLStorePipeline(object):

    def __init__(self, db, user, passwd):
        self.db = db
        self.user = user
        self.passwd = passwd

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            db = crawler.settings.get('DB_NAME'),
            user = crawler.settings.get('DB_USER'),
            passwd = crawler.settings.get('DB_PASSWD')
        )

    def open_spider(self, spider):
        self.dbpool = adbapi.ConnectionPool('MySQLdb',
                db=self.db,
                user=self.user,
                passwd=self.passwd
            )

    def close_spider(self, spider):
        self.dbpool.close()

    def process_item(self, item, spider):
        # run db query in thread pool
        query = self.dbpool.runInteraction(self._conditional_insert, item)
        return item

    def _conditional_insert(self, tx, item):

        tx.execute("SELECT * FROM news WHERE title = %s", (item['title'], ))
        result = tx.fetchone()
        if not result:
            tx.execute(\
                "INSERT INTO news (title, link, description, labels, source, cdate) "
                "VALUES (%s, %s, %s, %s, %s, %s)",
                 (item['title'],
                 item['link'],
                 item['description'],
                 item['labels'],
                 item['source'],
                 #item['pdate'],
                 item['cdate'])
            )

            #log.msg("Item stored in db: %s" % item, level=log.DEBUG)

    #def handle_error(self, e):
        #log.err(e)
