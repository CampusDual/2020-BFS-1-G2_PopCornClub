import { Component, OnInit, Inject, ViewChild } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { LoginService } from 'ontimize-web-ngx';

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
  canRate = false;
  @ViewChild("userRatingInput") userRatingInput: any;
  httpClient = null;
  movieId: Number = -1;
  idUser: Number = 1;

  constructor(
    private router: Router,
    private actRoute: ActivatedRoute,
    private http: HttpClient,
    @Inject(LoginService) private loginService: LoginService,
  ) {
    this.httpClient = http;
    actRoute.params.subscribe((params) => {
      this.movieId = Number(params["id"]);
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
        "columns": ["genre_value"]
      };

      let getUserIdBody = {
        "filter": {
          "USER_": loginService.user
        },
        "columns": ["ID_USER"]
      }


      http.post(this.moviesEndPoint, JSON.stringify(movieRequestBody), this.httpOptions).subscribe(response => {
        this.movie = response["data"][0];
      });

      http.post(this.nationalityEndPoint, JSON.stringify(nationalityRequestBody), this.httpOptions).subscribe(response => {
        this.nationality = response["data"][0];
      });
 
      http.post(this.genresEndPoint, JSON.stringify(genreRequestBody), this.httpOptions).subscribe(response => {
        this.genres = response["data"];
      });

      http.post(this.castingEndPoint, JSON.stringify(castingRequestBody), this.httpOptions).subscribe(response => {
        this.casting = response["data"];
      });

      http.post(this.usersEndPoint, JSON.stringify(getUserIdBody), this.httpOptions).subscribe(response => {
        this.idUser = Number(response["data"][0]["ID_USER"]);
        let canRateRequestBody = {
          "filter": {
            "id_user": this.idUser,
            "id_movie": Number(params["id"])
          },
          "columns": ["id_rating"]
        };

        http.post(this.canRateEndPoint, JSON.stringify(canRateRequestBody), this.httpOptions).subscribe(response => {
            this.canRate = !Array.isArray(response["data"]);
        });
      });

      
     
    });
  }

  usersEndPoint = "http://localhost:33333/users/user/search";
  moviesEndPoint = "http://localhost:33333/movies/movie/search";
  castingEndPoint = "http://localhost:33333/castings/castingMovie/search";
  nationalityEndPoint = "http://localhost:33333/master/nationalityMovie/search";
  genresEndPoint = "http://localhost:33333/genres/genreMovie/search";
  canRateEndPoint = "http://localhost:33333/ratings/rating/search";
  ratingsEndPoint = "http://localhost:33333/ratings/rating";

  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  onUserRate(){
    let ratingsRequestBody = {
      "data": {
        "id_user": this.idUser,
        "id_movie": this.movieId,
        "rating_value": parseFloat(this.userRatingInput.nativeElement.value)
      }
    };

    console.log(ratingsRequestBody);
    this.httpClient.post(this.ratingsEndPoint, JSON.stringify(ratingsRequestBody), this.httpOptions).subscribe(response => {
      console.log(response);
      this.canRate = false;
      window.location.reload();
    });

  }

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

}
