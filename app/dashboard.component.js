"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require('@angular/core');
var site_service_1 = require('./site.service');
var news_service_1 = require('./news.service');
var auth_service_1 = require('./auth.service');
var DashboardComponent = (function () {
    //@Input() date = 0;
    function DashboardComponent(siteService, newsService, auth) {
        this.siteService = siteService;
        this.newsService = newsService;
        this.auth = auth;
        this.spider = '';
        this.date = '2016-9-15';
    }
    DashboardComponent.prototype.getSites = function () {
        var _this = this;
        this.siteService.getSites().then(function (sites) { return _this.sites = sites; });
    };
    DashboardComponent.prototype.ngOnInit = function () {
        this.getSites();
    };
    DashboardComponent.prototype.onSiteChange = function (spider) {
        this.spider = spider;
    };
    DashboardComponent.prototype.getNews = function () {
        var _this = this;
        if (this.spider != '') {
            this.newsService.getNews(this.spider, this.date).then(function (news) {
                _this.news = news;
                //$('#news_table').DataTable();
            });
        }
    };
    DashboardComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-dashboard',
            templateUrl: 'dashboard.html',
            providers: [site_service_1.SiteService, news_service_1.NewsService]
        }), 
        __metadata('design:paramtypes', [site_service_1.SiteService, news_service_1.NewsService, auth_service_1.Auth])
    ], DashboardComponent);
    return DashboardComponent;
}());
exports.DashboardComponent = DashboardComponent;
//# sourceMappingURL=dashboard.component.js.map