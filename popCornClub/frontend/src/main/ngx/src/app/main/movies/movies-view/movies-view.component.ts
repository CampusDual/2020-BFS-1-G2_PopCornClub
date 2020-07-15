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
  casting = [];
  nationality = [];
  genres = [];

  constructor(
    private router: Router,
    private actRoute: ActivatedRoute,
    private http: HttpClient
  ) {
    actRoute.params.subscribe((params) => {
      let movieRequestBody = {
        "filter": {
          "id_movie": Number(params["id"])
        },
        "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
      };

      let castingRequestBody = {
        "filter": {
          "id_movie": Number(params["id"])
        },
        "columns": ["casting_role", "casting_name"]
      };

      let nationalityRequestBody = {
        "filter": {
          "id_movie": Number(params["id"])
        },
        "columns": ["nationality_name"]
      };

      let genreRequestBody = {
        "filter": {
          "id_movie": Number(params["id"])
        },
        "columns": ["id_genre", "genre_value"]
      };


      http.post(this.moviesEndPoint, JSON.stringify(movieRequestBody), this.httpOptions).subscribe(response => {
        this.movie = response["data"][0];
      });

      http.post(this.nationalityEndPoint, JSON.stringify(nationalityRequestBody), this.httpOptions).subscribe(response => {
        this.nationality = response["data"][0];
        console.log(this.nationality);
      });
 
      http.post(this.genresEndPoint, JSON.stringify(genreRequestBody), this.httpOptions).subscribe(response => {
        console.log(response);
        this.genres = response["data"];
      });

      http.post(this.castingEndPoint, JSON.stringify(castingRequestBody), this.httpOptions).subscribe(response => {
        this.casting = response["data"];
      });
     
    });
  }

  moviesEndPoint = "http://localhost:33333/movies/movie/search";
  castingEndPoint = "http://localhost:33333/castings/castingMovie/search";
  nationalityEndPoint = "http://localhost:33333/master/nationalityMovie/search";
  genresEndPoint = "http://localhost:33333/genres/genreMovie/search";

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
