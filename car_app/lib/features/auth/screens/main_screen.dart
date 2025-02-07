import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.welcomeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: context.mq.height / 4), 
            Image.asset(
              AppAssets.welcomeLogo,
              width: 150,
            ),
            Spacer(), 
            Text(
              'Rent your dream car from the',
              style: AppTextstyles.semiBold
                  .setSize(26)
                  // ignore: deprecated_member_use
                  .copyWith(color: Colors.white.withOpacity(0.8)),
            ),
            Text(
              'Best Company',
              style: AppTextstyles.semiBold
                  .setSize(26)
                  // ignore: deprecated_member_use
                  .copyWith(color: Colors.white.withOpacity(0.8)),
            ),
            SizedBox(height: 150), 
            ElevatedButton(onPressed: () {
              context.push(HomeScreen());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffC64949),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 40),
              child: Text('Get Started',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),),
            ),),
            SizedBox(height: 90,)
          ],
        ),
      ),
    );
  }
}
