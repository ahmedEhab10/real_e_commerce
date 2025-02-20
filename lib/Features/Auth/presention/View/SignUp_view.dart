import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:real_e_commerce/Core/Services/get_it_Service.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_App_Bar.dart';
import 'package:real_e_commerce/Core/helper_function/buld_error_bar.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/SignUp_body.dart';
import 'package:real_e_commerce/Features/Auth/presention/cubits/SignUp_cubit/cubit/sign_up_cubit.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'SignupView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context: context, title: 'انشاء حساب'),
      body: BlocProvider(
        create:
            (context) => SignUpCubit(
              getIt<AuthRepo>(),
            ), // هنا بقوله هاتلي نسخه من الكلاس الي اسمه AuthRepo الي انا عملتها في ال get_it_Service
        child: SignUp_view_body_bloc_consumer(),
      ),
    );
  }
}

class SignUp_view_body_bloc_consumer extends StatelessWidget {
  const SignUp_view_body_bloc_consumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is signUpfail) {
          Error_bar(context, state.Massage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoding ? true : false,
          child: SignupBody(),
        );
      },
    );
  }
}
