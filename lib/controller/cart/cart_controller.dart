import 'package:elvan/models/cart.dart';
import 'package:elvan/models/product.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CartController extends ChangeNotifier {
  List<Cart> carts = List.from([]);

  addCart(Product product) {
    var uuid = Uuid();
    int qty = 0;
    int subTotal = 0;
    if (carts.isEmpty) {
      qty = 1;
      subTotal = product.price * qty;
      Cart cart =
          Cart(id: uuid.v4(), product: product, qty: qty, subTotal: subTotal);
      carts.add(cart);
      notifyListeners();
    } else {
      List<Cart> existsCarts =
          carts.where((element) => element.product.id == product.id).toList();
      // print("----${product.id}------${index}");

      if (existsCarts.isNotEmpty) {
        Cart existsCart = existsCarts[0];
        int index = carts.indexOf(existsCart);
        qty = existsCart.qty + 1;
        subTotal = existsCart.product.price * qty;
        carts[index] = Cart(
            id: existsCart.id,
            product: existsCart.product,
            qty: qty,
            subTotal: subTotal);
        notifyListeners();
      } else {
        qty = 1;
        subTotal = product.price * qty;
        Cart cart =
            Cart(id: uuid.v4(), product: product, qty: qty, subTotal: subTotal);
        carts.add(cart);
        notifyListeners();
      }
    }
  }

  remove(Cart cart) {
    carts.remove(cart);
    notifyListeners();
  }
}
