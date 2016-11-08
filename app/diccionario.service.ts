import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';
import 'rxjs/add/operator/toPromise';
import { Diccionario } from './diccionario';


@Injectable()
export class DiccionarioService {

    private headers = new Headers({ 'Content-Type': 'application/json' });
    private doUrl = 'diccionario';

    constructor(private http: Http) { }

    getDiccionario(): Promise<Diccionario> {
        return this.http.get(this.doUrl + '/get/' + localStorage.getItem('id_token'))
            .toPromise()
            .then(response => response.json() as Diccionario)
            .catch(this.handleError);
    }

    private handleError(error: any): Promise<any> {
        console.log('aa');
        return Promise.reject(error.message || error);
    }

    saveDiccionario(diccionario: Diccionario) {

        //console.log(diccionario.text);

        return this.http.post(this.doUrl + '/save/' + localStorage.getItem('id_token') + '|' + diccionario.text + '|' + diccionario.update, this.headers)
           .toPromise()
           .then()
           .catch(this.handleError);
    }

       /*
       create(name: string): Promise<Hero> {
  return this.http
    .post(this.heroesUrl, JSON.stringify({name: name}), {headers: this.headers})
    .toPromise()
    .then(res => res.json().data)
    .catch(this.handleError);
    */
}
