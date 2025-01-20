import 'package:flutter/material.dart';

extension DoubleExtencions on int {
  SizedBox get verticalSpace => SizedBox(
    height: toDouble(),
  );
  SizedBox get horizontalSpace => SizedBox(
    width: toDouble(),
  );
}

