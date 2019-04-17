export interface iProduct
{
  id:number;
  title:string;
  descript:string;
  imageUrl:string;
  price:number;
}
export interface iPurchaseProduct extends iProduct{
  quantity:number;
  totalPrice:number;
}
export class PurchaseProduct implements iPurchaseProduct{
  quantity: number;
  id: number;
  title: string;
  descript: string;
  imageUrl: string;
  price: number;
  totalPrice:number;
}
