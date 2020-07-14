import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MoviesRoutingModule } from './movies-routing.module';
import { MoviesViewComponent } from './movies-view/movies-view.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { RelatedMoviesComponent } from './movies-view/related-movies/related-movies.component';
import { MovieListComponent } from './movie-list/movie-list.component';
import { RankmoviesComponent } from './rankmovies/rankmovies.component';


@NgModule({
  imports: [
    CommonModule,
    MoviesRoutingModule,
    OntimizeWebModule
  ],
  declarations: [MoviesViewComponent, MovieListComponent, RelatedMoviesComponent, RankmoviesComponent]
})
export class MoviesModule { }
