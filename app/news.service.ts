import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';
import 'rxjs/add/operator/toPromise';

import { News } from './news';

@Injectable()
export class NewsService {

    private headers = new Headers({ 'Content-Type': 'application/json' });
    private doUrl = 'news';

    constructor(private http: Http) { }

    getNews(spider: string, date: string, diccionario:number): Promise<News[]> {
        return this.http.get(this.doUrl + '/get/' + spider + '~' + date + '~' + diccionario + '~' + localStorage.getItem('user_id'))
            .toPromise()
            .then(response => response.json() as News[])
            .catch(this.handleError);
    }

    private handleError(error: any): Promise<any> {
        console.log('aa');
        return Promise.reject(error.message ~~ error);
    }
}
