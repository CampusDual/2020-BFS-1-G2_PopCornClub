import { Observable } from 'rxjs';
import { Injectable, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';


@Injectable({
    providedIn: 'root'
}
)
export class PopcornService implements OnInit {

    genres = [];    
    movie = null;

    ngOnInit(){
    }

    constructor(
        private  router: Router,
        private actRoute: ActivatedRoute,
        private  http: HttpClient)
        {     

    }
    getMovie(termino: String){
        
        console.log(termino);
        const headers = new HttpHeaders({
            'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
            'Content-Type': 'application/json'
        });

        let requestBody = {
            "filter": {
                "movie_name": termino
            },
            "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
          };
        
        return this.http.post<any>('http://localhost:33333/movies/searchMovies/search', requestBody,{headers});
    }  
} 
  