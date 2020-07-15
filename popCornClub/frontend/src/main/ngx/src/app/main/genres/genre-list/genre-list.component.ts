import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-genre-list',
  templateUrl: './genre-list.component.html',
  styleUrls: ['./genre-list.component.scss']
})
export class GenreListComponent implements OnInit {
  movies: any = [];
  genre: String = "";

  genresEndpoint = "http://localhost:33333/genres/genreMovie/search"; // Este endpoint devuelve películas (?)  
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
        "id_genre": Number(params["id"])
      },
      "columns": ["genre_value", "id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
    };
    console.log(JSON.stringify(requestBody));
    http.post(this.genresEndpoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      console.log(response);
      this.movies = response["data"];
      this.genre = this.movies[0]["genre_value"];
    });
   });
  }  
  
  ngOnInit() {}

}  

