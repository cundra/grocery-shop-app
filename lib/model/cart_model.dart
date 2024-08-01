import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "4.00", "lib/image/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/image/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/image/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/image/water.png", Colors.blue],
  ];
  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item for cart
  void removeItemformCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

  removeItemFromCart(int index) {}
}
