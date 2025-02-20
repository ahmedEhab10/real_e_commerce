import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_e_commerce/Core/Utils/App_Colors.dart';
import 'package:real_e_commerce/Core/Utils/App_Text_Style.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Buttom.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_Text_Faild.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/custom_Password_faild.dart';
import 'package:real_e_commerce/Core/helper_function/buld_error_bar.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/termsandcondition.dart';
import 'package:real_e_commerce/Features/Auth/presention/cubits/SignUp_cubit/cubit/sign_up_cubit.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName_form_text_faild,
      emai_form_text_faild,
      password_form_text_faild;

  late bool termsandcondition = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 16),
              CustomTextFaild(
                onSaved: (value) {
                  userName_form_text_faild = value!;
                },
                hinttext: 'الاسم كامل',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFaild(
                onSaved: (value) {
                  emai_form_text_faild = value!;
                },
                hinttext: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              Password_faild(
                onSaved: (value) {
                  password_form_text_faild = value!;
                },
              ),
              const SizedBox(height: 16),

              Termsandcondition(
                onChange: (value) {
                  termsandcondition = value!;
                  setState(() {});
                },
              ),
              SizedBox(height: 32),

              CustomButtom(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    if (termsandcondition == true) {
                      context
                          .read<SignUpCubit>()
                          .createUserWithEmailAndPassword(
                            name: userName_form_text_faild,
                            email: emai_form_text_faild,
                            password: password_form_text_faild,
                          );
                    } else {
                      Error_bar(context, 'يرجى قبول الشروط والاحكام');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),

              const SizedBox(height: 32),

              i_have_an_acount(),
            ],
          ),
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
