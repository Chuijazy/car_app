import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_colors.dart';
//import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/screens/auth_textfield.dart';
import 'package:car_app/features/auth/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _loginController.dispose();
    super.dispose();
    _passwordController.dispose();
  }
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
              20.verticalSpace,
              Text('Sign In', 
              style: AppTextstyles.regular.setSize(48),
              ),
              100.verticalSpace,
              AuthTextfield(
                title:'EMAIL OR PHONE' , 
                hint: 'Loremipsum@gmail.com', 
                controller: _loginController,
                ),
              25.verticalSpace,
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
              Text('Forgot password?',
              style: TextStyle(fontSize: 10),),
              20.verticalSpace,
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
                    color: AppColors.mainColor,
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
              5.verticalSpace,
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
              10.verticalSpace,
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
                  100.horizontalSpace,
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),),);
                  }, 
                  style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.zero,),
                  child: Text('SIGN UP', 
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