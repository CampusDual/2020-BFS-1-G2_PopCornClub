import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-related-movies',
  templateUrl: './related-movies.component.html',
  styleUrls: ['./related-movies.component.scss']
})
export class RelatedMoviesComponent implements OnInit {

  relatedMovies = [];

  relatedMoviesEndPoint = "http://localhost:33333/movies/relatedMovies/search";
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
          "id_movie": Number(params["id"])
        },
        "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
      };
      http.post(this.relatedMoviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
        this.relatedMovies = [];
        response["data"].forEach(movieToFilter => {
          if (movieToFilter["id_movie"] != params["id"]) {
            this.relatedMovies.push(movieToFilter);
          }
        });
      });
    });
  }

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

}
