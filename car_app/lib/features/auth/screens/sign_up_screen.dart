import 'package:car_app/core/extencions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>(); // Form key for validation
    bool isPasswordVisible = false;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Sign Up',
                  style: AppTextstyles.regular.setSize(48),
                ),
                const SizedBox(height: 40),
                Text('FULL NAME', style: AppTextstyles.regular.setSize(14)),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Lorem Ipsum'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Text('EMAIL', style: AppTextstyles.regular.setSize(14)),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Loremipsum@gmail.com'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a right email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25),
                Text('PASSWORD', style: AppTextstyles.regular.setSize(14)),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ignore: avoid_print
                      print('');
                    } else {
                      // ignore: avoid_print
                      print('Error');
                    }
                  },
                  child: Container(
                    width: 350,
                    height: 52,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 43),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.transparent, width: 2),
                      color: const Color(0xff2B4C59),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
                          style: AppTextstyles.semiBold.setSize(20).copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'OR',
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 350,
                    height: 52,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 43),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppAssets.google, width: 30, height: 30),
                        const Text('Continue With Google'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 350,
                    height: 52,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 43),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppAssets.facebook, width: 25, height: 25),
                        const Text('Continue With Facebook'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t Have an account yet?',
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),),);
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 10, color: Color(0xffFCC21B)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
