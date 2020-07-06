import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-related-movies',
  templateUrl: './related-movies.component.html',
  styleUrls: ['./related-movies.component.scss']
})
export class RelatedMoviesComponent implements OnInit {

  relatedMovies = [
    {
      "id": 5,
      "poster": "https://m.media-amazon.com/images/M/MV5BZjVkYzY4OWEtMjc2OC00YTQ0LWIwMmUtYTRlODc3ODBmZjcxXkEyXkFqcGdeQXVyMjkyODc0ODk@._V1_UY268_CR5,0,182,268_AL_.jpg",
      "movie_name": "Indiana Jones y el santuario de la orden negra",
      "description": "1938. A group of American archaeologists are taken prisoners in the Castle of Wewelsburg. Indiana Jones with Sallah and Husani will travel to the Nazi Vatican, to discover the last and the darkest plan of the Third Reich.",
      "media_rating": 7,
    },
    {
      "id": 1,
      "poster": "https://m.media-amazon.com/images/M/MV5BZjVkYzY4OWEtMjc2OC00YTQ0LWIwMmUtYTRlODc3ODBmZjcxXkEyXkFqcGdeQXVyMjkyODc0ODk@._V1_UY268_CR5,0,182,268_AL_.jpg",
      "movie_name": "Indiana Jones y el santuario de la orden negra",
      "description": "1938. A group of American archaeologists are taken prisoners in the Castle of Wewelsburg. Indiana Jones with Sallah and Husani will travel to the Nazi Vatican, to discover the last and the darkest plan of the Third Reich.",
      "media_rating": 7,
    }
  ];

  relatedMoviesEndPoint = "http://localhost:33333/movies/movie";
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
    let requestBody = {
      "filter": {
       
      },
      "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
    };
    http.post(this.relatedMoviesEndPoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      // FIXME: Añadir a this.relatedMovies las peliculas retornadas por el backend
    });
   }

  ngOnInit() {
  }

  navigate() {
    this.router.navigate(['../', 'login'], { relativeTo: this.actRoute });
  }

}
