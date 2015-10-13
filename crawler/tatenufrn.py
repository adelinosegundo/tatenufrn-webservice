from HTMLParser import HTMLParser
import os

class MLStripper(HTMLParser):
    def __init__(self):
        self.reset()
        self.fed = []
    def handle_data(self, d):
        self.fed.append(d)
    def get_data(self):
        return ''.join(self.fed)

def strip_tags(html):
    s = MLStripper()
    s.feed(html)
    return s.get_data()

import scrapy
from pymongo import MongoClient

class UfrnEventsSpider(scrapy.Spider):
    name = 'UFRNEvents'
    start_urls = ['http://www.sistemas.ufrn.br/portal/PT/evento']
    # start_urls = ['http://blog.scrapinghub.com']
    if os.environ.get('MONGOLAB_URI'):
        client = MongoClient(os.environ.get('MONGOLAB_URI'))
        db.get_default_database()
    else:
        client = MongoClient('mongodb://localhost:27017/')
        db = client.tatenufrn
    
    # db.events.remove()
    def parse(self, response):
        for link in response.css('ul.listagem_noticia li a::attr("href")').extract():
            yield scrapy.Request(response.urljoin(link), self.parse_titles)

    def parse_titles(self, response):
        index = 0
        for content in response.css('div.altura_minima > p.tamanho_fonte').extract():
            uid  = response.css('div#area_interna > div#navegacao > span.caminho > label').extract()[0]
            uid = ' '.join(uid.split())
            uid = strip_tags(uid)
            title = response.css('div.altura_minima > h2').extract()[index]
            title = ' '.join(title.split())
            title = strip_tags(title)
            image  = response.css('span.imagem_noticia > a > img').xpath('@src').extract()[0]
            html_info = ' '.join(content.split())
            html_info = strip_tags(html_info)
            event = self.db.events.find_one({"uid":uid})
            if not event:
                event = { "uid": uid, "title":title, "image":image, "html_info":html_info, "accepted": False }
                self.db.events.insert(event)
                print "Inserted event: " + uid
            index+=1