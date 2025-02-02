import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';
import 'package:car_app/data/cars_data.dart' as data;

class CarsProvider extends ChangeNotifier {

  List<CarModel> currentList = data.list;

  void showAllCars (){
    currentList = data.list;
    notifyListeners();
  }

  void showFamilyCars (){
    List<CarModel> familyCars = [];

    for (var i = 0; i < data.list.length; i ++) {
      if (data.list[i].brand == 'Toyota' || data.list[i].brand == 'Huyndai') {
        familyCars.add(data.list[i]);
      }

      currentList = familyCars;
      notifyListeners();
    }
  }

  void showCheapCars (){
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i ++) {
      if (data.list[i].price < 300) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

  void showLuxuryCars (){
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i ++) {
      if (data.list[i].price < 600) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

   void showSportCars (){
    List<CarModel> familyCars = [];

    for (var i = 0; i < data.list.length; i ++) {
      if (data.list[i].brand == 'Mercedez-Benz' || data.list[i].brand == 'BMW') {
        familyCars.add(data.list[i]);
      }

      currentList = familyCars;
      notifyListeners();
    }
  }

  void showPopularCars (){
    List<CarModel> familyCars = [];

    for (var i = 0; i < data.list.length; i ++) {
      if (
        data.list[i].brand == 'Honda' || 
        data.list[i].brand == 'Toyota' || 
        data.list[i].brand == 'Lexus') {
        familyCars.add(data.list[i]);
      }

      currentList = familyCars;
      notifyListeners();
    }
  }
}