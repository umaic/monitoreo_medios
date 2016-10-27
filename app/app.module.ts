import { NgModule }         from '@angular/core';
import { BrowserModule }    from '@angular/platform-browser';
import { FormsModule }      from '@angular/forms';
import { HttpModule }       from '@angular/http';
import { AUTH_PROVIDERS }   from 'angular2-jwt';
import { AppComponent }     from './app.component';
import { DashboardComponent }     from './dashboard.component';
import { NewsService }      from './news.service';

import { routing,
         appRoutingProviders } from './app.routes';

@NgModule({
    imports: [
        BrowserModule,
        FormsModule,
        HttpModule,
        routing
    ],
    declarations: [AppComponent, DashboardComponent],
    bootstrap: [AppComponent],
    providers: [
        AUTH_PROVIDERS
    ]
})

export class AppModule { }
