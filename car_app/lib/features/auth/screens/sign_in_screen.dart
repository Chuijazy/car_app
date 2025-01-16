import 'package:car_app/core/extencions/textstyle_extension.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Sign In', style: AppTextstyles.regular.setSize(48),
            ),
          ],
        ),
      ),
    );
  }
}