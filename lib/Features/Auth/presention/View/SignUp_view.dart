import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_App_Bar.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/SignUp_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'SignupView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context: context, title: 'انشاء حساب'),
      body: SignupBody(),
    );
  }
}
