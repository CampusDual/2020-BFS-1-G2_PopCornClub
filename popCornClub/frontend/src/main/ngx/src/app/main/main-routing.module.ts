import { GenresModule } from './genres/genres.module';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuardService } from 'ontimize-web-ngx';
import { MoviesViewComponent } from "./movies/movies-view/movies-view.component";
import { MainComponent } from './main.component';
import { HomeModule } from './home/home.module';
import { MoviesModule } from './movies/movies.module';


export function loadHomeModule() {
  return HomeModule;
}


export function loadMoviesModule() {
  return MoviesModule;
}

export function loadGenresModule() {
  return GenresModule;
}

export const routes: Routes = [
  {
    path: '',
    component: MainComponent,
    // canActivate: [AuthGuardService], NOTA: Añadir esta clave a la definición de un path para evitar que se pueda navegar
    //                                        a el sin estar autenticado. En este caso queremos que un usuario pueda acceder
    //                                        a /main sin estar autenticado, por eso está deshabilitado en esta ocasión.
    children: [
      { path: '', redirectTo: 'home', pathMatch: 'full' },
      {
        path: 'home',
        loadChildren: loadHomeModule
      },
      {
        path: 'movies',
        loadChildren: loadMoviesModule
      },
      {
        path: 'genres',
        loadChildren: loadGenresModule
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class MainRoutingModule { }
