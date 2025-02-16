import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_App_Bar.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/Login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context: context, title: 'تسجيل الدخول'),
      body: LoginBody(),
    );
  }
}
