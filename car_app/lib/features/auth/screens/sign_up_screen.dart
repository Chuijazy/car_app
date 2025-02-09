import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/int_extensions.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/theme/app_colors.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:car_app/features/auth/home/widgets/auth_button.dart';
import 'package:car_app/features/auth/home/widgets/auth_text_field.dart';
import 'package:car_app/features/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final _prefs = SharedPrefs();

  @override
  void dispose() {
    _nameController.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Поле не должно быть пустым';
    }
    return null;
  }

  String? _validateEmailOrPhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Поле не должно быть пустым';
    }

    final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+");
    if (!emailRegex.hasMatch(value)) {
      return 'Введите корректный e-mail';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Поле не должно быть пустым';
    }
    if (value.length < 6) {
      return 'Пароль должен содержать не менее 6 символов';
    }
    return null;
  }

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      _prefs.save(key: StorageKey.login, value: _loginController.text);
      _prefs.save(key: StorageKey.password, value: _passwordController.text);
      context.push(SignInScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 13),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  'Sign Up',
                  style: AppTextstyles.regular.setSize(48),
                ),
                SizedBox(height: 100),
                AuthTextField(
                  controller: _nameController,
                  title: 'FULL NAME',
                  hint: 'Lorem Ipsum',
                  validator: _validateName,
                ),
                20.verticalSpace,
                AuthTextField(
                  controller: _loginController,
                  title: 'EMAIL OR PHONE',
                  hint: 'Loremipsum@gmail.com',
                  validator: _validateEmailOrPhone,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  controller: _passwordController,
                  title: 'PASSWORD',
                  hint: '******',
                  isPasswordField: true,
                  validator: _validatePassword,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: _signUp,
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: AppTextstyles.semiBold.setSize(20).copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'OR',
                    style: AppTextstyles.regular.setSize(16),
                  ),
                ),
                SizedBox(height: 20),
                AuthButton(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Have an account Already?"),
                    InkWell(
                      onTap: () {
                        context.push(SignInScreen());
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xffFCC21B),
                          fontWeight: FontWeight.bold,
                        ),
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
