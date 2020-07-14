import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { SharedModule } from '../shared/shared.module';
import { MainComponent } from './main.component';
import { MainRoutingModule } from './main-routing.module';
import { HomeComponent } from './home/home.component';
import { HomeModule } from './home/home.module';

@NgModule({
  imports: [
    SharedModule,
    OntimizeWebModule,
    MainRoutingModule,
    HomeModule
    ],
  declarations: [
    MainComponent
  ]
})
export class MainModule { }
