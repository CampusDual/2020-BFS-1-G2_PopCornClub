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
    setInterval(() => {
      this.loggedIn = loginService.isLoggedIn();
    }, 500);
  }

  ngOnInit() {
  }

}
