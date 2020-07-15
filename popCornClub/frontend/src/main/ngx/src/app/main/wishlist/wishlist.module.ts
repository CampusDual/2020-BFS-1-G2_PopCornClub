import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { WishlistComponent } from './wishlist/wishlist.component';
import { WishlistRoutingModule } from './wishlist-routing.module';

@NgModule({
  imports: [
    CommonModule,
    WishlistRoutingModule
  ],
  declarations: [WishlistComponent]
})
export class WishlistModule { }
