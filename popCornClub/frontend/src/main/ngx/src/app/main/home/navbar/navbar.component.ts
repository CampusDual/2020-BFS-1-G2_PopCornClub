import { Component, OnInit, Inject } from '@angular/core';
import { LoginService } from 'ontimize-web-ngx';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {

  loggedIn: any = false;

  constructor(
    @Inject(LoginService) private loginService: LoginService,
  ) {
    this.loggedIn = loginService.isLoggedIn();
    //loginService.onLogin.subscribe( () => this.loggedIn = true );
    //loginService.onLogout.subscribe( () => { this.loggedIn = false;
    //console.log("logged out event");});
  }

  
  ngOnInit() {
  }

}
