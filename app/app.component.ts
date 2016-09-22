import { Component, OnInit } from '@angular/core';

import { Site } from './site';
import { SiteService } from './site.service';


@Component({
  moduleId: module.id,
  selector: 'my-app',
  templateUrl: 'site-select.html',
  providers: [SiteService]
})

export class AppComponent implements OnInit {
  sites: Site[];
  selectedSite: Site;
  constructor(private siteService: SiteService) { }
  getSites(): void {
    this.siteService.getSites().then(sites => this.sites = sites);
  }
  ngOnInit(): void {
    this.getSites();
  }
  onChange(site: Site): void {
    this.selectedSite = site;
    console.log(this.selectedSite);
  }
}
