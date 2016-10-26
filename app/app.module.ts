import { NgModule }         from '@angular/core';
import { BrowserModule }    from '@angular/platform-browser';
import { FormsModule }      from '@angular/forms';
import { HttpModule }       from '@angular/http';
import { AUTH_PROVIDERS }   from 'angular2-jwt';
import { AppComponent }     from './app.component';
import { NewsService }      from './news.service';

@NgModule({
    imports: [
        BrowserModule,
        FormsModule,
        HttpModule
    ],
    declarations: [AppComponent],
    bootstrap: [AppComponent],
    providers: [
        AUTH_PROVIDERS
    ]
})

export class AppModule { }
