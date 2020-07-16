import { Component, OnInit, Inject } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { LoginService } from 'ontimize-web-ngx';

@Component({
  selector: 'app-wishlist',
  templateUrl: './wishlist.component.html',
  styleUrls: ['./wishlist.component.scss']
})
export class WishlistComponent implements OnInit {
  httpClient = null;
  moviesOnWishlist = [];

  usersEndpoint = "http://localhost:33333/users/user/search";
  wishlistEndpoint = "http://localhost:33333/master/wishlist/search";
  movieInfoEndpoint = "http://localhost:33333/movies/movie/search";
  wishlistMovieDeleteEndpoint = "http://localhost:33333/master/wishlist";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  httpOptions2 = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      
    })
  };

  constructor(
    private http: HttpClient,
    @Inject(LoginService) private loginService: LoginService
  ) {
    this.httpClient = http;
    let getUserIdBody = {
      "filter": {
        "USER_": loginService.user
      },
      "columns": ["ID_USER"]
    }

    http.post(this.usersEndpoint, JSON.stringify(getUserIdBody), this.httpOptions).subscribe(response => {
      let requestBody = {
        "filter": {
          "id_user": Number(response["data"][0]["ID_USER"])
        },
        "columns": ["id_movie"]
      };

      http.post(this.wishlistEndpoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
        response["data"].forEach(movieIdElement => {
          let movieId: Number = Number(movieIdElement["id_movie"]);
          let movieInfoBody = {
            "filter": {
              "id_movie": movieId
            },
            "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
          };
          http.post(this.movieInfoEndpoint, JSON.stringify(movieInfoBody), this.httpOptions).subscribe(response => {
            this.moviesOnWishlist.push(response["data"][0]);
          });
        });
      });
    });
  }

  onDeleteMovieFromWishlist(movieId) {
    let movieDeleteBody = {
      "filter": {
        "id_movie": Number(movieId)
      }
    };
    this.httpClient.delete(this.wishlistMovieDeleteEndpoint,movieDeleteBody, this.httpOptions2).subscribe(response => {
      console.log(response);
      this.moviesOnWishlist = this.moviesOnWishlist.filter((movie) => Number(movie["id_movie"]) != Number(movieId));
    });
    return;
  }

  ngOnInit() {
  }

}
