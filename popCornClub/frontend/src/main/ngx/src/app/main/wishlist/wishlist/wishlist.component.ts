import { Component, OnInit } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-wishlist',
  templateUrl: './wishlist.component.html',
  styleUrls: ['./wishlist.component.scss']
})
export class WishlistComponent implements OnInit {
  httpClient = null;
  moviesOnWishlist = [];

  wishlistEndpoint = "http://localhost:33333/master/wishlist/search";
  movieInfoEndpoint = "http://localhost:33333/movies/movie/search";
  movieDeleteEndpoint = "http://localhost:33333/movies/movie";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  constructor(
    private http: HttpClient
  ) { 
    this.httpClient = http;
    let requestBody = {
      "filter": {
        "id_user": 4 //FIXME: Poner id user correcta
      },
      "columns": ["id_movie"]
    };

    http.post(this.wishlistEndpoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      response["data"].forEach(movieIdElement => {
        let movieId = movieIdElement["id_movie"];
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
  }

  onDeleteMovieFromWishlist(movieId){
    let movieDeleteBody = {
      "filter": {
        "id_movie": movieId
      }
    };
    this.httpClient.delete(this.movieDeleteEndpoint, JSON.stringify(movieDeleteBody), this.httpOptions).subscribe(response => {
      console.log(response);
    });
  }

  ngOnInit() {
  }

}
