import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-new-movies-list',
  templateUrl: './new-movies-list.component.html',
  styleUrls: ['./new-movies-list.component.scss']
})
export class NewMoviesListComponent implements OnInit {
  newMovies = null;
  constructor(
    private router: Router,
    private actRoute: ActivatedRoute,
    private http: HttpClient
  ) {
    actRoute.params.subscribe((params) => {
      let requestBody = {
        "filter": {
        },
        "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
      };
      http.post(this.newMoviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
        this.newMovies = response["data"];
      });
    });
  }

  newMoviesEndPoint = "http://localhost:33333/movies/lastMovies/search";

  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  ngOnInit() {
  }

}
