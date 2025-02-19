import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Buttom.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Text_Faild.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/termsandcondition.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CustomTextFaild(
              hinttext: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            const CustomTextFaild(
              hinttext: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFaild(
              hinttext: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              icon: Icon(Icons.remove_red_eye, color: Color(0XFF949D9E)),
            ),
            const SizedBox(height: 16),

            Termsandcondition(),
            SizedBox(height: 32),

            CustomButtom(onPressed: () {}, text: 'إنشاء حساب جديد'),

            const SizedBox(height: 32),

            i_have_an_acount(),
          ],
        ),
      ),
    );
  }
}

class i_have_an_acount extends StatelessWidget {
  const i_have_an_acount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: ' لديك حساب بالفعل؟',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()..onTap = () => Navigator.pop(context),
            text: ' تسجيل دخول',
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
