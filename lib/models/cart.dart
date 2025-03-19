import 'package:ecom_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // Shoes for sale
  List<Shoe> shoeList = [
    Shoe(
      name: 'Air Jordan 1 Blue',
      price: '550',
      imagePath: 'assets/images/1.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
    Shoe(
      name: 'Nike Dunk Pink',
      price: '350',
      imagePath: 'assets/images/2.webp',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
    Shoe(
      name: 'Nike Zoom 1',
      price: '400',
      imagePath: 'assets/images/4.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
    Shoe(
      name: 'Nike Dunk Magenta',
      price: '355',
      imagePath: 'assets/images/3.webp',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
    Shoe(
      name: 'Nike Zoom 1',
      price: '400',
      imagePath: 'assets/images/4.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
    Shoe(
      name: 'Nike Dunk Cyan',
      price: '350',
      imagePath: 'assets/images/5.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
    ),
  ];

  // User cart
  List<Shoe> cart = [];

  // Get shoes
  List<Shoe> getShoeList() {
    return shoeList;
  }

  // Get user cart
  List<Shoe> getCart() {
    return cart;
  }

  // Add item to cart
  void addToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  // Remove item from
  void removeFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
