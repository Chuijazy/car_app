import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/features/cart/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerW = context.watch<CartProvider>(); // watch вместо read

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final item = providerW.cartList[index];

          return ListTile(
            leading: Image.network(item.image, width: 50, height: 50), // Добавляем фото
            title: Text('${item.brand} ${item.model}'),
            subtitle: Text('Цена: \$${item.price} | Количество: ${item.count}'),
            trailing: Text('Итого: \$${(item.price * item.count).toStringAsFixed(2)}'),
          );
        },
        separatorBuilder: (context, index) => 20.verticalSpace,
        itemCount: providerW.cartList.length,
      ),
    );
  }
}
