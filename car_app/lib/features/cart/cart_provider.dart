import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  List<CarModel> cartList = [];

  void addItemToCart (CarModel newItem) {
    cartList.add(newItem);
    notifyListeners();
  }
}