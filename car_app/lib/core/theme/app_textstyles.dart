import 'package:car_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextstyles {
  static const TextStyle mainText = TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor);

  static const TextStyle buttonText = TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        );

  static const TextStyle regular = TextStyle(fontWeight: FontWeight.w400,);
  static const TextStyle medium = TextStyle(fontWeight: FontWeight.w500,);
  static const TextStyle semiBold = TextStyle(fontWeight: FontWeight.w600,);
}