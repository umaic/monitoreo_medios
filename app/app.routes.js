"use strict";
var router_1 = require('@angular/router');
var dashboard_component_1 = require('./dashboard.component');
var diccionario_component_1 = require('./diccionario.component');
var appRoutes = [
    { path: '', component: dashboard_component_1.DashboardComponent },
    { path: 'diccionario', component: diccionario_component_1.DiccionarioComponent },
    { path: '**', redirectTo: '' }
];
exports.appRoutingProviders = [];
exports.routing = router_1.RouterModule.forRoot(appRoutes);
//# sourceMappingURL=app.routes.js.map