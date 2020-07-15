import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.scss']
})
export class MovieListComponent implements OnInit {

  movies: any = [];

  moviesEndPoint = "http://localhost:33333/movies/movie/search";
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
}