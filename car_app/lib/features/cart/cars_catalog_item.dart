import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/features/cart/cars_data.dart';
import 'package:car_app/features/cart/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/theme/app_textstyles.dart';

class CarsCatalogItem extends StatelessWidget {
  const CarsCatalogItem({
    required this.index,
    required this.list,
    required this.addToCart,
    required this.addToFavorite,
    super.key});

  final int index;
  final List<Car> list;
  final Function() addToCart;
  final Function() addToFavorite;

  @override
  Widget build(BuildContext context) {
    final favoriteList = context.watch<FavoriteProvider>().favoriteList;
    return Container(
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
        color: list[index].colors.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width:200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(list[index].image),
                ),
              ),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index].brand,
                        style: AppTextstyles.semiBold.setSize(25),
                        ),
                      Text(
                      '${list[index].model} ${list[index].year}',
                      style: AppTextstyles.semiBold.setSize(20),),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: addToFavorite, 
                        icon: Icon(Icons.favorite, color: favoriteList.contains(list[index]) 
                        ? Colors.red 
                        : Colors.grey,),
                        ),
                      IconButton(
                        onPressed: addToCart, 
                        icon: const Icon(Icons.add_shopping_cart),
                        ),
                    ]
                  ),
                ],
              )
            ],
          ),
      );
  }
}