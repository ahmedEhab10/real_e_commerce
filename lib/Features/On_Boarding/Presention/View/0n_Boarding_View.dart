import 'package:flutter/material.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/Widgets/On_Boarding_body.dart';

class onBoardingView extends StatelessWidget {
  const onBoardingView({super.key});
  static const routename = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingBody());
  }
}
