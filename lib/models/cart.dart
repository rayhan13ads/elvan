import 'package:elvan/models/product.dart';

class Cart {
  String id;
  Product product;
  int qty;
  int subTotal;

  Cart(
      {required this.id,
      required this.product,
      required this.qty,
      required this.subTotal});
}
