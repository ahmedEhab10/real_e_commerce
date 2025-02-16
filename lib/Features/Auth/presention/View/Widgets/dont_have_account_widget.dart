import 'package:flutter/material.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';

class dont_have_account_widget extends StatelessWidget {
  const dont_have_account_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'ليس لديك حساب؟',
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
            text: 'انشاء حساب',
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
//TextStyles