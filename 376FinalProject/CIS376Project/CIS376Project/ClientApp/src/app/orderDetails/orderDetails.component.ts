import { iPurchaseProduct } from './../models/products';
import { CartService } from './../cart-service/cart-service.service';
import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-orderDetails',
  templateUrl: './orderDetails.component.html'
})
export class OrderDetailsComponent {
  public products: iPurchaseProduct[];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string, public cartService:CartService,router:Router,route:ActivatedRoute) {
    let id = route.snapshot.paramMap.get('id');
    http.get<iPurchaseProduct[]>(baseUrl + 'api/Order/PreviousOrders/'+id).subscribe(result => {
      this.products = result;
      console.log(this.products);
    }, error => console.error(error));
  }
  getTotal()
  {
    let sum:number = 0;
    for(let product of this.products)
    {
      sum+=product.totalPrice;
    }
    return sum;
  }
}
