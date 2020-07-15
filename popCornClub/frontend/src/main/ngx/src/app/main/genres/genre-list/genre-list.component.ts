import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-genre-list',
  templateUrl: './genre-list.component.html',
  styleUrls: ['./genre-list.component.scss']
})
export class GenreListComponent implements OnInit {

  genres: any = [];
  movies: any = [];

  genresEndpoint = "http://localhost:33333/movies/genreMovie/search";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  constructor(
    private router: Router,
    private actRoute: ActivatedRoute,
    private http: HttpClient) {
    actRoute.params.subscribe((params) => {
    let requestBody = {

      "filter": {
        "genre_value": String(params["genre_value"])
      },
      "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
    };
    http.post(this.genresEndpoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      this.movies = response["data"];
    });
   });
  }  
  
  ngOnInit() {}

}  

