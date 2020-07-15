import { Router } from '@angular/router';
import { PopcornService } from './../../services/popcorn.service';
import { Component, OnInit, Inject } from '@angular/core';
import { LoginService } from 'ontimize-web-ngx';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {

  loggedIn: any = false;
  movies: any = []

  constructor(
    @Inject(LoginService) private loginService: LoginService,
    private popcorn: PopcornService, private router: Router
  ) {
    this.loggedIn = loginService.isLoggedIn();
  }
  searchMovie(termino : String){
    
    this.popcorn.getMovie(termino).subscribe(response =>{      
      this.movies = response["data"];
      console.log(this.movies);
       //console.log(termino)
    });      
  }
  
  ngOnInit() {
  }

}
