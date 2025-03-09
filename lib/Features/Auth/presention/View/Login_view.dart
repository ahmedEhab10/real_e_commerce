import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:real_e_commerce/Core/Services/get_it_Service.dart';
import 'package:real_e_commerce/Core/Utils/Widgets/Custom_App_Bar.dart';
import 'package:real_e_commerce/Core/helper_function/buld_error_bar.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';
import 'package:real_e_commerce/Features/Auth/presention/View/Widgets/Login_body.dart';
import 'package:real_e_commerce/Features/Auth/presention/cubits/login_cubit/cubit/log_in_cubit.dart';
import 'package:real_e_commerce/Features/Home/Presetation/view/Main_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context: context, title: 'تسجيل الدخول'),
      body: BlocProvider(
        create: (context) => LogInCubit(getIt<AuthRepo>()),
        child: Login_body_bloc_consumer(),
      ),
    );
  }
}

class Login_body_bloc_consumer extends StatelessWidget {
  const Login_body_bloc_consumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSuccess) {
          Navigator.pushNamed(context, MainView.routeName);
          Error_bar(context, 'Welcoem Hobaa');
        }
        if (state is LogInFailure) {
          Error_bar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LogInLoading ? true : false,
          child: LoginBody(),
        );
      },
    );
  }
}
