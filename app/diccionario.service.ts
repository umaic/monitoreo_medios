import { Injectable } from '@angular/core';
import { Headers, Http, RequestOptions } from '@angular/http';
import 'rxjs/add/operator/toPromise';
import { Diccionario } from './diccionario';

@Injectable()
export class DiccionarioService {

    private doUrl = 'diccionario';

    constructor(private http: Http) {
    }

    getDiccionario(): Promise<Diccionario> {
        return this.http.get(this.doUrl + '/get/' + localStorage.getItem('user_id'))
            .toPromise()
            .then(response => response.json() as Diccionario)
            .catch(this.handleError);
    }

    private handleError(error: any): Promise<any> {
        console.log('handleError function');
        return Promise.reject(error.message || error);
    }

    saveDiccionario(diccionario: Diccionario) {

        let headers = new Headers({ 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' });
        let options = new RequestOptions({ headers: headers });

        let data='text=' + diccionario.text + '&update=' + diccionario.update;

        // post devuelve un observable, es necesario suscribirse para ejecutar
        // la inicialización
        return this.http.post(this.doUrl + '/save/' + localStorage.getItem('user_id'), data , options)
              .subscribe(r=>{});
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
