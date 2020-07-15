import { GenreListComponent } from './genre-list/genre-list.component';
import { OntimizeWebModule } from 'ontimize-web-ngx';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { GenresRoutingModule } from './genres-routing.module';

@NgModule({
  imports: [
    CommonModule,
    GenresRoutingModule,
    OntimizeWebModule
    
  ],
  declarations: [GenreListComponent]
})
export class GenresModule { }
