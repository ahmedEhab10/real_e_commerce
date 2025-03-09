import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Constanat.dart';
import 'package:real_e_commerce/Core/Services/FireBase_Auth_Service.dart';
import 'package:real_e_commerce/Core/Services/shared_preferences_Singlton.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Login_view.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Main_view.dart';
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
      if (SharedPreferencesSinglton.getBool(onBoardingSeenKey) == true) {
        // ignore: use_build_context_synchronously
        var islogin = FirebaseAuthService().isSignedIn();
        if (islogin) {
          Navigator.pushReplacementNamed(context, MainView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      } else {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, onBoardingView.routename);
      }
    });
  }
}
