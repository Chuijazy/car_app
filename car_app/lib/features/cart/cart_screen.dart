import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/features/cart/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerW = context.read<CartProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Text('$index ${providerW.cartList[index].model}'), 
        separatorBuilder: (context, index) => 20.verticalSpace, 
        itemCount: providerW.cartList.length),
    );
  }
}