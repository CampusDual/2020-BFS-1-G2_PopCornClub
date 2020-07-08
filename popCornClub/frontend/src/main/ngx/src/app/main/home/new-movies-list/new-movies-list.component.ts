import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-new-movies-list',
  templateUrl: './new-movies-list.component.html',
  styleUrls: ['./new-movies-list.component.scss']
})
export class NewMoviesListComponent implements OnInit {

  newMovies = [
    {
      "movie_name": "Indiana Jones 5",
      "description": "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
      "poster": "https://m.media-amazon.com/images/M/MV5BZjVkYzY4OWEtMjc2OC00YTQ0LWIwMmUtYTRlODc3ODBmZjcxXkEyXkFqcGdeQXVyMjkyODc0ODk@._V1_UY268_CR5,0,182,268_AL_.jpg",
      "media_rating": 7,
    }, {
      "movie_name": "Indiana Jones 5",
      "description": "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
      "poster": "https://m.media-amazon.com/images/M/MV5BZjVkYzY4OWEtMjc2OC00YTQ0LWIwMmUtYTRlODc3ODBmZjcxXkEyXkFqcGdeQXVyMjkyODc0ODk@._V1_UY268_CR5,0,182,268_AL_.jpg",
      "media_rating": 7,
    }, {
      "movie_name": "Indiana Jones 5",
      "description": "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
      "poster": "https://m.media-amazon.com/images/M/MV5BZjVkYzY4OWEtMjc2OC00YTQ0LWIwMmUtYTRlODc3ODBmZjcxXkEyXkFqcGdeQXVyMjkyODc0ODk@._V1_UY268_CR5,0,182,268_AL_.jpg",
      "media_rating": 7,
    }
  ];
  
  newMoviesEndPoint = "http://localhost:33333/movies/new";

  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  constructor(
    private http: HttpClient
  ) {
      http.get(this.newMoviesEndPoint, this.httpOptions).subscribe(response => {
        console.log(response);
        // FIXME: Esta respuesta debería contener una lista de nuevas películas para guardar en this.newMovies.
        // TODO: Iterar cada una de las nuevas peliculas en <<response>> y añadirlas a la lista newMovies
      });
  }

  ngOnInit() {
  }

}
