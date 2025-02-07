import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';

class DeteilImage extends StatelessWidget {
  const DeteilImage({
    required this.car,
    super.key});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: context.mq.height / 2,
            child: Stack(
              children: [
                Container(
                  // ignore: deprecated_member_use
                  decoration: BoxDecoration(color: car.type.getColor.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45), 
                    bottomRight: Radius.circular(45),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: context.mq.height / 10,
                  child: Text('TIIRA', 
                  style: AppTextstyles.regular.
                  setSize(160).
                  // ignore: deprecated_member_use
                  copyWith(color: Colors.white.withOpacity(0.4),),),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Image.network(car.image),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 20),
                    child: BackButton(
                      style: ElevatedButton.styleFrom(iconColor: Colors.white,),
                    ),),),
              ],
            ),
          );
  }
}