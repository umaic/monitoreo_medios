import { ModuleWithProviders }         from '@angular/core';
import { Routes, RouterModule }        from '@angular/router';

import { DashboardComponent }          from './dashboard.component';
import { DiccionarioComponent }          from './diccionario.component';


const appRoutes: Routes = [
  { path: '', component: DashboardComponent },
  { path: 'diccionario', component: DiccionarioComponent },
  { path: '**', redirectTo: '' }
];

export const appRoutingProviders: any[] = [

];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);
