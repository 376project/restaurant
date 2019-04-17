import { CartService } from './../cart-service/cart-service.service';
import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { iProduct } from '../models/products';
import { routerNgProbeToken } from '@angular/router/src/router_module';

@Component({
  selector: 'app-previousOrders',
  templateUrl: './previousOrders.component.html',
  styleUrls:['./previousOrders.component.css']
})
export class PreviousOrdersComponent {
  public orders: iOrder[];

  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string, public cartService:CartService) {
    http.get<iOrder[]>(baseUrl + 'api/Order/PreviousOrders').subscribe(result => {
      this.orders = result;
      console.log(this.orders);
    }, error => console.error(error));
  }
}
interface iOrder{
  id:number;
  totalPrice:number;
  customerName:string;
}
