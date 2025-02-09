import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.google,
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 20),
               Text('Continue With Google',
              style: AppTextstyles.regular.setSize(16),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12), 
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.facebook,
                height: 30,
                width: 30,
              ),
              const SizedBox(width: 25), 
               Text('Continue With Facebook',
               style: AppTextstyles.regular.setSize(16),
               ),
            ],
          ),
        ),
      ],
    );
  }
}
