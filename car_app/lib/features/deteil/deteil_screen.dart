import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/deteil/deteil_image.dart';
import 'package:car_app/features/deteil/info_column.dart';
import 'package:flutter/material.dart';
import 'package:car_app/data/car_model.dart';

class DeteilScreen extends StatelessWidget {
  const DeteilScreen({required this.car, super.key});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          DeteilImage(car: car),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      car.brand,
                      style: AppTextstyles.regular.setSize(20),
                    ),
                    Text(
                      '${car.price} \$',
                      style: AppTextstyles.regular
                          .setSize(20)
                          .copyWith(color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(height: 20), 
              ],
            ),
          ),
          InfoColumn(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('RENDER', style: AppTextstyles.regular.
            setSize(15).
            copyWith(color: Color(0xff2B4C59),),),
          ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 48,
                    height: 48,
                      child: Image.asset('assets/avatar_pick.png', 
                      fit: BoxFit.cover,),
                    ),
                    15.horizontalSpace,
                    Text('Lorem Ipsum', 
                    style: AppTextstyles.regular.
                    setSize(13).
                    copyWith(color: Color(0xff2B4C59),),),
                    180.horizontalSpace,
                    Icon(
                      Icons.chat_bubble_outline
                    ),
                    15.horizontalSpace,
                    Icon(Icons.call_outlined)
                ],
              ),
            ),
        ],
      ),
    );
  }
}
