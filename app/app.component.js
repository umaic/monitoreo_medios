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
var AppComponent = (function () {
    function AppComponent(siteService) {
        this.siteService = siteService;
    }
    AppComponent.prototype.getSites = function () {
        var _this = this;
        this.siteService.getSites().then(function (sites) { return _this.sites = sites; });
    };
    AppComponent.prototype.ngOnInit = function () {
        this.getSites();
    };
    AppComponent.prototype.onChange = function (site) {
        this.selectedSite = site;
        console.log(this.selectedSite);
    };
    AppComponent = __decorate([
        core_1.Component({
            moduleId: module.id,
            selector: 'my-app',
            templateUrl: 'site-select.html',
            providers: [site_service_1.SiteService]
        }), 
        __metadata('design:paramtypes', [site_service_1.SiteService])
    ], AppComponent);
    return AppComponent;
}());
exports.AppComponent = AppComponent;
//# sourceMappingURL=app.component.js.map