import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  List<CarModel> cartList = [];

  void addItemToCart(CarModel newItem) {
  int existingIndex = cartList.indexWhere((item) => item.model == newItem.model);

  if (existingIndex != -1) {
    cartList[existingIndex] = cartList[existingIndex].addToCart(
      count: cartList[existingIndex].count + 1,
    );
  } else {
    cartList.add(newItem.addToCart(count: 1));
  }

  notifyListeners();
}
}