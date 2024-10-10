import 'package:ecommercepage/component/models/phones.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
//list of phones for sale
  List<Phones> phoneShop = [
    Phones(
      name: '15 Pro Max',
      price: '1.6M',
      description: '128GB with a battery health of 89',
      imagesPath: 'images/15promax.jpg',
    ),
    Phones(
      name: '12 Pro Max',
      price: '650k',
      description: '128GB with a battery health of 94',
      imagesPath: 'images/12promax.jpg',
    ),
    Phones(
      name: '11 Pro Max',
      price: '450k',
      description: '64GB with a battery health of 85',
      imagesPath: 'images/11promax.jpg',
    ),
    Phones(
      name: '12',
      price: '450',
      description: '64GB with a battery health of 88',
      imagesPath: 'images/12.jpg',
    ),
  ];
// list of item in user cart
  List<Phones> userCart = [];

// get list of phones for sale
  List<Phones> getPhoneList() {
    return phoneShop;
  }

// get cart
  List<Phones> getUserCart() {
    return userCart;
  }

// add item to cart
  void addItemToCart(Phones phone) {
    userCart.add(phone);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Phones phone) {
    userCart.remove(phone);
    notifyListeners();
  }
}
