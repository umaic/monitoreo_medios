import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';

import 'rxjs/add/operator/toPromise';

import { News } from './news';

@Injectable()
export class NewsService {

    private headers = new Headers({ 'Content-Type': 'application/json' });
    private doUrl = 'news';

    constructor(private http: Http) { }

    getNews(spider: string, date: string): Promise<News[]> {
        this.http.get(this.doUrl + '/get/' + spider + '/' + date)
            .toPromise()
            .then(response => response.json().data as News[])
            .catch(this.handleError);

        //return Promise.resolve(SITES);
    }
}
