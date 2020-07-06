import { FooterHomeComponent } from './footer-home/footer-home.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home.component';

const routes: Routes = [  
  {
    path: '',
    component: HomeComponent
  }, 
  {
    path: '',
    component: FooterHomeComponent
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomeRoutingModule { }
