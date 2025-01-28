import 'package:car_app/features/cart/cars_data.dart';
import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List <Car> favoriteList = [];

  void changeFavorite ({required Car newFavorite}) {
    if (favoriteList.contains(newFavorite)){
      favoriteList.remove(newFavorite);
    } else {
      favoriteList.add(newFavorite);
    }
    notifyListeners();
  }
}