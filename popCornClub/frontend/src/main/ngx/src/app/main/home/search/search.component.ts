import { Router } from '@angular/router';
import { PopcornService } from './../../services/popcorn.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.scss']
})
export class SearchComponent implements OnInit {

  movies: any = []

  constructor(private popcorn: PopcornService, private router: Router) { }

  ngOnInit() {
    //this.getData
  }

  search(termino : string){

    this.popcorn.getMovie(termino)
    .subscribe(response =>{
      console.log(this.movies.item);
      this.movies = response["data"];
    });
  }
  
  onSelected(item){
    this.router.navigate(["/main/home/new-movies-list", item.movie_id])
  }
}

