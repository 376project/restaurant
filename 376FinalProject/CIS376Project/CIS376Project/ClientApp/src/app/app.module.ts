import { PreviousOrdersComponent } from './previousOrders/previousOrders.component';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { AppetizersComponent } from './appetizers/appetizers.component';
import { CartService } from './cart-service/cart-service.service';
import { DessertsComponent } from './desserts/desserts.component';
import { DrinksComponent } from './drinks/drinks.component';
import { EntreesComponent } from './entrees/entrees.component';
import { SidesComponent } from './sides/sides.component';
import { CartComponent } from './cart/cart.component';
import { OrderDetailsComponent } from './orderDetails/orderDetails.component';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    AppetizersComponent,
    DessertsComponent,
    DrinksComponent,
    EntreesComponent,
    SidesComponent,
    CartComponent,
    PreviousOrdersComponent,
    OrderDetailsComponent
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'desserts', component: DessertsComponent },
      { path: 'appetizers', component: AppetizersComponent },
      {path:'drinks',component:DrinksComponent},
      {path:'entrees',component:EntreesComponent},
      {path:'sides',component:SidesComponent},
      {path:'cart',component:CartComponent},
      {path:'previousOrders/:id',component:OrderDetailsComponent},
      {path:'previousOrders',component:PreviousOrdersComponent}
    ])
  ],
  providers: [
    CartService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
