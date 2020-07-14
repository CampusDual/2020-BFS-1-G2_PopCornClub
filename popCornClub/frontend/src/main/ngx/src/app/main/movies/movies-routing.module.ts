import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MoviesViewComponent } from './movies-view/movies-view.component';
import { MovieListComponent } from './movie-list/movie-list.component';
import { RankmoviesComponent } from "./rankmovies/rankmovies.component";

const routes: Routes = [
  { path: 'view/:id', component: MoviesViewComponent },
  { path: 'list', component: MovieListComponent },
  { path: 'rank', component: RankmoviesComponent },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MoviesRoutingModule { }
