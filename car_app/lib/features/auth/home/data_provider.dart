import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {

  List <Product> productList = [];

// ignore: prefer_typing_uninitialized_variables
late final text;
  

  void addProduct ({required Product newProduct}) {
    productList.add (newProduct);
  }
}

 class Product {
  final String name;
  final String image;
  final double price;

  Product({
    required this.name, 
    required this.image, 
    required this.price,
    }); 
}