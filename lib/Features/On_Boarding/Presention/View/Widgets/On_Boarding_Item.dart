import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_e_commerce/Constanat.dart';
import 'package:real_e_commerce/Core/Services/shared_preferences_Singlton.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Login_view.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.image,
    required this.backgroung,
    required this.subtitle,
    required this.title,
    required this.visable,
  });
  final String image, backgroung, subtitle;
  final Widget title;
  final bool visable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Visibility(
              visible: visable,
              child: GestureDetector(
                onTap: () {
                  SharedPreferencesSinglton.setBool(onBoardingSeenKey, true);

                  Navigator.of(
                    context,
                  ).pushReplacementNamed(LoginView.routeName);
                },
                child: Positioned(right: 20, top: 40, child: Text('تخطي')),
              ),
            ),
            SvgPicture.asset(
              width: MediaQuery.of(context).size.width,
              backgroung,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(148, 252, 192, 119),
                BlendMode.modulate,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              // left: 70,
              // top: MediaQuery.of(context).size.height * 0.23,
              child: SvgPicture.asset(image),
            ),
          ],
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            textAlign: TextAlign.center,
            subtitle,
            style: const TextStyle(
              color: Color(0xff4E5556),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
