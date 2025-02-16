import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:real_e_commerce/Constanat.dart';
import 'package:real_e_commerce/Core/Services/shared_preferences_Singlton.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Buttom.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Login_view.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/Widgets/On_Boarding_pageview.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
        print(currentIndex);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageview(controller: pageController)),
        SizedBox(height: 29),
        DotsIndicator(
          position: currentIndex.toDouble(),
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: const Color.fromARGB(143, 27, 94, 55),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          visible: currentIndex == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButtom(
              onPressed: () {
                SharedPreferencesSinglton.setBool(onBoardingSeenKey, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'ابدأ الان',
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
