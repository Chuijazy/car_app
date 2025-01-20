import 'package:flutter/material.dart';

extension DoubleExtensions on int {
   // ignore: unnecessary_this
   SizedBox get verticalSpace => SizedBox(height: this.toDouble());
  // ignore: unnecessary_this
  SizedBox get horizontalSpace => SizedBox(width: this.toDouble());
}

