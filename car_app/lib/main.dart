import 'package:car_app/features/auth/home/data_provider.dart';
import 'package:car_app/features/cart/cars_catalog_screen.dart';
import 'package:car_app/features/cart/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [ 
      ChangeNotifierProvider(
        create: (context) => DataProvider(),
        ),
        ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),
        ),
     ],
        child: const MaterialApp(
          home: CarsCatalogScreen(),
        ),
      );
  }
}