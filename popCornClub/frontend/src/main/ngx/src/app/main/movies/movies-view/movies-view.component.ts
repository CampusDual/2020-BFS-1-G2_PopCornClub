import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-movies-view',
  templateUrl: './movies-view.component.html',
  styleUrls: ['./movies-view.component.scss']
})
export class MoviesViewComponent implements OnInit {
  movie = null;
  constructor(
    private router: Router,
    private actRoute: ActivatedRoute,
    private http: HttpClient
  ) {
    actRoute.params.subscribe((params) => {
      let requestBody = {
        "filter": {
          "id_movie": Number(params["id"])
        },
        "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
      };
      http.post(this.moviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
        this.movie = response["data"][0];
      });
    });
  }

  moviesEndPoint = "http://localhost:33333/movies/movie/search";

  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

}
