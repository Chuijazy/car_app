import 'package:car_app/core/enum/car_filters.dart';


class CarModel {
  final String brand;
  final String model;
  final double price;
  final String image;
  final CarFilters type;

  CarModel({
    required this.brand, 
    required this.model, 
    required this.price, 
    required this.image,
    required this.type,
    });
}