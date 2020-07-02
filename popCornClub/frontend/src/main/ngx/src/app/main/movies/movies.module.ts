import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MoviesRoutingModule } from './movies-routing.module';
import { MoviesViewComponent } from './movies-view/movies-view.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';

@NgModule({
  imports: [
    CommonModule,
    MoviesRoutingModule,
    OntimizeWebModule
  ],
  declarations: [MoviesViewComponent]
})
export class MoviesModule { }
