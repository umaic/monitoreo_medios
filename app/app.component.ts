import { Component } from '@angular/core';
import { Auth }        from './auth.service';

@Component({
  selector: 'my-app',
  templateUrl: 'app/login.html',
  providers: [Auth]
})

export class AppComponent  {
  constructor(
    private auth: Auth
  ) { }
}
