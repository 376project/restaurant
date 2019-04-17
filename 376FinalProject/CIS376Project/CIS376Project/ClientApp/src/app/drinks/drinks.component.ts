import { CartService } from './../cart-service/cart-service.service';
import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { iProduct } from '../models/products';

@Component({
  selector: 'app-drinks',
  templateUrl: './drinks.component.html'
})
export class DrinksComponent {
  public products: iProduct[];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string, public cartService:CartService) {
    http.get<iProduct[]>(baseUrl + 'api/Order/Drinks').subscribe(result => {
      this.products = result;
      console.log(this.products);
    }, error => console.error(error));
  }
  onSubmit(event:any,product:iProduct)
  {
    let quantity:number = event.srcElement[0].value;
    if(quantity &&quantity>=1)
    {
    this.cartService.addProduct(product,event.srcElement[0].value);
    }
  }
}