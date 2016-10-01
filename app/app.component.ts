import { Component, OnInit } from '@angular/core';

import { Site } from './site';
import { SiteService } from './site.service';
import { NewsService } from './news.service';

@Component({
  moduleId: module.id,
  selector: 'my-app',
  templateUrl: 'site-select.html',
  providers: [SiteService,NewsService]
})

export class AppComponent implements OnInit {
  sites: Site[];
  spider:string = '';
  date:string = '2016-9-15';
  //@Input() date = 0;

  constructor(
    private siteService: SiteService,
    private newsService: NewsService) { }

  getSites(): void {
    this.siteService.getSites().then(sites => this.sites = sites);
  }

  ngOnInit(): void {
    this.getSites();
  }

  onSiteChange(spider): void {
    this.spider = spider;
  }

  onDoClick(): void {
    if (this.spider != '')
    {
        this.newsService.getNews(this.spider, this.date);
    }
  }
}
