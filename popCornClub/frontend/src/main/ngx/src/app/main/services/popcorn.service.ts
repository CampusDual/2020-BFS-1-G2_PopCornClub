import { Injectable, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';



@Injectable({
    providedIn: 'root'
}
)
export class PopcornService implements OnInit {

    constructor(private http: HttpClient){

    }
    ngOnInit(){
    }

    getMovie(termino: string){

        const headers = new HttpHeaders({
            'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
            'Content-Type': 'application/json'
        });

        /*let requestBody = {
            "filter": {
             
            },
            "columns": ["id_movie", "movie_name", "duration", "critic", "description", "poster", "premiere", "trailer", "movie_year", "media_rating"]
          };*/
        //return this.http.get(`http://localhost:33333/movies/movie?columns=${termino}`, {headers});
        //return this.http.post('http://localhost:33333/movies/movie/search',JSON.stringify(requestBody), {headers});
        return this.http.get(`http://localhost:33333/movies/movie?columns=${termino}`, {headers});
    }
    
}