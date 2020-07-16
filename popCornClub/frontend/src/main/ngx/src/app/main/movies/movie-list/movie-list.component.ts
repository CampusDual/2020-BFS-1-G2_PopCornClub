import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router';
import { PopcornService } from './../../services/popcorn.service';


@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.scss']
})
export class MovieListComponent implements OnInit {

  movies: any = [];
  search: String;

  moviesEndPoint = "http://localhost:33333/movies/movie/search";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  constructor(
    private http: HttpClient,
    private route: ActivatedRoute,
    private popcorn: PopcornService

  ) {
    let requestBody = {
      "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
    };

    this.search=route.snapshot.paramMap.get("search");
    console.log(this.search);
    if( this.search === null ) {
      http.post(this.moviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
        this.movies = response["data"];
      });
    }

    else {
    this.popcorn.getMovie(this.search).subscribe(response =>{      
     this.movies = response["data"];
     console.log(this.movies);
    });

    
  }}

  ngOnInit() {
  }
}