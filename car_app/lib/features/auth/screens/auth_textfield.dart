import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthTextfield extends StatefulWidget {
  const AuthTextfield({super.key, 
  required this.title, 
  required this.hint,
  required this.controller, 
  });

  final String title;
  final String hint;
  final TextEditingController controller;

  @override
  State<AuthTextfield> createState() => _AuthTextfieldState();
}

class _AuthTextfieldState extends State<AuthTextfield> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTextstyles.regular.setSize(14),
          ),
            TextFormField(
              decoration: 
                InputDecoration(
                  hintText: widget.hint,
                  suffixIcon: null),
              ),
      ],
    );
  }
}