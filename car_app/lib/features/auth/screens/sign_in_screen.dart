import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/home/widgets/auth_button.dart';
import 'package:car_app/features/auth/home/widgets/auth_text_field.dart';
import 'package:car_app/features/auth/screens/home_screen.dart';
import 'package:car_app/features/auth/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _prefs = SharedPrefs();

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
               ),
              Text('Sign In',
              style: AppTextstyles.regular.setSize(48),),
               SizedBox(
                height: 100,
               ),
              AuthTextField(
                controller: _loginController, 
                title: 'EMAIL OR PHONE', 
                hint: 'Loremipsum@gmail.com'),
               SizedBox(
                height: 20,
               ),
              AuthTextField(
                controller: _passwordController, 
                title: 'PASSWORD', 
                hint: '******',
                isPasswordField: true),
              SizedBox(
                height: 20,
               ),
              Text('Forgot password?'),
              SizedBox(
                height: 30,
               ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  onTap: ()async{
                    final loqin = await _prefs.read(key: StorageKey.login);
                    final password = await _prefs.read(key: StorageKey.password);
                    if (loqin == _loginController.text  && password == _passwordController.text){
                      await Fluttertoast.showToast(
                       msg: "Success",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.CENTER,
                       timeInSecForIosWeb: 1,
                       // ignore: deprecated_member_use
                       backgroundColor: const Color.fromARGB(255, 26, 255, 0).withOpacity(0.4),
                       textColor: Colors.white,
                       fontSize: 16.0
                      );
                        context.push(HomeScreen());
                    } else {
                     await Fluttertoast.showToast(
                       msg: "Login or password error",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.CENTER,
                       timeInSecForIosWeb: 1,
                       // ignore: deprecated_member_use
                       backgroundColor: Colors.black.withOpacity(0.4),
                       textColor: Colors.white,
                       fontSize: 16.0
                      );
                    }
                  },
                   child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(8)
                    ),
                     child: Center(
                       child: Text('Log In',
                       style: AppTextstyles.semiBold.setSize(20).copyWith(color: Colors.white),),
                     ),
                   ),),
              ),
              SizedBox(
                height: 20,
               ),
              Center(
                child: Text('OR',
                style: AppTextstyles.regular.setSize(16),
                ),),
              SizedBox(
                height: 20,
               ),
              AuthButton(),
               SizedBox(
                height: 20,
               ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text("Don’t have an account yet?"),
                    
                    InkWell(
                     onTap: () {
                     context.push(SignUpScreen());
                    },
                     child: Text(
                     "Sign Up",
                       style: TextStyle(color: Color(0xffFCC21B), 
                       fontWeight: FontWeight.bold),
                      ),
                     ),
                    ],
                 ),
            ],
          ),
        ),
      ),
    );
  }
}