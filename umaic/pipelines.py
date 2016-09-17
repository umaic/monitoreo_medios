# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/topics/item-pipeline.html
#from scrapy import log
from twisted.enterprise import adbapi
import datetime
import time
from scrapy.exceptions import DropItem
import re
import datetime
import libxml2

now = datetime.datetime.now()

class DuplicatesPipeline(object):

    def __init__(self):
        self.titles_seen = set()

    def process_item(self, item, spider):
        if item['title'] in self.titles_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.titles_seen.add(item['title'])
            return item

class FilterWordsPipeline(object):

    f = open('keywords_conflicto.csv', 'r')
    kc = f.read()
    f = open('keywords_conflicto.csv', 'r')
    kd = f.read()

    ksd = kc + kd

    keywords = ksd.split(',')

    def process_item(self, item, spider):
        meses = ['', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
            'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']
        meses_d1 = {'enero':1,'febrero':2,'marzo':3,'abril':4,'mayo':5,'junio':6,'julio':7,'agosto':8,
                'septiembre':9,'octubre':10,'noviembre':11,'diciembre':12}
        meses_d2 = {'jan':1,'feb':2,'mar':3,'apr':4,'may':5,'jun':6,'jul':7,'aug':8,
                'sep':9,'oct':10,'nov':11,'dec':12}
        hoy = datetime.datetime.today()
        r = False
        labels = ''

        #print '**** %s % s %s +++++'% (len(item['date']), item['date'], len('aaa'))

        if not item['description']:
            raise DropItem('Sin descripcion')
        else:

            i = 0
            for word in self.keywords:
                regex = re.compile(word, re.IGNORECASE)
                if regex.search(unicode(item['description']).lower()) or regex.search(unicode(item['title']).lower()):
                    r = True
                    if len(labels) == 0:
                        labels = word
                    else:
                        if not word in labels:
                            labels = labels + ', ' + word

                i = i + 1
            if r:
                item['labels'] = labels
                return item
            else:
                item['labels'] = 'No clasificado'
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
        query.addErrback(self.handle_error)
        return item

    def _conditional_insert(self, tx, item):
        # create record if doesn't exist.
        # all this block run on it's own thread
        tx.execute("SELECT * FROM record WHERE title = %s", (item['title'], ))
        result = tx.fetchone()
        if not result:
            tx.execute(\
                "INSERT INTO record (title, link, description, labels, source, cdate) "
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
