import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Espresso",
      price: "4.50",
      imagePath: 'assets/images/expresso.png',
    ),
    Coffee(
      name: "Latte",
      price: "5.20",
      imagePath: 'assets/images/latte.png',
    ),
    Coffee(
      name: "Iced Coffee",
      price: "5.10",
      imagePath: 'assets/images/iced-coffee.png',
    ),
    Coffee(
      name: "Hot Coffee",
      price: "4.20",
      imagePath: 'assets/images/coffee-latte.png',
    ),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
