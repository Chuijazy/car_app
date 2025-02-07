import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/features/auth/home/provider/cars_provider.dart';
import 'package:car_app/features/cart/cart_provider.dart';
import 'package:car_app/features/auth/screens/deteil_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoreList extends StatefulWidget {
  const MoreList({super.key});

  @override
  State<MoreList> createState() => _MoreListState();
}

class _MoreListState extends State<MoreList> {
  final _activeCategory = ValueNotifier<CarFilters?>(null);

  @override
  void dispose() {
    _activeCategory.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerW = context.watch<CarsProvider>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: BackButton(
                  style: ElevatedButton.styleFrom(iconColor: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 40.0,
                      crossAxisSpacing: 30.0,
                      childAspectRatio: 1, 
                      crossAxisCount: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              context.push(
                                DeteilScreen(car: providerW.currentList[index]),
                              );
                            },
                            child: Container(
                              // ignore: deprecated_member_use
                              color: providerW.currentList[index].type.getColor.withOpacity(0.4),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: CachedNetworkImage(
                                      placeholder: (context, url) => const SizedBox.shrink(),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                      imageUrl: providerW.currentList[index].image,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      10.horizontalSpace,
                                      Expanded(
                                        child: Text(
                                          '${providerW.currentList[index].brand} ${providerW.currentList[index].model}',
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          context.read<CartProvider>().addItemToCart(providerW.currentList[index]);
                                        },
                                        icon: const Icon(Icons.add_shopping_cart),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: providerW.currentList.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
