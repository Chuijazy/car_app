import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    this.validator,
    this.isPasswordField = false,
    required this.controller,
    required this.title,
    required this.hint,
    super.key});

  final String title;
  final String hint;
  final TextEditingController controller;
  final bool isPasswordField;
  final String? Function (String?)? validator;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, 
              style: AppTextstyles.regular.
              setSize(16).
              copyWith(color: AppColors.mainColor),),
              TextFormField(
                validator: widget.validator,
              obscureText: widget.isPasswordField && !isPasswordVisible,
               controller: widget.controller,
               decoration: InputDecoration(
               hintText: widget.hint,
               suffixIcon: widget.isPasswordField
                ? IconButton(
                onPressed: () {
                setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
                icon: isPasswordVisible
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          )
        : null,
  ),
),
      ],
    );
  }
}