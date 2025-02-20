import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/App_images.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Buttom.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Text_Faild.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/custom_Divider.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/custom_Password_faild.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/Custom_socialMedia_Button.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/dont_have_account_widget.dart';
import 'package:real_e_commerce/Features/Auth/presention/cubits/login_cubit/cubit/log_in_cubit.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
late String user_email_from_Textfaild, user_password_from_Textfaild;

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFaild(
                onSaved: (value) {
                  user_email_from_Textfaild = value!;
                },
                hinttext: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),

              Password_faild(
                onSaved: (value) {
                  user_password_from_Textfaild = value!;
                },
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

              CustomButtom(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<LogInCubit>().signInWithEmailAndPassword(
                      user_email_from_Textfaild,
                      user_password_from_Textfaild,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل دخول',
              ),

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
      ),
    );
  }
}
