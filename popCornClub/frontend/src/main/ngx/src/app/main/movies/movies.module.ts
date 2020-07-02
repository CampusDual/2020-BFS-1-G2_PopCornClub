import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MoviesRoutingModule } from './movies-routing.module';
import { MoviesViewComponent } from './movies-view/movies-view.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { RelatedMoviesComponent } from './movies-view/related-movies/related-movies.component';

@NgModule({
  imports: [
    CommonModule,
    MoviesRoutingModule,
    OntimizeWebModule
  ],
  declarations: [MoviesViewComponent, RelatedMoviesComponent]
})
export class MoviesModule { }
