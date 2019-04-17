import { CartService } from './../cart-service/cart-service.service';
import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html'
})
export class CartComponent {
  customerName:string;
  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string, public cartService:CartService) {
  }
  getTotal()
  {
    let sum:number = 0;
    for(let product of this.cartService.cartProducts)
    {
      sum+=product.totalPrice;
    }
    return sum;
  }
  updatePrices()
  {
    for(let product of this.cartService.cartProducts)
    {
      product.totalPrice = product.quantity*product.price;
    }
  }
  placeorder()
  {
    if(!this.customerName || this.customerName.trim()=='')
    {
      alert("Please put a name!");
    }
    else{
      this.cartService.placeOrder(this.customerName);
      this.customerName=null;
    }
  }
}
