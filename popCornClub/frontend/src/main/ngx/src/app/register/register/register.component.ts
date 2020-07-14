import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { HttpHeaders, HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {
  registerUserEndpoint = "http://localhost:33333/users/user";
  httpOptions = {
    headers: new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg==',
      'Content-Type': 'application/json'
    })
  };

  private http: HttpClient = null;
  public registerForm: FormGroup;
  @ViewChild('inputEmail') inputEmail: any;
  @ViewChild('inputNick') inputNick: any;
  @ViewChild('inputName') inputName: any;
  @ViewChild('inputSurname') inputSurname: any;
  @ViewChild('inputPassword') inputPassword: any;

  constructor(
    private formBuilder: FormBuilder,
    private httpClient: HttpClient) {
    this.http = httpClient;
  }

  onSubmit(data: any): void {
    let requestBody = {
      "data": {
        "surname": this.inputSurname.nativeElement.value,
        "email": this.inputEmail.nativeElement.value,
        "name": this.inputName.nativeElement.value,
        "user_": this.inputNick.nativeElement.value,
        "password": this.inputPassword.nativeElement.value
      },
      "sqltypes" : {
          "surname": 12,
          "email": 12,
          "name": 12,
          "user_": 12,
          "password": 12
      }
    };
    this.http.post(this.registerUserEndpoint, JSON.stringify(requestBody), this.httpOptions).subscribe(response => {
      // FIXME: Chequear que sea una respuesta correcta (es decir, el usuario ha sido creado correctamente);
    });
  } 

  ngOnInit() {
    this.buildForm();
  }

  buildForm() {
    this.registerForm = this.formBuilder.group({});
  }

}
