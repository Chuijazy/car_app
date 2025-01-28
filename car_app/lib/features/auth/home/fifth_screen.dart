import 'package:car_app/features/auth/home/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FifthScreen extends StatelessWidget {
   const FifthScreen({
    super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.read<DataProvider>().text),
      ),
    );
  }
}