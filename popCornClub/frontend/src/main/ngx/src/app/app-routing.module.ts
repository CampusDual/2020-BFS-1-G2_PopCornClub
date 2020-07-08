import { NgModule, NgModuleFactory } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginModule } from './login/login.module';
import { MainModule } from './main/main.module';
import { MoviesViewComponent } from "./main/movies/movies-view/movies-view.component";
import { MoviesModule } from './main/movies/movies.module';

export function loadMoviesModule() {
  return MoviesModule;
}

export function loadLoginModule() {
  return LoginModule;
}

export function loadMainModule() {
  return MainModule;
}

export const routes: Routes = [
  { path: 'main', loadChildren: loadMainModule },
  { path: 'login', loadChildren: loadLoginModule },
  { path: 'movies', loadChildren: loadMoviesModule },
  { path: '', redirectTo: 'main', pathMatch: 'full' }
];

const opt = {
  enableTracing: false
  // true if you want to print navigation routes
};

@NgModule({
  imports: [RouterModule.forRoot(routes, opt)],
  exports: [RouterModule],
  providers: []
})
export class AppRoutingModule { }
