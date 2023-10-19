import 'package:flutter/material.dart';
import 'package:shoes_store/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoes = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imgPath: 'assets/shoe5.png',
        description: 'The design of shoes is good.'
    ),
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imgPath: 'assets/shoe4.png',
        description: 'Cool Shoe.'
    ),
    Shoe(
        name: 'KD Treys',
        price: '200',
        imgPath: 'assets/shoe7.png',
        description: 'Nice and Amazing Shoe'
    ),
    Shoe(
        name: 'Kyrie 6',
        price: '150',
        imgPath: 'assets/shoe8.png',
        description: 'Good in terms of color and quality'
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList(){
    return shoes;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}