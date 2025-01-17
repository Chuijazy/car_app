import 'package:car_app/core/extencions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
//import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = false;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 28, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Sign Up', 
              style: AppTextstyles.regular.setSize(48),
              ),
              SizedBox(height: 40,),
              Text('FULL NAME',
              style: AppTextstyles.regular.setSize(14),
              ),
              TextFormField(
                decoration: 
                const InputDecoration(
                  hintText: 'Lorem Ipsum',),
              ),
              SizedBox(height: 20,),
              Text('EMAIL OR PHONE',
              style: AppTextstyles.regular.setSize(14),
              ),
              TextFormField(
                decoration: 
                const InputDecoration(
                  hintText: 'Loremipsum@gmail.com',),
              ),
              SizedBox(height: 25,),
              Text('PASSWORD',
              style: AppTextstyles.regular.setSize(14),
              ),
              StatefulBuilder(
              builder: (context, setState) {
             return TextFormField(
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: '******',
                  suffixIcon: IconButton(
                    icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                setState(() {
              isPasswordVisible = !isPasswordVisible;
               });
               },
              ),
              ),
             );
           },
           ),
              SizedBox(height: 20,),
              ElevatedButton( 
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero
                ),
                onPressed: (){},
                child: Container(
                  width: 350,
                  height: 52,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 43,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.transparent, width: 2,
                    ),
                    color: Color(0xff2B4C59),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Log In',
                  style: AppTextstyles.semiBold.setSize(20).copyWith(color: Colors.white),
                  ),
                 ], ),
                ),
              ),
              Center(child: Text('OR', 
              style: TextStyle(fontSize: 14),),),
              SizedBox(height: 10,),
              // ignore: avoid_unnecessary_containers
              ElevatedButton( 
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero
                ),
                onPressed: (){},
                child: Container(
                  width: 350,
                  height: 52,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 43,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black, width: 2,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppAssets.google, width: 30, height: 30,),
                  Text('Continue With Google',
                  ),
                 ], ),
                ),
              ),
              SizedBox(height: 5,),
             ElevatedButton( 
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,),
              onPressed: (){},
                child: Container(
                  width: 350,
                  height: 52,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 43,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black, width: 2,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppAssets.facebook, width: 25, height: 25,),
                  Text('Continue With Facebook',
                  ),
                 ], ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t Have an account yet?',
                  style: TextStyle(fontSize: 10),),
                  SizedBox(width: 100,),
                  ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,),
                  child: Text('SIGN IN', 
                  style: TextStyle(fontSize: 10).copyWith(color: Color(0xffFCC21B,
),),
                  ),),
                ],
              ),
              
        ]
        ),
        ),
       ),
      );
  }
}