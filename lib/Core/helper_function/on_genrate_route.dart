import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Login_view.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/SignUp_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/home_view.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/0n_Boarding_View.dart';
import 'package:real_e_commerce/Features/Splash/presention/view/Spalsh_View.dart';

Route<dynamic>? OnGenrateRoutes(RouteSettings setting) {
  switch (setting.name) {
    case SpalshView.route_name:
      return MaterialPageRoute(builder: (context) => const SpalshView());
    case onBoardingView.routename:
      return MaterialPageRoute(builder: (context) => const onBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      MaterialPageRoute(builder: (context) => const Scaffold());
  }
  return null;
}
