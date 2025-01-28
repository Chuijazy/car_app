import 'package:flutter/material.dart';

class CarsData {
final List <Car> cars = [
  Car(
  brand: 'Toyota', 
  model: 'Camry 70', 
  year: 2018, 
  image: 'https://avatars.mds.yandex.net/get-verba/997355/2a000001906cf47fc4a29bfe43fc75c3d673/cattouchretcr', 
  colors: Colors.black),

  Car(
  brand: 'Honda', 
  model: 'Fit', 
  year: 2004, 
  image: 'https://image-cdn.beforward.jp/large/201411/431660/BF327918_d47129.jpg', 
  colors: Colors.pink),

  Car(
  brand: 'Hyundai', 
  model: 'Sonata', 
  year: 2016, 
  image: 'https://im.mashina.kg/tachka/images//d/b/1/db1db1000a22135da47c7335831ce88c_1200x900.jpg', 
  colors: Colors.white),

  Car(
  brand: 'Chevrolet', 
  model: 'Malibu', 
  year: 2020, 
  image: 'https://cdn.jdpower.com/JDPA_2020-Chevrolet-Malibu-RS-Red-Front-Quarter-Small.jpg', 
  colors: Colors.red),

  Car(
  brand: 'BMW', 
  model: 'M3', 
  year: 2020, 
  image: 'https://www.carscoops.com/wp-content/uploads/2018/10/1e9c9fac-2020-bmw-m3-0-1024x539.jpg', 
  colors: Colors.blue),

];
}

class Car{
  final String brand;
  final String model;
  final int year;
  final String image;
  final Color colors;

  Car({
    required this.brand, 
    required this.model, 
    required this.year, 
    required this.image, 
    required this.colors
    });
}