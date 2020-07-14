import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';


@Component({
  selector: 'app-rankmovies',
  templateUrl: './rankmovies.component.html',
  styleUrls: ['./rankmovies.component.scss']
})


export class RankmoviesComponent implements OnInit {

  movies: any = [];
  
  moviesEndPoint = "http://localhost:33333/movies/rankMovies/search";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  constructor(
    private http: HttpClient
  ) {
    let requestBody = {
      "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
    };
    http.post(this.moviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      this.movies = response["data"];
    });
  }

  ngOnInit() {
  }

};


