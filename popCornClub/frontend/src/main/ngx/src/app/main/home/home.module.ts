import { FooterHomeComponent } from './footer-home/footer-home.component';
import { NgModule } from '@angular/core';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { SharedModule } from '../../shared/shared.module';
import { HomeRoutingModule } from './home-routing.module';
import { NewMoviesListComponent } from './new-movies-list/new-movies-list.component';
import { HomeComponent } from './home.component';


@NgModule({
  imports: [
    SharedModule,
    OntimizeWebModule,
    HomeRoutingModule
  ],
  declarations: [
    HomeComponent,
    NewMoviesListComponent,
    FooterHomeComponent
  ]
})
export class HomeModule { }
