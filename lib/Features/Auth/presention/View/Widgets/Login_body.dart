import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Buttom.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Text_Faild.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/custom_Divider.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/Custom_socialMedia_Button.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/dont_have_account_widget.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFaild(
              hinttext: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),

            CustomTextFaild(
              hinttext: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              icon: Icon(Icons.remove_red_eye, color: Color(0XFF949D9E)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightprimaryColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            CustomButtom(onPressed: () {}, text: 'تسجيل دخول'),

            const SizedBox(height: 32),

            const dont_have_account_widget(),
            const SizedBox(height: 32),
            CustomDivider(),
            SizedBox(height: 16),
            CustomSocialmediaButton(
              text: 'تسجيل بواسطة جوجل',
              image: Assets.assetsSvgSocialIcons,
            ),
            const SizedBox(height: 16),
            CustomSocialmediaButton(
              text: 'تسجيل بواسطة أبل',
              image: Assets.assetsSvgAppleIcons,
            ),
            const SizedBox(height: 16),
            CustomSocialmediaButton(
              text: 'تسجيل بواسطة فيسبوك',
              image: Assets.assetsSvgFacebookIcons,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
