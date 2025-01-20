import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(AppAssets.welcomeBg,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    150.verticalSpace,
                      Image.asset(AppAssets.welcomeLogo,
                      height: 60,
                      ),
                      160.verticalSpace,
                      Text('Rent your dream car from the',
                      style: AppTextstyles.mainText,
                      ),
                    Text('Best Company',
                      style: AppTextstyles.mainText,
                    ),
                    110.verticalSpace,
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),),);
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redButton,),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 14, 
                          horizontal: 60,
                          ),
                        child: Text('Get Started',
                        style: AppTextstyles.buttonText,
                        ),
                        ),
                      ),
                  ],
                ),
                ),
              ],
            ),
      ),
      );
  }
}