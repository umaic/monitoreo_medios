import { Component, OnInit } from '@angular/core';

import { Site } from './site';
import { News } from './news';
import { SiteService } from './site.service';
import { NewsService } from './news.service';
import { Auth }        from './auth.service';

@Component({
  moduleId: module.id,
  selector: 'my-dashboard',
  templateUrl: 'dashboard.html',
  providers: [SiteService,NewsService]
})

export class DashboardComponent implements OnInit {
  sites: Site[];
  news: News[];
  spider:string = '';
  date:string = '2016-9-15';
  //@Input() date = 0;

  constructor(
    private siteService: SiteService,
    private newsService: NewsService,
    private auth: Auth
  ) { }

  getSites(): void {
    this.siteService.getSites().then(sites => this.sites = sites);
  }

  ngOnInit(): void {
    this.getSites();
  }

  onSiteChange(spider): void {
    this.spider = spider;
  }

  getNews(): void {
    if (this.spider != '')
    {
        this.newsService.getNews(this.spider, this.date).then(news => {
            this.news = news;
            //$('#news_table').DataTable();
            });
    }
  }
}
