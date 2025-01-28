import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/features/cart/cars_catalog_item.dart';
import 'package:car_app/features/cart/cars_data.dart';
import 'package:car_app/features/cart/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarsCatalogScreen extends StatelessWidget {
  const CarsCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = CarsData().cars;
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Car'),
      ),
      body: ListView.separated(itemBuilder: (context, index) => CarsCatalogItem(
        addToCart: () {},
        addToFavorite: () {
          context.read<FavoriteProvider>().changeFavorite(newFavorite: list[index]
          );
        },
        list: list, 
        index: index,
      ),
       separatorBuilder: (context, index) => 20.verticalSpace, 
      itemCount: list.length,
    ), );
  }
}