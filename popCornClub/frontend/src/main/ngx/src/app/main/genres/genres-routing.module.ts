import { GenreListComponent } from './genre-list/genre-list.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
 

const routes: Routes = [
  {path: 'view/:id', component: GenreListComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GenresRoutingModule { }
