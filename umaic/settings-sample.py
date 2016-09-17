# Scrapy settings for umaic project
#
# For simplicity, this file contains only the most important settings by
# default. All the other settings are documented here:
#
#     http://doc.scrapy.org/topics/settings.html
#
BOT_NAME = 'umaic'
LOG_LEVEL="INFO"
SPIDER_MODULES = ['umaic.spiders']
NEWSPIDER_MODULES = 'umaic.spiders'
USER_AGENT = '%s' % (BOT_NAME)
DB_NAME = ''
DB_USER = ''
DB_PASSWD = ''

ITEM_PIPELINES = {
        'umaic.pipelines.DuplicatesPipeline' : 100,
        'umaic.pipelines.FilterWordsPipeline' : 200,
        'umaic.pipelines.MySQLStorePipeline' : 300
        }
