import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Features/On_Boarding/Presention/View/0n_Boarding_View.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SvgPicture.asset(Assets.assetsSvgFreepikPlantInject63)],
          ),

          SvgPicture.asset(Assets.assetsSvgAppLogo),
          SvgPicture.asset(Assets.assetsSvgSplashViewBottom),
        ],
      ),
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, onBoardingView.routename);
    });
  }
}
