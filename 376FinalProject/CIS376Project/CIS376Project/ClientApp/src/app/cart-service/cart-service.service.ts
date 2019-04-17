import { iProduct, iPurchaseProduct, PurchaseProduct } from './../models/products';
import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CartService {
  cartProducts:iPurchaseProduct[];
  constructor(public http: HttpClient, @Inject('BASE_URL') public baseUrl: string) {
    this.cartProducts= new Array();
   }
   addProduct(product:iProduct,quantity:number)
   {
     let purchaseProduct = new PurchaseProduct();
     purchaseProduct.id=product.id;
     purchaseProduct.title=product.title;
     purchaseProduct.descript=product.descript;
     purchaseProduct.imageUrl=product.imageUrl;
     purchaseProduct.price=product.price;
     purchaseProduct.quantity=quantity;
     purchaseProduct.totalPrice = (product.price*quantity);
     this.cartProducts.push(purchaseProduct);
     console.log(this.cartProducts);
   }
   placeOrder(customerName:string){
     let order:Order = new Order();
     order.cartProducts = this.cartProducts;
     order.customerName=customerName;
     this.http.post(this.baseUrl + 'api/Order/PlaceOrder',order).subscribe(result => {
       this.cartProducts=new Array();
       alert("Order has been placed");
    }, error => console.error(error));
   }
}
class Order{
  cartProducts:iPurchaseProduct[];
  customerName:string;
}
