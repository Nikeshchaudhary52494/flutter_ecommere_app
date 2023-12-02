import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    [
      "iphone 14",
      "799",
      'https://www.jiomart.com/images/product/original/493177749/apple-iphone-14-128-gb-midnight-digital-o493177749-p593687924-0-202306291917.jpeg?im=Resize=(1000,1000)'
    ],
    [
      "T shirt",
      "10",
      'https://www.collinsdictionary.com/images/thumb/tshirt_204029461_250.jpg?version=5.0.34'
    ],
    [
      "mac bookAir",
      "1000",
      'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-air-midnight-select-20220606?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1653084303665'
    ],
    [
      "Apple",
      "5",
      'https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=is&k=20&c=yvvWfDnzFoBTeabQaai9MEdPQ3EzN-i4EH-RYcol7c8='
    ],
  ];
  final List _cartitems = [];
  get cartItems => _cartitems;
  get shopItems => _shopItems;

  // add items to cart
  void addItemToCart(int index) {
    _cartitems.add(_shopItems[index]);
    notifyListeners();
  }

// remove items from car
  void removeItemFromCart(int index) {
    _cartitems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartitems.length; i++) {
      totalPrice += double.parse(_cartitems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
