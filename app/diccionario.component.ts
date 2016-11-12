import { Component, OnInit } from '@angular/core';

import { DiccionarioService } from './diccionario.service';
import { NewsService } from './news.service';
import { Auth }        from './auth.service';

import { Diccionario } from './diccionario';

@Component({
  moduleId: module.id,
  selector: 'my-diccionario',
  templateUrl: 'diccionario.html',
  providers: [DiccionarioService]
})

export class DiccionarioComponent implements OnInit {

    diccionario: Diccionario;

  constructor(
    private diccionarioService: DiccionarioService,
    private auth: Auth
  ) { }

  ngOnInit(): void {
    this.getDiccionario();
  }

  getDiccionario(): void {
    this.diccionarioService.getDiccionario().then(diccionario => this.diccionario = diccionario);
  }

  saveDiccionario(): void {
    //this.diccionarioService.saveDiccionario(this.diccionario).then((response) => { alert('guardado')});
    this.diccionarioService.saveDiccionario(this.diccionario);
  }
}
